package okhttp3.internal.p193b;
/* renamed from: okhttp3.internal.b.f */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/f.class */
public final class C5442f {
    /* renamed from: a */
    public static boolean m701a(String str) {
        return str.equals("POST") || str.equals("PATCH") || str.equals("PUT") || str.equals("DELETE") || str.equals("MOVE");
    }

    /* renamed from: b */
    public static boolean m700b(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    /* renamed from: c */
    public static boolean m699c(String str) {
        return !str.equals("GET") && !str.equals("HEAD");
    }

    /* renamed from: d */
    public static boolean m698d(String str) {
        return str.equals("PROPFIND");
    }

    /* renamed from: e */
    public static boolean m697e(String str) {
        return !str.equals("PROPFIND");
    }
}
