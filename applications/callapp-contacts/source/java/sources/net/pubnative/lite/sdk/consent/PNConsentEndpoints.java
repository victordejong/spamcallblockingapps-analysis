package net.pubnative.lite.sdk.consent;

import android.net.Uri;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/PNConsentEndpoints.class */
public class PNConsentEndpoints {
    private static final String API_VERSION = "v1";
    private static final String AUTHORITY = "backend.pubnative.net";
    private static final String CONSENT_PATH = "consent";
    private static final String PARAM_DEVICE_ID = "did";
    private static final String SCHEME = "https";

    public static String getCheckConsentUrl(String str) {
        return new Uri.Builder().scheme("https").authority(AUTHORITY).appendPath(CONSENT_PATH).appendPath(API_VERSION).appendQueryParameter(PARAM_DEVICE_ID, str).build().toString();
    }

    public static String getConsentUrl() {
        return new Uri.Builder().scheme("https").authority(AUTHORITY).appendPath(CONSENT_PATH).appendPath(API_VERSION).build().toString();
    }
}
