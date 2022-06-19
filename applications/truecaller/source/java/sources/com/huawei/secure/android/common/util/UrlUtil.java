package com.huawei.secure.android.common.util;

import android.webkit.URLUtil;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/UrlUtil.class */
public class UrlUtil {

    /* renamed from: a */
    public static final String f8146a = "file:///android_res/";

    public static boolean isAboutUrl(String str) {
        return URLUtil.isAboutUrl(str);
    }

    public static boolean isAssetUrl(String str) {
        return URLUtil.isAssetUrl(str);
    }

    public static boolean isContentUrl(String str) {
        return URLUtil.isContentUrl(str);
    }

    public static boolean isDataUrl(String str) {
        return URLUtil.isDataUrl(str);
    }

    public static boolean isFileUrl(String str) {
        return URLUtil.isFileUrl(str);
    }

    public static boolean isHttpUrl(String str) {
        return URLUtil.isHttpUrl(str);
    }

    public static boolean isHttpsUrl(String str) {
        return URLUtil.isHttpsUrl(str);
    }

    public static boolean isJavaScriptUrl(String str) {
        return URLUtil.isJavaScriptUrl(str);
    }

    public static boolean isNetworkUrl(String str) {
        return URLUtil.isNetworkUrl(str);
    }

    public static boolean isResourceUrl(String str) {
        return str != null && str.startsWith(f8146a);
    }

    public static boolean isValidUrl(String str) {
        return URLUtil.isValidUrl(str);
    }
}
