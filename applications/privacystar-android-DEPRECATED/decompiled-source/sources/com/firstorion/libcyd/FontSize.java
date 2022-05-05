package com.firstorion.libcyd;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/FontSize.class */
enum FontSize {
    XSmall,
    Small,
    Medium,
    Large,
    XLarge;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FontSize valueOrDefault(String str) throws JSONException {
        if (str == null || str.isEmpty()) {
            return Medium;
        }
        if (str.equals("xsmall")) {
            return XSmall;
        }
        if (str.equals("small")) {
            return Small;
        }
        if (str.equals(FirebaseAnalytics.Param.MEDIUM)) {
            return Medium;
        }
        if (str.equals("large")) {
            return Large;
        }
        if (str.equals("xlarge")) {
            return XLarge;
        }
        throw new JSONException("Bad font size: " + str);
    }
}
