package org.spongycastle.crypto.commitments;

import java.security.SecureRandom;
import org.spongycastle.crypto.Commitment;
import org.spongycastle.crypto.Committer;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Arrays;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/commitments/GeneralHashCommitter.class */
public class GeneralHashCommitter implements Committer {
    private final int byteLength;
    private final Digest digest;
    private final SecureRandom random;

    public GeneralHashCommitter(ExtendedDigest extendedDigest, SecureRandom secureRandom) {
        this.digest = extendedDigest;
        this.byteLength = extendedDigest.getByteLength();
        this.random = secureRandom;
    }

    private byte[] calculateCommitment(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[this.digest.getDigestSize()];
        this.digest.update(bArr, 0, bArr.length);
        this.digest.update(bArr2, 0, bArr2.length);
        this.digest.update((byte) (bArr2.length >>> 8));
        this.digest.update((byte) bArr2.length);
        this.digest.doFinal(bArr3, 0);
        return bArr3;
    }

    @Override // org.spongycastle.crypto.Committer
    public Commitment commit(byte[] bArr) {
        if (bArr.length > this.byteLength / 2) {
            throw new DataLengthException("Message to be committed to too large for digest.");
        }
        byte[] bArr2 = new byte[this.byteLength - bArr.length];
        this.random.nextBytes(bArr2);
        return new Commitment(bArr2, calculateCommitment(bArr2, bArr));
    }

    @Override // org.spongycastle.crypto.Committer
    public boolean isRevealed(Commitment commitment, byte[] bArr) {
        if (bArr.length + commitment.getSecret().length != this.byteLength) {
            throw new DataLengthException("Message and witness secret lengths do not match.");
        }
        return Arrays.constantTimeAreEqual(commitment.getCommitment(), calculateCommitment(commitment.getSecret(), bArr));
    }
}
