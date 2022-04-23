package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.crypto.Digest;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/WOTSPlusParameters.class */
public final class WOTSPlusParameters {
    private final Digest digest;
    private final int digestSize;
    private final int len;
    private final int len1;
    private final int len2;
    private final XMSSOid oid;
    private final int winternitzParameter;

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlusParameters(Digest digest) {
        if (digest == null) {
            throw new NullPointerException("digest == null");
        }
        this.digest = digest;
        this.digestSize = XMSSUtil.getDigestSize(digest);
        this.winternitzParameter = 16;
        this.len1 = (int) Math.ceil((this.digestSize * 8) / XMSSUtil.log2(this.winternitzParameter));
        this.len2 = ((int) Math.floor(XMSSUtil.log2(this.len1 * (this.winternitzParameter - 1)) / XMSSUtil.log2(this.winternitzParameter))) + 1;
        this.len = this.len1 + this.len2;
        this.oid = WOTSPlusOid.lookup(digest.getAlgorithmName(), this.digestSize, this.winternitzParameter, this.len);
        if (this.oid == null) {
            throw new IllegalArgumentException("cannot find OID for digest algorithm: " + digest.getAlgorithmName());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Digest getDigest() {
        return this.digest;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getDigestSize() {
        return this.digestSize;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getLen() {
        return this.len;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getLen1() {
        return this.len1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getLen2() {
        return this.len2;
    }

    protected XMSSOid getOid() {
        return this.oid;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getWinternitzParameter() {
        return this.winternitzParameter;
    }
}
