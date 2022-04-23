package com.facebook.appevents.p038s;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.s.j */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/j.class */
public class C2349j {

    /* renamed from: a */
    public String f2871a;

    /* renamed from: b */
    public boolean f2872b;

    public C2349j(String str, boolean z) {
        this.f2871a = str;
        this.f2872b = z;
    }

    /* renamed from: b */
    public static void m35074b() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C6135n.m23746e()).edit();
        edit.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
        edit.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
        edit.apply();
    }

    /* renamed from: c */
    public static C2349j m35073c() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C6135n.m23746e());
        if (!defaultSharedPreferences.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage")) {
            return null;
        }
        return new C2349j(defaultSharedPreferences.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), defaultSharedPreferences.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false));
    }

    /* renamed from: a */
    public void m35075a() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C6135n.m23746e()).edit();
        edit.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", this.f2871a);
        edit.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", this.f2872b);
        edit.apply();
    }

    public String toString() {
        String str = this.f2872b ? "Applink" : "Unclassified";
        String str2 = str;
        if (this.f2871a != null) {
            str2 = str + "(" + this.f2871a + ")";
        }
        return str2;
    }
}
