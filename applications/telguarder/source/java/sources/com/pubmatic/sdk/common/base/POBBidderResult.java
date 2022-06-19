package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.network.POBNetworkResult;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBBidderResult.class */
public class POBBidderResult<T extends POBAdDescriptor> {

    /* renamed from: a */
    private POBAdResponse<T> f373a;

    /* renamed from: b */
    private POBError f374b;

    /* renamed from: c */
    private POBNetworkResult f375c;

    public POBAdResponse<T> getAdResponse() {
        return this.f373a;
    }

    public POBError getError() {
        return this.f374b;
    }

    public POBNetworkResult getNetworkResult() {
        return this.f375c;
    }

    public void setAdResponse(POBAdResponse<T> pOBAdResponse) {
        this.f373a = pOBAdResponse;
    }

    public void setError(POBError pOBError) {
        this.f374b = pOBError;
    }

    public void setNetworkResult(POBNetworkResult pOBNetworkResult) {
        this.f375c = pOBNetworkResult;
    }

    public String toString() {
        return "POBBidderResult{adResponse=" + this.f373a + ", error=" + this.f374b + ", networkResult=" + this.f375c + '}';
    }
}
