package com.facebook.p094a.p099d;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.C2095j;
/* renamed from: com.facebook.a.d.k */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/k.class */
class C1878k {

    /* renamed from: a */
    private String f5690a;

    /* renamed from: b */
    private boolean f5691b;

    private C1878k(String str, boolean z) {
        this.f5690a = str;
        this.f5691b = z;
    }

    /* renamed from: a */
    public static C1878k m16008a() {
        C1878k c1878k = null;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C2095j.m15360h());
        if (defaultSharedPreferences.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage")) {
            c1878k = new C1878k(defaultSharedPreferences.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), defaultSharedPreferences.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false));
        }
        return c1878k;
    }

    /* renamed from: b */
    public static void m16007b() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C2095j.m15360h()).edit();
        edit.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
        edit.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
        edit.apply();
    }

    /* renamed from: c */
    public void m16006c() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C2095j.m15360h()).edit();
        edit.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", this.f5690a);
        edit.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", this.f5691b);
        edit.apply();
    }

    public String toString() {
        String str = "Unclassified";
        if (this.f5691b) {
            str = "Applink";
        }
        String str2 = str;
        if (this.f5690a != null) {
            str2 = str + "(" + this.f5690a + ")";
        }
        return str2;
    }
}
