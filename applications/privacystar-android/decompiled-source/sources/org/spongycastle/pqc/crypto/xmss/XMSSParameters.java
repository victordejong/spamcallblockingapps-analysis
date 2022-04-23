package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSParameters.class */
public final class XMSSParameters {
    private final int height;

    /* renamed from: k */
    private final int f1783k;
    private final XMSSOid oid;
    private final WOTSPlus wotsPlus;

    public XMSSParameters(int i, Digest digest) {
        if (i < 2) {
            throw new IllegalArgumentException("height must be >= 2");
        } else if (digest == null) {
            throw new NullPointerException("digest == null");
        } else {
            this.wotsPlus = new WOTSPlus(new WOTSPlusParameters(digest));
            this.height = i;
            this.f1783k = determineMinK();
            this.oid = DefaultXMSSOid.lookup(getDigest().getAlgorithmName(), getDigestSize(), getWinternitzParameter(), this.wotsPlus.getParams().getLen(), i);
        }
    }

    private int determineMinK() {
        for (int i = 2; i <= this.height; i++) {
            if ((this.height - i) % 2 == 0) {
                return i;
            }
        }
        throw new IllegalStateException("should never happen...");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Digest getDigest() {
        return this.wotsPlus.getParams().getDigest();
    }

    public int getDigestSize() {
        return this.wotsPlus.getParams().getDigestSize();
    }

    public int getHeight() {
        return this.height;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getK() {
        return this.f1783k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WOTSPlus getWOTSPlus() {
        return this.wotsPlus;
    }

    public int getWinternitzParameter() {
        return this.wotsPlus.getParams().getWinternitzParameter();
    }
}
