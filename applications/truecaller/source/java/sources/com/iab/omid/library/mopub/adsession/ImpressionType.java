package com.iab.omid.library.mopub.adsession;

import com.mopub.volley.BuildConfig;
import com.razorpay.AnalyticsConstants;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/ImpressionType.class */
public enum ImpressionType {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    UNSPECIFIED(BuildConfig.VERSION_NAME),
    LOADED(AnalyticsConstants.LOADED),
    BEGIN_TO_RENDER("beginToRender"),
    ONE_PIXEL("onePixel"),
    VIEWABLE("viewable"),
    AUDIBLE("audible"),
    OTHER("other");
    
    private final String impressionType;

    ImpressionType(String str) {
        this.impressionType = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.impressionType;
    }
}
