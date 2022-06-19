package com.appnext.nativeads.designed_native_ads;

import com.appnext.core.AbstractC0529c;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest.class */
public class DesignNativeAdsRequest extends AbstractC0529c {

    /* renamed from: gl */
    private String f1987gl = "";
    private String mSpecificCategories = "";

    /* renamed from: gm */
    private String f1988gm = "";

    public String getCategories() {
        return this.f1987gl;
    }

    public String getPostBack() {
        return this.f1988gm;
    }

    public String getSpecificCategories() {
        return this.mSpecificCategories;
    }

    public DesignNativeAdsRequest setCategories(String str) {
        this.f1987gl = str;
        return this;
    }

    public DesignNativeAdsRequest setPostBack(String str) {
        this.f1988gm = str;
        return this;
    }

    public DesignNativeAdsRequest setSpecificCategories(String str) {
        this.mSpecificCategories = str;
        return this;
    }
}
