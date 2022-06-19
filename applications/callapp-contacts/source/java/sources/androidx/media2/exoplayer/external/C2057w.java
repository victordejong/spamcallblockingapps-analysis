package androidx.media2.exoplayer.external;

import java.util.HashSet;
/* renamed from: androidx.media2.exoplayer.external.w */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/w.class */
public final class C2057w {

    /* renamed from: a */
    private static final HashSet<String> f8278a = new HashSet<>();

    /* renamed from: b */
    private static String f8279b = "goog.exo.core";

    private C2057w() {
    }

    /* renamed from: a */
    public static String m41419a() {
        String str;
        synchronized (C2057w.class) {
            try {
                str = f8279b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static void m41418a(String str) {
        synchronized (C2057w.class) {
            try {
                if (f8278a.add(str)) {
                    String str2 = f8279b;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(str).length());
                    sb.append(str2);
                    sb.append(", ");
                    sb.append(str);
                    f8279b = sb.toString();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
