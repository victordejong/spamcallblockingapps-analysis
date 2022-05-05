package org.spongycastle.crypto.engines;

import com.privacystar.core.service.analytics.p009fo.FOAnalyticsConstants;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/HC256Engine.class */
public class HC256Engine implements StreamCipher {
    private boolean initialised;

    /* renamed from: iv */
    private byte[] f1245iv;
    private byte[] key;

    /* renamed from: p */
    private int[] f1246p = new int[1024];

    /* renamed from: q */
    private int[] f1247q = new int[1024];
    private int cnt = 0;
    private byte[] buf = new byte[4];
    private int idx = 0;

    private byte getByte() {
        if (this.idx == 0) {
            int step = step();
            this.buf[0] = (byte) (step & 255);
            int i = step >> 8;
            this.buf[1] = (byte) (i & 255);
            int i2 = i >> 8;
            this.buf[2] = (byte) (i2 & 255);
            this.buf[3] = (byte) ((i2 >> 8) & 255);
        }
        byte b = this.buf[this.idx];
        this.idx = 3 & (this.idx + 1);
        return b;
    }

    private void init() {
        if (this.key.length != 32 && this.key.length != 16) {
            throw new IllegalArgumentException("The key must be 128/256 bits long");
        } else if (this.f1245iv.length < 16) {
            throw new IllegalArgumentException("The IV must be at least 128 bits long");
        } else {
            if (this.key.length != 32) {
                byte[] bArr = new byte[32];
                System.arraycopy(this.key, 0, bArr, 0, this.key.length);
                System.arraycopy(this.key, 0, bArr, 16, this.key.length);
                this.key = bArr;
            }
            if (this.f1245iv.length < 32) {
                byte[] bArr2 = new byte[32];
                System.arraycopy(this.f1245iv, 0, bArr2, 0, this.f1245iv.length);
                System.arraycopy(this.f1245iv, 0, bArr2, this.f1245iv.length, bArr2.length - this.f1245iv.length);
                this.f1245iv = bArr2;
            }
            this.idx = 0;
            this.cnt = 0;
            int[] iArr = new int[2560];
            for (int i = 0; i < 32; i++) {
                int i2 = i >> 2;
                iArr[i2] = iArr[i2] | ((this.key[i] & 255) << ((i & 3) * 8));
            }
            for (int i3 = 0; i3 < 32; i3++) {
                int i4 = (i3 >> 2) + 8;
                iArr[i4] = iArr[i4] | ((this.f1245iv[i3] & 255) << ((i3 & 3) * 8));
            }
            for (int i5 = 16; i5 < 2560; i5++) {
                int i6 = iArr[i5 - 2];
                int i7 = iArr[i5 - 15];
                iArr[i5] = ((i6 >>> 10) ^ (rotateRight(i6, 17) ^ rotateRight(i6, 19))) + iArr[i5 - 7] + ((i7 >>> 3) ^ (rotateRight(i7, 7) ^ rotateRight(i7, 18))) + iArr[i5 - 16] + i5;
            }
            System.arraycopy(iArr, 512, this.f1246p, 0, 1024);
            System.arraycopy(iArr, 1536, this.f1247q, 0, 1024);
            for (int i8 = 0; i8 < 4096; i8++) {
                step();
            }
            this.cnt = 0;
        }
    }

    private static int rotateRight(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    private int step() {
        int i;
        int i2 = this.cnt & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE;
        if (this.cnt < 1024) {
            int i3 = this.f1246p[(i2 - 3) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE];
            int i4 = this.f1246p[(i2 - FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE];
            int[] iArr = this.f1246p;
            iArr[i2] = iArr[i2] + this.f1246p[(i2 - 10) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE] + (rotateRight(i4, 23) ^ rotateRight(i3, 10)) + this.f1247q[(i3 ^ i4) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE];
            int i5 = this.f1246p[(i2 - 12) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE];
            int i6 = this.f1247q[i5 & 255];
            int i7 = this.f1247q[((i5 >> 8) & 255) + 256];
            int i8 = this.f1247q[((i5 >> 16) & 255) + 512];
            i = this.f1246p[i2] ^ (((i6 + i7) + i8) + this.f1247q[((i5 >> 24) & 255) + 768]);
        } else {
            int i9 = this.f1247q[(i2 - 3) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE];
            int i10 = this.f1247q[(i2 - FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE];
            int[] iArr2 = this.f1247q;
            iArr2[i2] = iArr2[i2] + this.f1247q[(i2 - 10) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE] + (rotateRight(i10, 23) ^ rotateRight(i9, 10)) + this.f1246p[(i9 ^ i10) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE];
            int i11 = this.f1247q[(i2 - 12) & FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE];
            int i12 = this.f1246p[i11 & 255];
            int i13 = this.f1246p[((i11 >> 8) & 255) + 256];
            int i14 = this.f1246p[((i11 >> 16) & 255) + 512];
            i = this.f1247q[i2] ^ (((i12 + i13) + i14) + this.f1246p[((i11 >> 24) & 255) + 768]);
        }
        this.cnt = (this.cnt + 1) & 2047;
        return i;
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "HC-256";
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters cipherParameters2;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.f1245iv = parametersWithIV.getIV();
            cipherParameters2 = parametersWithIV.getParameters();
        } else {
            this.f1245iv = new byte[0];
            cipherParameters2 = cipherParameters;
        }
        if (cipherParameters2 instanceof KeyParameter) {
            this.key = ((KeyParameter) cipherParameters2).getKey();
            init();
            this.initialised = true;
            return;
        }
        throw new IllegalArgumentException("Invalid parameter passed to HC256 init - " + cipherParameters.getClass().getName());
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i3 + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ getByte());
            }
            return i2;
        }
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public void reset() {
        init();
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        return (byte) (b ^ getByte());
    }
}
