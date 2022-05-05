package org.spongycastle.crypto.prng.drbg;

import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.prng.EntropySource;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/prng/drbg/HMacSP800DRBG.class */
public class HMacSP800DRBG implements SP80090DRBG {
    private static final int MAX_BITS_REQUEST = 262144;
    private static final long RESEED_MAX = 140737488355328L;

    /* renamed from: _K */
    private byte[] f1458_K;

    /* renamed from: _V */
    private byte[] f1459_V;
    private EntropySource _entropySource;
    private Mac _hMac;
    private long _reseedCounter;
    private int _securityStrength;

    public HMacSP800DRBG(Mac mac, int i, EntropySource entropySource, byte[] bArr, byte[] bArr2) {
        if (i > Utils.getMaxSecurityStrength(mac)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        } else if (entropySource.entropySize() < i) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        } else {
            this._securityStrength = i;
            this._entropySource = entropySource;
            this._hMac = mac;
            byte[] concatenate = Arrays.concatenate(getEntropy(), bArr2, bArr);
            this.f1458_K = new byte[mac.getMacSize()];
            this.f1459_V = new byte[this.f1458_K.length];
            Arrays.fill(this.f1459_V, (byte) 1);
            hmac_DRBG_Update(concatenate);
            this._reseedCounter = 1L;
        }
    }

    private byte[] getEntropy() {
        byte[] entropy = this._entropySource.getEntropy();
        if (entropy.length >= (this._securityStrength + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    private void hmac_DRBG_Update(byte[] bArr) {
        hmac_DRBG_Update_Func(bArr, (byte) 0);
        if (bArr != null) {
            hmac_DRBG_Update_Func(bArr, (byte) 1);
        }
    }

    private void hmac_DRBG_Update_Func(byte[] bArr, byte b) {
        this._hMac.init(new KeyParameter(this.f1458_K));
        this._hMac.update(this.f1459_V, 0, this.f1459_V.length);
        this._hMac.update(b);
        if (bArr != null) {
            this._hMac.update(bArr, 0, bArr.length);
        }
        this._hMac.doFinal(this.f1458_K, 0);
        this._hMac.init(new KeyParameter(this.f1458_K));
        this._hMac.update(this.f1459_V, 0, this.f1459_V.length);
        this._hMac.doFinal(this.f1459_V, 0);
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
                hmac_DRBG_Update(bArr3);
            }
            byte[] bArr4 = new byte[bArr.length];
            int length2 = bArr.length / this.f1459_V.length;
            this._hMac.init(new KeyParameter(this.f1458_K));
            for (int i = 0; i < length2; i++) {
                this._hMac.update(this.f1459_V, 0, this.f1459_V.length);
                this._hMac.doFinal(this.f1459_V, 0);
                System.arraycopy(this.f1459_V, 0, bArr4, this.f1459_V.length * i, this.f1459_V.length);
            }
            if (this.f1459_V.length * length2 < bArr4.length) {
                this._hMac.update(this.f1459_V, 0, this.f1459_V.length);
                this._hMac.doFinal(this.f1459_V, 0);
                System.arraycopy(this.f1459_V, 0, bArr4, this.f1459_V.length * length2, bArr4.length - (length2 * this.f1459_V.length));
            }
            hmac_DRBG_Update(bArr3);
            this._reseedCounter++;
            System.arraycopy(bArr4, 0, bArr, 0, bArr.length);
            return length;
        }
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this.f1459_V.length * 8;
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) {
        hmac_DRBG_Update(Arrays.concatenate(getEntropy(), bArr));
        this._reseedCounter = 1L;
    }
}
