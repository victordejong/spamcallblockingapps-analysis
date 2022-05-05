package org.spongycastle.pqc.crypto.xmss;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/WOTSPlusPrivateKeyParameters.class */
final class WOTSPlusPrivateKeyParameters {
    private final byte[][] privateKey;

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlusPrivateKeyParameters(WOTSPlusParameters wOTSPlusParameters, byte[][] bArr) {
        if (wOTSPlusParameters == null) {
            throw new NullPointerException("params == null");
        } else if (bArr == null) {
            throw new NullPointerException("privateKey == null");
        } else if (XMSSUtil.hasNullPointer(bArr)) {
            throw new NullPointerException("privateKey byte array == null");
        } else if (bArr.length != wOTSPlusParameters.getLen()) {
            throw new IllegalArgumentException("wrong privateKey format");
        } else {
            for (byte[] bArr2 : bArr) {
                if (bArr2.length != wOTSPlusParameters.getDigestSize()) {
                    throw new IllegalArgumentException("wrong privateKey format");
                }
            }
            this.privateKey = XMSSUtil.cloneArray(bArr);
        }
    }

    protected byte[][] toByteArray() {
        return XMSSUtil.cloneArray(this.privateKey);
    }
}
