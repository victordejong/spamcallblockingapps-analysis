package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.base.POBAdDescriptor;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBBaseBidder.class */
public abstract class POBBaseBidder<T extends POBAdDescriptor> implements POBBidding<T> {

    /* renamed from: a */
    private String f372a;
    protected POBBidderListener<T> bidderListener;

    public String getIdentifier() {
        return this.f372a;
    }

    @Override // com.pubmatic.sdk.common.base.POBBidding
    public void setBidderListener(POBBidderListener<T> pOBBidderListener) {
        this.bidderListener = pOBBidderListener;
    }

    public void setIdentifier(String str) {
        this.f372a = str;
    }
}
