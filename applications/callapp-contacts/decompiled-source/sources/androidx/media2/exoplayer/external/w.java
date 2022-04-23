package androidx.media2.exoplayer.external;

import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/w.class */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<String> f4253a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private static String f4254b = "goog.exo.core";

    private w() {
    }

    public static String a() {
        String str;
        synchronized (w.class) {
            try {
                str = f4254b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public static void a(String str) {
        synchronized (w.class) {
            try {
                if (f4253a.add(str)) {
                    String str2 = f4254b;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(str).length());
                    sb.append(str2);
                    sb.append(", ");
                    sb.append(str);
                    f4254b = sb.toString();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
