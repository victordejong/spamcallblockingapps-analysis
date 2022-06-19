package net.pubnative.lite.sdk.config;

import android.net.Uri;
import net.pubnative.lite.sdk.HyBid;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/config/ConfigEndpoints.class */
public class ConfigEndpoints {
    private static final String AUTHORITY = "hbrc.pubnative.net";
    private static final String SCHEME = "https";

    public static String getConfigUrl() {
        return new Uri.Builder().scheme("https").authority(AUTHORITY).appendPath("config").appendPath("v1").appendPath("default").appendPath(HyBid.getAppToken()).build().toString();
    }
}
