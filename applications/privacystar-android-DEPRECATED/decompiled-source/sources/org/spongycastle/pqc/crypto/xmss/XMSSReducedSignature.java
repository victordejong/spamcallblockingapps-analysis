package org.spongycastle.pqc.crypto.xmss;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSReducedSignature.class */
public class XMSSReducedSignature implements XMSSStoreableObjectInterface {
    private final List<XMSSNode> authPath;
    private final XMSSParameters params;
    private final WOTSPlusSignature wotsPlusSignature;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder.class */
    public static class Builder {
        private final XMSSParameters params;
        private WOTSPlusSignature wotsPlusSignature = null;
        private List<XMSSNode> authPath = null;
        private byte[] reducedSignature = null;

        public Builder(XMSSParameters xMSSParameters) {
            this.params = xMSSParameters;
        }

        public XMSSReducedSignature build() {
            return new XMSSReducedSignature(this);
        }

        public Builder withAuthPath(List<XMSSNode> list) {
            this.authPath = list;
            return this;
        }

        public Builder withReducedSignature(byte[] bArr) {
            this.reducedSignature = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withWOTSPlusSignature(WOTSPlusSignature wOTSPlusSignature) {
            this.wotsPlusSignature = wOTSPlusSignature;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v34, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public XMSSReducedSignature(org.spongycastle.pqc.crypto.xmss.XMSSReducedSignature.Builder r9) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.xmss.XMSSReducedSignature.<init>(org.spongycastle.pqc.crypto.xmss.XMSSReducedSignature$Builder):void");
    }

    public List<XMSSNode> getAuthPath() {
        return this.authPath;
    }

    public XMSSParameters getParams() {
        return this.params;
    }

    public WOTSPlusSignature getWOTSPlusSignature() {
        return this.wotsPlusSignature;
    }

    @Override // org.spongycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int i;
        int digestSize = this.params.getDigestSize();
        byte[] bArr = new byte[(this.params.getWOTSPlus().getParams().getLen() * digestSize) + (this.params.getHeight() * digestSize)];
        byte[][] byteArray = this.wotsPlusSignature.toByteArray();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 < byteArray.length) {
                XMSSUtil.copyBytesAtOffset(bArr, byteArray[i2], i3);
                i3 += digestSize;
                i2++;
            }
        }
        for (int i4 = 0; i4 < this.authPath.size(); i4++) {
            XMSSUtil.copyBytesAtOffset(bArr, this.authPath.get(i4).getValue(), i);
            i += digestSize;
        }
        return bArr;
    }
}
