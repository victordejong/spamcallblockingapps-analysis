package org.spongycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/VMPCKSA3Engine.class */
public class VMPCKSA3Engine extends VMPCEngine {
    @Override // org.spongycastle.crypto.engines.VMPCEngine, org.spongycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "VMPC-KSA3";
    }

    @Override // org.spongycastle.crypto.engines.VMPCEngine
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
        for (int i6 = 0; i6 < 768; i6++) {
            int i7 = i6 & 255;
            this.f1290s = this.f1288P[(this.f1290s + this.f1288P[i7] + bArr[i6 % bArr.length]) & 255];
            byte b3 = this.f1288P[i7];
            this.f1288P[i7] = this.f1288P[this.f1290s & 255];
            this.f1288P[this.f1290s & 255] = b3;
        }
        this.f1289n = (byte) 0;
    }
}
