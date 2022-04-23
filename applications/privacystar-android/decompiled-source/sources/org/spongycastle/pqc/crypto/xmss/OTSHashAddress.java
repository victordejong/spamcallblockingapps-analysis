package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.pqc.crypto.xmss.XMSSAddress;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/OTSHashAddress.class */
final class OTSHashAddress extends XMSSAddress {
    private static final int TYPE = 0;
    private final int chainAddress;
    private final int hashAddress;
    private final int otsAddress;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder.class */
    protected static class Builder extends XMSSAddress.Builder<Builder> {
        private int otsAddress = 0;
        private int chainAddress = 0;
        private int hashAddress = 0;

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.spongycastle.pqc.crypto.xmss.XMSSAddress.Builder
        public XMSSAddress build() {
            return new OTSHashAddress(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.spongycastle.pqc.crypto.xmss.XMSSAddress.Builder
        public Builder getThis() {
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder withChainAddress(int i) {
            this.chainAddress = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder withHashAddress(int i) {
            this.hashAddress = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder withOTSAddress(int i) {
            this.otsAddress = i;
            return this;
        }
    }

    private OTSHashAddress(Builder builder) {
        super(builder);
        this.otsAddress = builder.otsAddress;
        this.chainAddress = builder.chainAddress;
        this.hashAddress = builder.hashAddress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getChainAddress() {
        return this.chainAddress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getHashAddress() {
        return this.hashAddress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOTSAddress() {
        return this.otsAddress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.pqc.crypto.xmss.XMSSAddress
    public byte[] toByteArray() {
        byte[] byteArray = super.toByteArray();
        Pack.intToBigEndian(this.otsAddress, byteArray, 16);
        Pack.intToBigEndian(this.chainAddress, byteArray, 20);
        Pack.intToBigEndian(this.hashAddress, byteArray, 24);
        return byteArray;
    }
}
