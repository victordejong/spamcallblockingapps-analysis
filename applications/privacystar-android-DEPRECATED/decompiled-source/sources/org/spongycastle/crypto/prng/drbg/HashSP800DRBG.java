package org.spongycastle.crypto.prng.drbg;

import java.util.Hashtable;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.prng.EntropySource;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/prng/drbg/HashSP800DRBG.class */
public class HashSP800DRBG implements SP80090DRBG {
    private static final int MAX_BITS_REQUEST = 262144;
    private static final long RESEED_MAX = 140737488355328L;

    /* renamed from: _C */
    private byte[] f1460_C;

    /* renamed from: _V */
    private byte[] f1461_V;
    private Digest _digest;
    private EntropySource _entropySource;
    private long _reseedCounter;
    private int _securityStrength;
    private int _seedLength;
    private static final byte[] ONE = {1};
    private static final Hashtable seedlens = new Hashtable();

    static {
        seedlens.put("SHA-1", Integers.valueOf(440));
        seedlens.put(McElieceCCA2KeyGenParameterSpec.SHA224, Integers.valueOf(440));
        seedlens.put("SHA-256", Integers.valueOf(440));
        seedlens.put("SHA-512/256", Integers.valueOf(440));
        seedlens.put("SHA-512/224", Integers.valueOf(440));
        seedlens.put(McElieceCCA2KeyGenParameterSpec.SHA384, Integers.valueOf(888));
        seedlens.put(McElieceCCA2KeyGenParameterSpec.SHA512, Integers.valueOf(888));
    }

    public HashSP800DRBG(Digest digest, int i, EntropySource entropySource, byte[] bArr, byte[] bArr2) {
        if (i > Utils.getMaxSecurityStrength(digest)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        } else if (entropySource.entropySize() < i) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        } else {
            this._digest = digest;
            this._entropySource = entropySource;
            this._securityStrength = i;
            this._seedLength = ((Integer) seedlens.get(digest.getAlgorithmName())).intValue();
            this.f1461_V = Utils.hash_df(this._digest, Arrays.concatenate(getEntropy(), bArr2, bArr), this._seedLength);
            byte[] bArr3 = new byte[this.f1461_V.length + 1];
            System.arraycopy(this.f1461_V, 0, bArr3, 1, this.f1461_V.length);
            this.f1460_C = Utils.hash_df(this._digest, bArr3, this._seedLength);
            this._reseedCounter = 1L;
        }
    }

    private void addTo(byte[] bArr, byte[] bArr2) {
        int i = 0;
        for (int i2 = 1; i2 <= bArr2.length; i2++) {
            int i3 = (bArr[bArr.length - i2] & 255) + (bArr2[bArr2.length - i2] & 255) + i;
            i = i3 > 255 ? 1 : 0;
            bArr[bArr.length - i2] = (byte) i3;
        }
        for (int length = bArr2.length + 1; length <= bArr.length; length++) {
            int i4 = (bArr[bArr.length - length] & 255) + i;
            i = i4 > 255 ? 1 : 0;
            bArr[bArr.length - length] = (byte) i4;
        }
    }

    private void doHash(byte[] bArr, byte[] bArr2) {
        this._digest.update(bArr, 0, bArr.length);
        this._digest.doFinal(bArr2, 0);
    }

    private byte[] getEntropy() {
        byte[] entropy = this._entropySource.getEntropy();
        if (entropy.length >= (this._securityStrength + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    private byte[] hash(byte[] bArr) {
        byte[] bArr2 = new byte[this._digest.getDigestSize()];
        doHash(bArr, bArr2);
        return bArr2;
    }

    private byte[] hashgen(byte[] bArr, int i) {
        int i2 = i / 8;
        int digestSize = i2 / this._digest.getDigestSize();
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        byte[] bArr3 = new byte[i2];
        byte[] bArr4 = new byte[this._digest.getDigestSize()];
        for (int i3 = 0; i3 <= digestSize; i3++) {
            doHash(bArr2, bArr4);
            System.arraycopy(bArr4, 0, bArr3, bArr4.length * i3, bArr3.length - (bArr4.length * i3) > bArr4.length ? bArr4.length : bArr3.length - (bArr4.length * i3));
            addTo(bArr2, ONE);
        }
        return bArr3;
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public int generate(byte[] bArr, byte[] bArr2, boolean z) {
        int length = bArr.length * 8;
        if (length > 262144) {
            throw new IllegalArgumentException("Number of bits per request limited to 262144");
        } else if (this._reseedCounter > RESEED_MAX) {
            return -1;
        } else {
            byte[] bArr3 = bArr2;
            if (z) {
                reseed(bArr2);
                bArr3 = null;
            }
            if (bArr3 != null) {
                byte[] bArr4 = new byte[this.f1461_V.length + 1 + bArr3.length];
                bArr4[0] = (byte) 2;
                System.arraycopy(this.f1461_V, 0, bArr4, 1, this.f1461_V.length);
                System.arraycopy(bArr3, 0, bArr4, this.f1461_V.length + 1, bArr3.length);
                addTo(this.f1461_V, hash(bArr4));
            }
            byte[] hashgen = hashgen(this.f1461_V, length);
            byte[] bArr5 = new byte[this.f1461_V.length + 1];
            System.arraycopy(this.f1461_V, 0, bArr5, 1, this.f1461_V.length);
            bArr5[0] = (byte) 3;
            addTo(this.f1461_V, hash(bArr5));
            addTo(this.f1461_V, this.f1460_C);
            addTo(this.f1461_V, new byte[]{(byte) (this._reseedCounter >> 24), (byte) (this._reseedCounter >> 16), (byte) (this._reseedCounter >> 8), (byte) this._reseedCounter});
            this._reseedCounter++;
            System.arraycopy(hashgen, 0, bArr, 0, bArr.length);
            return length;
        }
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this._digest.getDigestSize() * 8;
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) {
        this.f1461_V = Utils.hash_df(this._digest, Arrays.concatenate(ONE, this.f1461_V, getEntropy(), bArr), this._seedLength);
        byte[] bArr2 = new byte[this.f1461_V.length + 1];
        bArr2[0] = (byte) 0;
        System.arraycopy(this.f1461_V, 0, bArr2, 1, this.f1461_V.length);
        this.f1460_C = Utils.hash_df(this._digest, bArr2, this._seedLength);
        this._reseedCounter = 1L;
    }
}
