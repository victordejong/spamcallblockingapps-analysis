package com.adbert.p009a.p012c;
/* renamed from: com.adbert.a.c.g */
/* loaded from: classes-dex2jar.jar:com/adbert/a/c/g.class */
public enum EnumC1387g {
    START("Starting ad request"),
    OK_DOWNLOAD("Ad finished loading"),
    ERROR_ID_NULL("Please type the appId and appKey"),
    ERROR_MODE("mode is not match"),
    ERROR_CONNECTION("Connection Error"),
    SUCCESS_CONNECTION("Connection Success"),
    ERROR_SERVICE("Service Unavailable"),
    ERROR_JSON_EMPTY("Could not request ad"),
    ERROR_TYPE_NULL("Parse data error : type error"),
    ERROR_JSON_PARSE("Parse data error : "),
    ERROR_BITMAP_NULL("fail to load image"),
    ERROR_DOWNLOAD_FILE("fail to load video"),
    ERROR_RESOURCE_FORMAT("fail to get url"),
    VIDEO_NOT_SUPPORT("video is not supported on this device"),
    READY("Interstitial Ad is ready"),
    NOT_READY("AdbertInterstitial AD is not ready"),
    ERROR_JSON_EMPTY_INTERS("Could not request AdbertInterstitial AD"),
    ClassCastException("Class Not Found : com.google.android.gms.ads.identifier.AdvertisingIdClient."),
    FAIL_GET_ID("Fail to get advertising id."),
    ERROR_ID_NULL_TRACE("Please type the id"),
    ERROR_BIT_TYPE_NULL("Please set the BitADType."),
    TIMEOUT("Request Timeout"),
    BOXTYPE_NOT_MATCH_VERSION("native_paper fail : minimum Android SDK version is 14."),
    UUID_EMPTY("Could not get Advertising ID,Ensure your Google Play Services is version 4.0+ and supports to Advertising ID.");
    

    /* renamed from: y */
    public String f622y;

    EnumC1387g(String str) {
        this.f622y = str;
    }

    /* renamed from: a */
    public String m37184a() {
        return this.f622y;
    }
}
