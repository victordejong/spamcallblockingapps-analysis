package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/VMPCEngine.class */
public class VMPCEngine implements StreamCipher {
    public byte[] workingIV;
    public byte[] workingKey;

    /* renamed from: n */
    public byte f7514n = (byte) 0;

    /* renamed from: P */
    public byte[] f7513P = null;

    /* renamed from: s */
    public byte f7515s = (byte) 0;

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "VMPC";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
            if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
                throw new IllegalArgumentException("VMPC init parameters must include a key");
            }
            byte[] iv = parametersWithIV.getIV();
            this.workingIV = iv;
            if (iv == null || iv.length < 1 || iv.length > 768) {
                throw new IllegalArgumentException("VMPC requires 1 to 768 bytes of IV");
            }
            byte[] key = keyParameter.getKey();
            this.workingKey = key;
            initKey(key, this.workingIV);
            return;
        }
        throw new IllegalArgumentException("VMPC init parameters must include an IV");
    }

    public void initKey(byte[] bArr, byte[] bArr2) {
        this.f7515s = (byte) 0;
        this.f7513P = new byte[256];
        for (int i = 0; i < 256; i++) {
            this.f7513P[i] = (byte) i;
        }
        for (int i2 = 0; i2 < 768; i2++) {
            byte[] bArr3 = this.f7513P;
            int i3 = i2 & 255;
            byte b = bArr3[(this.f7515s + bArr3[i3] + bArr[i2 % bArr.length]) & 255];
            this.f7515s = b;
            byte b2 = bArr3[i3];
            bArr3[i3] = bArr3[b & 255];
            bArr3[b & 255] = b2;
        }
        for (int i4 = 0; i4 < 768; i4++) {
            byte[] bArr4 = this.f7513P;
            int i5 = i4 & 255;
            byte b3 = bArr4[(this.f7515s + bArr4[i5] + bArr2[i4 % bArr2.length]) & 255];
            this.f7515s = b3;
            byte b4 = bArr4[i5];
            bArr4[i5] = bArr4[b3 & 255];
            bArr4[b3 & 255] = b4;
        }
        this.f7514n = (byte) 0;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i + i2 <= bArr.length) {
            if (i3 + i2 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            for (int i4 = 0; i4 < i2; i4++) {
                byte[] bArr3 = this.f7513P;
                byte b = this.f7515s;
                byte b2 = this.f7514n;
                byte b3 = bArr3[(b + bArr3[b2 & 255]) & 255];
                this.f7515s = b3;
                byte b4 = bArr3[(bArr3[bArr3[b3 & 255] & 255] + 1) & 255];
                byte b5 = bArr3[b2 & 255];
                bArr3[b2 & 255] = bArr3[b3 & 255];
                bArr3[b3 & 255] = b5;
                this.f7514n = (byte) ((b2 + 1) & 255);
                bArr2[i4 + i3] = (byte) (bArr[i4 + i] ^ b4);
            }
            return;
        }
        throw new DataLengthException("input buffer too short");
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        initKey(this.workingKey, this.workingIV);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        byte[] bArr = this.f7513P;
        byte b2 = this.f7515s;
        byte b3 = this.f7514n;
        byte b4 = bArr[(b2 + bArr[b3 & 255]) & 255];
        this.f7515s = b4;
        byte b5 = bArr[(bArr[bArr[b4 & 255] & 255] + 1) & 255];
        byte b6 = bArr[b3 & 255];
        bArr[b3 & 255] = bArr[b4 & 255];
        bArr[b4 & 255] = b6;
        this.f7514n = (byte) ((b3 + 1) & 255);
        return (byte) (b ^ b5);
    }
}
