package com.iab.omid.library.pubmatic.adsession;

import com.facebook.internal.AnalyticsEvents;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/AdSessionContextType.class */
public enum AdSessionContextType {
    HTML("html"),
    NATIVE(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE),
    JAVASCRIPT("javascript");
    
    private final String typeString;

    AdSessionContextType(String str) {
        this.typeString = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.typeString;
    }
}
