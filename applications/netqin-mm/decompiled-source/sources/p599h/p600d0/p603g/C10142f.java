package p599h.p600d0.p603g;

import com.android.volley.toolbox.HttpClientStack;
/* renamed from: h.d0.g.f */
/* loaded from: classes2-dex2jar.jar:h/d0/g/f.class */
public final class C10142f {
    /* renamed from: a */
    public static boolean m1313a(String str) {
        return str.equals("POST") || str.equals(HttpClientStack.HttpPatch.METHOD_NAME) || str.equals("PUT") || str.equals("DELETE") || str.equals("MOVE");
    }

    /* renamed from: b */
    public static boolean m1312b(String str) {
        return !str.equals("GET") && !str.equals("HEAD");
    }

    /* renamed from: c */
    public static boolean m1311c(String str) {
        return !str.equals("PROPFIND");
    }

    /* renamed from: d */
    public static boolean m1310d(String str) {
        return str.equals("PROPFIND");
    }

    /* renamed from: e */
    public static boolean m1309e(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals(HttpClientStack.HttpPatch.METHOD_NAME) || str.equals("PROPPATCH") || str.equals("REPORT");
    }
}
