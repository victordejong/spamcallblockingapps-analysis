package com.tmobile.services.nameid.utility;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/BuildUtils.class */
public class BuildUtils {
    private BuildUtils() {
        throw new IllegalAccessError("This is a utility class, it should not be created.");
    }

    /* renamed from: a */
    public static boolean m5853a() {
        return !m5847g() || "unsignedRelease".toLowerCase().contains("mock") || "unsignedRelease".toLowerCase().contains("log") || "unsignedRelease".toLowerCase().contains("exportable") || "unsignedRelease".toLowerCase().contains("developerdebug");
    }

    /* renamed from: b */
    public static boolean m5852b() {
        return "unsignedRelease".toLowerCase().contains("developer");
    }

    /* renamed from: c */
    public static boolean m5851c() {
        return "magenta".toLowerCase().contains("magenta");
    }

    /* renamed from: d */
    public static boolean m5850d() {
        return "magenta".toLowerCase().contains("metro");
    }

    /* renamed from: e */
    public static boolean m5849e() {
        return "magenta".toLowerCase().contains("metroprivacystar");
    }

    /* renamed from: f */
    public static boolean m5848f() {
        return false;
    }

    /* renamed from: g */
    public static boolean m5847g() {
        return "unsignedRelease".toLowerCase().contains("release") || "unsignedRelease".toLowerCase().contains("exportable");
    }

    /* renamed from: h */
    public static boolean m5846h() {
        return m5847g() && "unsignedRelease".toLowerCase().contains("mockmata");
    }

    /* renamed from: i */
    public static boolean m5845i() {
        return m5847g() && "unsignedRelease".toLowerCase().contains("mockmatawsg");
    }

    /* renamed from: j */
    public static boolean m5844j() {
        int c = PreferenceUtils.m5394c("PREF_LAST_APP_VERSION_CODE", -1);
        LogUtil.m5643d("BuildUtils#isUpgrade", "saved version: " + c);
        return (c == 3336 || c == -1) ? false : true;
    }
}
