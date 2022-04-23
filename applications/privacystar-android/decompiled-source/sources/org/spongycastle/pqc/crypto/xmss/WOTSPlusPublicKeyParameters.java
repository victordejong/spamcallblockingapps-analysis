package org.spongycastle.pqc.crypto.xmss;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters.class */
public final class WOTSPlusPublicKeyParameters {
    private final byte[][] publicKey;

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlusPublicKeyParameters(WOTSPlusParameters wOTSPlusParameters, byte[][] bArr) {
        if (wOTSPlusParameters == null) {
            throw new NullPointerException("params == null");
        } else if (bArr == null) {
            throw new NullPointerException("publicKey == null");
        } else if (XMSSUtil.hasNullPointer(bArr)) {
            throw new NullPointerException("publicKey byte array == null");
        } else if (bArr.length != wOTSPlusParameters.getLen()) {
            throw new IllegalArgumentException("wrong publicKey size");
        } else {
            for (byte[] bArr2 : bArr) {
                if (bArr2.length != wOTSPlusParameters.getDigestSize()) {
                    throw new IllegalArgumentException("wrong publicKey format");
                }
            }
            this.publicKey = XMSSUtil.cloneArray(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[][] toByteArray() {
        return XMSSUtil.cloneArray(this.publicKey);
    }
}
