package com.google.android.exoplayer2.upstream.crypto;

import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/crypto/AesFlushingCipher.class */
public final class AesFlushingCipher {
    private final int blockSize;
    private final Cipher cipher;
    private final byte[] flushedBlock;
    private int pendingXorBytes;
    private final byte[] zerosBlock;

    public AesFlushingCipher(int i, byte[] bArr, long j, long j2) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            this.cipher = cipher;
            int blockSize = cipher.getBlockSize();
            this.blockSize = blockSize;
            this.zerosBlock = new byte[blockSize];
            this.flushedBlock = new byte[blockSize];
            long j3 = j2 / blockSize;
            int i2 = (int) (j2 % blockSize);
            cipher.init(i, new SecretKeySpec(bArr, Util.splitAtFirst(cipher.getAlgorithm(), "/")[0]), new IvParameterSpec(getInitializationVector(j, j3)));
            if (i2 == 0) {
                return;
            }
            updateInPlace(new byte[i2], 0, i2);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e) {
            throw new RuntimeException(e);
        }
    }

    private byte[] getInitializationVector(long j, long j2) {
        return ByteBuffer.allocate(16).putLong(j).putLong(j2).array();
    }

    private int nonFlushingUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        try {
            return this.cipher.update(bArr, i, i2, bArr2, i3);
        } catch (ShortBufferException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4;
        do {
            int i5 = this.pendingXorBytes;
            if (i5 <= 0) {
                int nonFlushingUpdate = nonFlushingUpdate(bArr, i, i2, bArr2, i3);
                if (i2 == nonFlushingUpdate) {
                    return;
                }
                int i6 = i2 - nonFlushingUpdate;
                int i7 = 0;
                Assertions.checkState(i6 < this.blockSize);
                int i8 = i3 + nonFlushingUpdate;
                int i9 = this.blockSize - i6;
                this.pendingXorBytes = i9;
                Assertions.checkState(nonFlushingUpdate(this.zerosBlock, 0, i9, this.flushedBlock, 0) == this.blockSize);
                while (i7 < i6) {
                    bArr2[i8] = this.flushedBlock[i7];
                    i7++;
                    i8++;
                }
                return;
            }
            bArr2[i3] = (byte) (bArr[i] ^ this.flushedBlock[this.blockSize - i5]);
            i3++;
            i++;
            this.pendingXorBytes = i5 - 1;
            i4 = i2 - 1;
            i2 = i4;
        } while (i4 != 0);
    }

    public void updateInPlace(byte[] bArr, int i, int i2) {
        update(bArr, i, i2, bArr, i);
    }
}
