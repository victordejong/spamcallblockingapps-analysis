package com.integralads.avid.library.mopub.utils;

import android.text.TextUtils;
import android.util.Log;
import com.mopub.mobileads.VastExtensionXmlManager;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/utils/AvidLogs.class */
public class AvidLogs {
    /* renamed from: d */
    public static void m5368d(String str) {
        if (!TextUtils.isEmpty(str)) {
            Log.d(VastExtensionXmlManager.AVID, str);
        }
    }

    /* renamed from: e */
    public static void m5367e(String str) {
        if (!TextUtils.isEmpty(str)) {
            Log.e(VastExtensionXmlManager.AVID, str);
        }
    }

    /* renamed from: e */
    public static void m5366e(String str, Exception exc) {
        if (!TextUtils.isEmpty(str) || exc != null) {
            Log.e(VastExtensionXmlManager.AVID, str, exc);
        }
    }

    /* renamed from: i */
    public static void m5365i(String str) {
        if (!TextUtils.isEmpty(str)) {
            Log.i(VastExtensionXmlManager.AVID, str);
        }
    }

    /* renamed from: w */
    public static void m5364w(String str) {
        if (!TextUtils.isEmpty(str)) {
            Log.w(VastExtensionXmlManager.AVID, str);
        }
    }
}
