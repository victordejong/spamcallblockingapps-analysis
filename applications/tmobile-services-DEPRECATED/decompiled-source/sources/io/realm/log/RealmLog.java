package io.realm.log;

import android.util.Log;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/log/RealmLog.class */
public final class RealmLog {

    /* renamed from: a */
    private static String f20280a = "REALM_JAVA";

    /* renamed from: a */
    public static void m2535a(String str, Object... objArr) {
        m2534b(null, str, objArr);
    }

    /* renamed from: b */
    public static void m2534b(@Nullable Throwable th, @Nullable String str, Object... objArr) {
        m2530f(6, th, str, objArr);
    }

    /* renamed from: c */
    public static void m2533c(String str, Object... objArr) {
        m2532d(null, str, objArr);
    }

    /* renamed from: d */
    public static void m2532d(@Nullable Throwable th, @Nullable String str, Object... objArr) {
        m2530f(7, th, str, objArr);
    }

    /* renamed from: e */
    public static int m2531e() {
        return nativeGetLogLevel();
    }

    /* renamed from: f */
    private static void m2530f(int i, @Nullable Throwable th, @Nullable String str, @Nullable Object... objArr) {
        if (i >= m2531e()) {
            StringBuilder sb = new StringBuilder();
            String str2 = str;
            if (str != null) {
                str2 = str;
                if (objArr != null) {
                    str2 = str;
                    if (objArr.length > 0) {
                        str2 = String.format(Locale.US, str, objArr);
                    }
                }
            }
            if (th != null) {
                sb.append(Log.getStackTraceString(th));
            }
            if (str2 != null) {
                if (th != null) {
                    sb.append("\n");
                }
                sb.append(str2);
            }
            nativeLog(i, f20280a, th, sb.toString());
        }
    }

    /* renamed from: g */
    public static void m2529g(String str, Object... objArr) {
        m2528h(null, str, objArr);
    }

    /* renamed from: h */
    public static void m2528h(@Nullable Throwable th, @Nullable String str, Object... objArr) {
        m2530f(5, th, str, objArr);
    }

    private static native int nativeGetLogLevel();

    private static native void nativeLog(int i, String str, @Nullable Throwable th, @Nullable String str2);
}
