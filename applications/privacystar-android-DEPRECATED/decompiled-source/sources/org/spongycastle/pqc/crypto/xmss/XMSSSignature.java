package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.pqc.crypto.xmss.XMSSReducedSignature;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSSignature.class */
public final class XMSSSignature extends XMSSReducedSignature implements XMSSStoreableObjectInterface {
    private final int index;
    private final byte[] random;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder.class */
    public static class Builder extends XMSSReducedSignature.Builder {
        private final XMSSParameters params;
        private int index = 0;
        private byte[] random = null;

        public Builder(XMSSParameters xMSSParameters) {
            super(xMSSParameters);
            this.params = xMSSParameters;
        }

        @Override // org.spongycastle.pqc.crypto.xmss.XMSSReducedSignature.Builder
        public XMSSSignature build() {
            return new XMSSSignature(this);
        }

        public Builder withIndex(int i) {
            this.index = i;
            return this;
        }

        public Builder withRandom(byte[] bArr) {
            this.random = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withSignature(byte[] bArr) {
            if (bArr == null) {
                throw new NullPointerException("signature == null");
            }
            int digestSize = this.params.getDigestSize();
            int len = this.params.getWOTSPlus().getParams().getLen();
            int height = this.params.getHeight();
            this.index = Pack.bigEndianToInt(bArr, 0);
            this.random = XMSSUtil.extractBytesAtOffset(bArr, 4, digestSize);
            withReducedSignature(XMSSUtil.extractBytesAtOffset(bArr, 4 + digestSize, (len * digestSize) + (height * digestSize)));
            return this;
        }
    }

    private XMSSSignature(Builder builder) {
        super(builder);
        this.index = builder.index;
        int digestSize = getParams().getDigestSize();
        byte[] bArr = builder.random;
        if (bArr == null) {
            this.random = new byte[digestSize];
        } else if (bArr.length != digestSize) {
            throw new IllegalArgumentException("size of random needs to be equal to size of digest");
        } else {
            this.random = bArr;
        }
    }

    public int getIndex() {
        return this.index;
    }

    public byte[] getRandom() {
        return XMSSUtil.cloneArray(this.random);
    }

    @Override // org.spongycastle.pqc.crypto.xmss.XMSSReducedSignature, org.spongycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int i;
        int digestSize = getParams().getDigestSize();
        byte[] bArr = new byte[digestSize + 4 + (getParams().getWOTSPlus().getParams().getLen() * digestSize) + (getParams().getHeight() * digestSize)];
        Pack.intToBigEndian(this.index, bArr, 0);
        XMSSUtil.copyBytesAtOffset(bArr, this.random, 4);
        byte[][] byteArray = getWOTSPlusSignature().toByteArray();
        int i2 = 4 + digestSize;
        int i3 = 0;
        while (true) {
            i = i2;
            if (i3 < byteArray.length) {
                XMSSUtil.copyBytesAtOffset(bArr, byteArray[i3], i2);
                i2 += digestSize;
                i3++;
            }
        }
        for (int i4 = 0; i4 < getAuthPath().size(); i4++) {
            XMSSUtil.copyBytesAtOffset(bArr, getAuthPath().get(i4).getValue(), i);
            i += digestSize;
        }
        return bArr;
    }
}
