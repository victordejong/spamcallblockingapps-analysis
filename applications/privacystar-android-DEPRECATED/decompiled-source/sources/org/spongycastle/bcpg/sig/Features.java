package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/Features.class */
public class Features extends SignatureSubpacket {
    public static final byte FEATURE_MODIFICATION_DETECTION = 1;

    public Features(boolean z, byte b) {
        super(30, z, false, featureToByteArray(b));
    }

    public Features(boolean z, boolean z2, byte[] bArr) {
        super(30, z, z2, bArr);
    }

    private static final byte[] featureToByteArray(byte b) {
        return new byte[]{b};
    }

    private void setSupportsFeature(byte b, boolean z) {
        if (b == 0) {
            throw new IllegalArgumentException("feature == 0");
        } else if (supportsFeature(b) != z) {
            if (z) {
                byte[] bArr = new byte[this.data.length + 1];
                System.arraycopy(this.data, 0, bArr, 0, this.data.length);
                bArr[this.data.length] = b;
                this.data = bArr;
                return;
            }
            for (int i = 0; i < this.data.length; i++) {
                if (this.data[i] == b) {
                    byte[] bArr2 = new byte[this.data.length - 1];
                    System.arraycopy(this.data, 0, bArr2, 0, i);
                    System.arraycopy(this.data, i + 1, bArr2, i, bArr2.length - i);
                    this.data = bArr2;
                    return;
                }
            }
        }
    }

    public boolean supportsFeature(byte b) {
        for (int i = 0; i < this.data.length; i++) {
            if (this.data[i] == b) {
                return true;
            }
        }
        return false;
    }

    public boolean supportsModificationDetection() {
        return supportsFeature((byte) 1);
    }
}
