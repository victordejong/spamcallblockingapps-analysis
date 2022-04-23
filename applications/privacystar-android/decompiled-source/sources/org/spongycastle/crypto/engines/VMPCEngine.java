package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/VMPCEngine.class */
public class VMPCEngine implements StreamCipher {
    protected byte[] workingIV;
    protected byte[] workingKey;

    /* renamed from: n */
    protected byte f1289n = (byte) 0;

    /* renamed from: P */
    protected byte[] f1288P = null;

    /* renamed from: s */
    protected byte f1290s = (byte) 0;

    @Override // org.spongycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "VMPC";
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("VMPC init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("VMPC init parameters must include a key");
        }
        KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
        this.workingIV = parametersWithIV.getIV();
        if (this.workingIV == null || this.workingIV.length < 1 || this.workingIV.length > 768) {
            throw new IllegalArgumentException("VMPC requires 1 to 768 bytes of IV");
        }
        this.workingKey = keyParameter.getKey();
        initKey(this.workingKey, this.workingIV);
    }

    protected void initKey(byte[] bArr, byte[] bArr2) {
        this.f1290s = (byte) 0;
        this.f1288P = new byte[256];
        for (int i = 0; i < 256; i++) {
            this.f1288P[i] = (byte) i;
        }
        for (int i2 = 0; i2 < 768; i2++) {
            int i3 = i2 & 255;
            this.f1290s = this.f1288P[(this.f1290s + this.f1288P[i3] + bArr[i2 % bArr.length]) & 255];
            byte b = this.f1288P[i3];
            this.f1288P[i3] = this.f1288P[this.f1290s & 255];
            this.f1288P[this.f1290s & 255] = b;
        }
        for (int i4 = 0; i4 < 768; i4++) {
            int i5 = i4 & 255;
            this.f1290s = this.f1288P[(this.f1290s + this.f1288P[i5] + bArr2[i4 % bArr2.length]) & 255];
            byte b2 = this.f1288P[i5];
            this.f1288P[i5] = this.f1288P[this.f1290s & 255];
            this.f1288P[this.f1290s & 255] = b2;
        }
        this.f1289n = (byte) 0;
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i3 + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                this.f1290s = this.f1288P[(this.f1290s + this.f1288P[this.f1289n & 255]) & 255];
                byte b = this.f1288P[(this.f1288P[this.f1288P[this.f1290s & 255] & 255] + 1) & 255];
                byte b2 = this.f1288P[this.f1289n & 255];
                this.f1288P[this.f1289n & 255] = this.f1288P[this.f1290s & 255];
                this.f1288P[this.f1290s & 255] = b2;
                this.f1289n = (byte) ((this.f1289n + 1) & 255);
                bArr2[i4 + i3] = (byte) (b ^ bArr[i4 + i]);
            }
            return i2;
        }
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public void reset() {
        initKey(this.workingKey, this.workingIV);
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        this.f1290s = this.f1288P[(this.f1290s + this.f1288P[this.f1289n & 255]) & 255];
        byte b2 = this.f1288P[(this.f1288P[this.f1288P[this.f1290s & 255] & 255] + 1) & 255];
        byte b3 = this.f1288P[this.f1289n & 255];
        this.f1288P[this.f1289n & 255] = this.f1288P[this.f1290s & 255];
        this.f1288P[this.f1290s & 255] = b3;
        this.f1289n = (byte) ((this.f1289n + 1) & 255);
        return (byte) (b ^ b2);
    }
}
