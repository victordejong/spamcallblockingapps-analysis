package com.moat.analytics.mobile.mpub;

import android.util.Log;
import android.view.View;
import com.mopub.mobileads.VastExtensionXmlManager;
/* renamed from: com.moat.analytics.mobile.mpub.p */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/p.class */
public class C8652p {
    /* renamed from: a */
    public static String m4847a(View view) {
        if (view == null) {
            return "null";
        }
        return view.getClass().getSimpleName() + "@" + view.hashCode();
    }

    /* renamed from: a */
    public static String m4846a(String str) {
        return VastExtensionXmlManager.MOAT + str;
    }

    /* renamed from: a */
    public static void m4848a(int i, String str, Object obj, String str2) {
        if (C8667w.m4813a().f33574b) {
            Log.println(i, m4846a(str), obj == null ? String.format("message = %s", str2) : String.format("id = %s, message = %s", Integer.valueOf(obj.hashCode()), str2));
        }
    }

    /* renamed from: a */
    public static void m4845a(String str, int i, String str2, Object obj, String str3) {
        m4848a(i, str2, obj, str3);
        m4843a(str, str3);
    }

    /* renamed from: a */
    public static void m4844a(String str, Object obj, String str2, Throwable th) {
        if (C8667w.m4813a().f33574b) {
            Log.e(m4846a(str), String.format("id = %s, message = %s", Integer.valueOf(obj.hashCode()), str2), th);
        }
    }

    /* renamed from: a */
    public static void m4843a(String str, String str2) {
        if (!C8667w.m4813a().f33574b && ((C8641k) MoatAnalytics.getInstance()).f33518a) {
            int i = 2;
            if (str.equals("[ERROR] ")) {
                i = 6;
            }
            Log.println(i, "MoatAnalytics", str + str2);
        }
    }

    /* renamed from: b */
    public static void m4842b(int i, String str, Object obj, String str2) {
        if (C8667w.m4813a().f33575c) {
            Log.println(i, m4846a(str), String.format("id = %s, message = %s", obj == null ? "null" : Integer.valueOf(obj.hashCode()), str2));
        }
    }
}
