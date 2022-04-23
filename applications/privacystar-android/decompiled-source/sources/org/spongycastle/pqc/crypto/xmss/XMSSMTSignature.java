package org.spongycastle.pqc.crypto.xmss;

import java.util.ArrayList;
import java.util.List;
import org.spongycastle.pqc.crypto.xmss.XMSSReducedSignature;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSMTSignature.class */
public final class XMSSMTSignature implements XMSSStoreableObjectInterface {
    private final long index;
    private final XMSSMTParameters params;
    private final byte[] random;
    private final List<XMSSReducedSignature> reducedSignatures;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder.class */
    public static class Builder {
        private final XMSSMTParameters params;
        private long index = 0;
        private byte[] random = null;
        private List<XMSSReducedSignature> reducedSignatures = null;
        private byte[] signature = null;

        public Builder(XMSSMTParameters xMSSMTParameters) {
            this.params = xMSSMTParameters;
        }

        public XMSSMTSignature build() {
            return new XMSSMTSignature(this);
        }

        public Builder withIndex(long j) {
            this.index = j;
            return this;
        }

        public Builder withRandom(byte[] bArr) {
            this.random = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withReducedSignatures(List<XMSSReducedSignature> list) {
            this.reducedSignatures = list;
            return this;
        }

        public Builder withSignature(byte[] bArr) {
            this.signature = bArr;
            return this;
        }
    }

    private XMSSMTSignature(Builder builder) {
        this.params = builder.params;
        if (this.params == null) {
            throw new NullPointerException("params == null");
        }
        int digestSize = this.params.getDigestSize();
        byte[] bArr = builder.signature;
        if (bArr != null) {
            int len = this.params.getWOTSPlus().getParams().getLen();
            int ceil = (int) Math.ceil(this.params.getHeight() / 8.0d);
            int height = ((this.params.getHeight() / this.params.getLayers()) + len) * digestSize;
            if (bArr.length != ceil + digestSize + (this.params.getLayers() * height)) {
                throw new IllegalArgumentException("signature has wrong size");
            }
            this.index = XMSSUtil.bytesToXBigEndian(bArr, 0, ceil);
            if (!XMSSUtil.isIndexValid(this.params.getHeight(), this.index)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            int i = ceil + 0;
            this.random = XMSSUtil.extractBytesAtOffset(bArr, i, digestSize);
            this.reducedSignatures = new ArrayList();
            for (int i2 = i + digestSize; i2 < bArr.length; i2 += height) {
                this.reducedSignatures.add(new XMSSReducedSignature.Builder(this.params.getXMSSParameters()).withReducedSignature(XMSSUtil.extractBytesAtOffset(bArr, i2, height)).build());
            }
            return;
        }
        this.index = builder.index;
        byte[] bArr2 = builder.random;
        if (bArr2 == null) {
            this.random = new byte[digestSize];
        } else if (bArr2.length != digestSize) {
            throw new IllegalArgumentException("size of random needs to be equal to size of digest");
        } else {
            this.random = bArr2;
        }
        List<XMSSReducedSignature> list = builder.reducedSignatures;
        if (list != null) {
            this.reducedSignatures = list;
        } else {
            this.reducedSignatures = new ArrayList();
        }
    }

    public long getIndex() {
        return this.index;
    }

    public byte[] getRandom() {
        return XMSSUtil.cloneArray(this.random);
    }

    public List<XMSSReducedSignature> getReducedSignatures() {
        return this.reducedSignatures;
    }

    @Override // org.spongycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int digestSize = this.params.getDigestSize();
        int len = this.params.getWOTSPlus().getParams().getLen();
        int ceil = (int) Math.ceil(this.params.getHeight() / 8.0d);
        int height = ((this.params.getHeight() / this.params.getLayers()) + len) * digestSize;
        byte[] bArr = new byte[ceil + digestSize + (this.params.getLayers() * height)];
        XMSSUtil.copyBytesAtOffset(bArr, XMSSUtil.toBytesBigEndian(this.index, ceil), 0);
        int i = ceil + 0;
        XMSSUtil.copyBytesAtOffset(bArr, this.random, i);
        int i2 = i + digestSize;
        for (XMSSReducedSignature xMSSReducedSignature : this.reducedSignatures) {
            XMSSUtil.copyBytesAtOffset(bArr, xMSSReducedSignature.toByteArray(), i2);
            i2 += height;
        }
        return bArr;
    }
}
