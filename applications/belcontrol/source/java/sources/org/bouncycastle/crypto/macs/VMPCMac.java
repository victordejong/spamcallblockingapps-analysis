package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/macs/VMPCMac.class */
public class VMPCMac implements Mac {

    /* renamed from: T */
    private byte[] f7528T;

    /* renamed from: g */
    private byte f7529g;
    private byte[] workingIV;
    private byte[] workingKey;

    /* renamed from: x1 */
    private byte f7532x1;

    /* renamed from: x2 */
    private byte f7533x2;

    /* renamed from: x3 */
    private byte f7534x3;

    /* renamed from: x4 */
    private byte f7535x4;

    /* renamed from: n */
    private byte f7530n = (byte) 0;

    /* renamed from: P */
    private byte[] f7527P = null;

    /* renamed from: s */
    private byte f7531s = (byte) 0;

    private void initKey(byte[] bArr, byte[] bArr2) {
        this.f7531s = (byte) 0;
        this.f7527P = new byte[256];
        for (int i = 0; i < 256; i++) {
            this.f7527P[i] = (byte) i;
        }
        for (int i2 = 0; i2 < 768; i2++) {
            byte[] bArr3 = this.f7527P;
            int i3 = i2 & 255;
            byte b = bArr3[(this.f7531s + bArr3[i3] + bArr[i2 % bArr.length]) & 255];
            this.f7531s = b;
            byte b2 = bArr3[i3];
            bArr3[i3] = bArr3[b & 255];
            bArr3[b & 255] = b2;
        }
        for (int i4 = 0; i4 < 768; i4++) {
            byte[] bArr4 = this.f7527P;
            int i5 = i4 & 255;
            byte b3 = bArr4[(this.f7531s + bArr4[i5] + bArr2[i4 % bArr2.length]) & 255];
            this.f7531s = b3;
            byte b4 = bArr4[i5];
            bArr4[i5] = bArr4[b3 & 255];
            bArr4[b3 & 255] = b4;
        }
        this.f7530n = (byte) 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        for (int i2 = 1; i2 < 25; i2++) {
            byte[] bArr2 = this.f7527P;
            byte b5 = this.f7531s;
            byte b6 = this.f7530n;
            byte b7 = bArr2[(b5 + bArr2[b6 & 255]) & 255];
            this.f7531s = b7;
            byte b8 = this.f7535x4;
            byte b9 = this.f7534x3;
            this.f7535x4 = bArr2[(b8 + b9 + i2) & 255];
            byte b10 = this.f7533x2;
            this.f7534x3 = bArr2[(b9 + b10 + i2) & 255];
            byte b11 = this.f7532x1;
            this.f7533x2 = bArr2[(b10 + b11 + i2) & 255];
            this.f7532x1 = bArr2[(b11 + b7 + i2) & 255];
            byte[] bArr3 = this.f7528T;
            byte b12 = this.f7529g;
            bArr3[b12 & 31] = (byte) (b4 ^ bArr3[b12 & 31]);
            bArr3[(b12 + 1) & 31] = (byte) (b3 ^ bArr3[(b12 + 1) & 31]);
            bArr3[(b12 + 2) & 31] = (byte) (b2 ^ bArr3[(b12 + 2) & 31]);
            bArr3[(b12 + 3) & 31] = (byte) (b ^ bArr3[(b12 + 3) & 31]);
            this.f7529g = (byte) ((b12 + 4) & 31);
            byte b13 = bArr2[b6 & 255];
            bArr2[b6 & 255] = bArr2[b7 & 255];
            bArr2[b7 & 255] = b13;
            this.f7530n = (byte) ((b6 + 1) & 255);
        }
        for (int i3 = 0; i3 < 768; i3++) {
            byte[] bArr4 = this.f7527P;
            int i4 = i3 & 255;
            byte b14 = bArr4[(this.f7531s + bArr4[i4] + this.f7528T[i3 & 31]) & 255];
            this.f7531s = b14;
            byte b15 = bArr4[i4];
            bArr4[i4] = bArr4[b14 & 255];
            bArr4[b14 & 255] = b15;
        }
        byte[] bArr5 = new byte[20];
        for (int i5 = 0; i5 < 20; i5++) {
            byte[] bArr6 = this.f7527P;
            int i6 = i5 & 255;
            byte b16 = bArr6[(this.f7531s + bArr6[i6]) & 255];
            this.f7531s = b16;
            bArr5[i5] = bArr6[(bArr6[bArr6[b16 & 255] & 255] + 1) & 255];
            byte b17 = bArr6[i6];
            bArr6[i6] = bArr6[b16 & 255];
            bArr6[b16 & 255] = b17;
        }
        System.arraycopy(bArr5, 0, bArr, i, 20);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "VMPC-MAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
            if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
                throw new IllegalArgumentException("VMPC-MAC Init parameters must include a key");
            }
            byte[] iv = parametersWithIV.getIV();
            this.workingIV = iv;
            if (iv == null || iv.length < 1 || iv.length > 768) {
                throw new IllegalArgumentException("VMPC-MAC requires 1 to 768 bytes of IV");
            }
            this.workingKey = keyParameter.getKey();
            reset();
            return;
        }
        throw new IllegalArgumentException("VMPC-MAC Init parameters must include an IV");
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        initKey(this.workingKey, this.workingIV);
        this.f7530n = (byte) 0;
        this.f7535x4 = (byte) 0;
        this.f7534x3 = (byte) 0;
        this.f7533x2 = (byte) 0;
        this.f7532x1 = (byte) 0;
        this.f7529g = (byte) 0;
        this.f7528T = new byte[32];
        for (int i = 0; i < 32; i++) {
            this.f7528T[i] = (byte) 0;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) {
        byte[] bArr = this.f7527P;
        byte b2 = this.f7531s;
        byte b3 = this.f7530n;
        byte b4 = bArr[(b2 + bArr[b3 & 255]) & 255];
        this.f7531s = b4;
        byte b5 = (byte) (b ^ bArr[(bArr[bArr[b4 & 255] & 255] + 1) & 255]);
        byte b6 = this.f7535x4;
        byte b7 = this.f7534x3;
        byte b8 = bArr[(b6 + b7) & 255];
        this.f7535x4 = b8;
        byte b9 = this.f7533x2;
        byte b10 = bArr[(b7 + b9) & 255];
        this.f7534x3 = b10;
        byte b11 = this.f7532x1;
        byte b12 = bArr[(b9 + b11) & 255];
        this.f7533x2 = b12;
        byte b13 = bArr[(b11 + b4 + b5) & 255];
        this.f7532x1 = b13;
        byte[] bArr2 = this.f7528T;
        byte b14 = this.f7529g;
        bArr2[b14 & 31] = (byte) (b13 ^ bArr2[b14 & 31]);
        bArr2[(b14 + 1) & 31] = (byte) (b12 ^ bArr2[(b14 + 1) & 31]);
        bArr2[(b14 + 2) & 31] = (byte) (b10 ^ bArr2[(b14 + 2) & 31]);
        bArr2[(b14 + 3) & 31] = (byte) (b8 ^ bArr2[(b14 + 3) & 31]);
        this.f7529g = (byte) ((b14 + 4) & 31);
        byte b15 = bArr[b3 & 255];
        bArr[b3 & 255] = bArr[b4 & 255];
        bArr[b4 & 255] = b15;
        this.f7530n = (byte) ((b3 + 1) & 255);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) {
        if (i + i2 <= bArr.length) {
            for (int i3 = 0; i3 < i2; i3++) {
                update(bArr[i3]);
            }
            return;
        }
        throw new DataLengthException("input buffer too short");
    }
}
