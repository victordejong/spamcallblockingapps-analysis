package androidx.media2.exoplayer.external.upstream.crypto;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/crypto/AesFlushingCipher.class */
public final class AesFlushingCipher {
    public final int blockSize;
    public final Cipher cipher;
    public final byte[] flushedBlock;
    public int pendingXorBytes;
    public final byte[] zerosBlock;

    public AesFlushingCipher(int i, byte[] bArr, long j, long j2) {
        try {
            this.cipher = Cipher.getInstance("AES/CTR/NoPadding");
            this.blockSize = this.cipher.getBlockSize();
            this.zerosBlock = new byte[this.blockSize];
            this.flushedBlock = new byte[this.blockSize];
            long j3 = j2 / this.blockSize;
            int i2 = (int) (j2 % this.blockSize);
            this.cipher.init(i, new SecretKeySpec(bArr, Util.splitAtFirst(this.cipher.getAlgorithm(), "/")[0]), new IvParameterSpec(getInitializationVector(j, j3)));
            if (i2 != 0) {
                updateInPlace(new byte[i2], 0, i2);
            }
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
            if (i5 > 0) {
                bArr2[i3] = (byte) (bArr[i] ^ this.flushedBlock[this.blockSize - i5]);
                i3++;
                i++;
                this.pendingXorBytes = i5 - 1;
                i4 = i2 - 1;
                i2 = i4;
            } else {
                int nonFlushingUpdate = nonFlushingUpdate(bArr, i, i2, bArr2, i3);
                if (i2 != nonFlushingUpdate) {
                    int i6 = i2 - nonFlushingUpdate;
                    int i7 = 0;
                    boolean z = true;
                    Assertions.checkState(i6 < this.blockSize);
                    int i8 = i3 + nonFlushingUpdate;
                    this.pendingXorBytes = this.blockSize - i6;
                    if (nonFlushingUpdate(this.zerosBlock, 0, this.pendingXorBytes, this.flushedBlock, 0) != this.blockSize) {
                        z = false;
                    }
                    Assertions.checkState(z);
                    while (i7 < i6) {
                        bArr2[i8] = this.flushedBlock[i7];
                        i7++;
                        i8++;
                    }
                    return;
                }
                return;
            }
        } while (i4 != 0);
    }

    public void updateInPlace(byte[] bArr, int i, int i2) {
        update(bArr, i, i2, bArr, i);
    }
}
