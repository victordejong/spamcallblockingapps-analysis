package okhttp3.internal.p092b;

import com.google.firebase.perf.FirebasePerformance;
/* renamed from: okhttp3.internal.b.f */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/f.class */
public final class C1992f {
    /* renamed from: a */
    public static boolean m2383a(String str) {
        return str.equals(FirebasePerformance.HttpMethod.POST) || str.equals(FirebasePerformance.HttpMethod.PATCH) || str.equals(FirebasePerformance.HttpMethod.PUT) || str.equals(FirebasePerformance.HttpMethod.DELETE) || str.equals("MOVE");
    }

    /* renamed from: b */
    public static boolean m2382b(String str) {
        return str.equals(FirebasePerformance.HttpMethod.POST) || str.equals(FirebasePerformance.HttpMethod.PUT) || str.equals(FirebasePerformance.HttpMethod.PATCH) || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    /* renamed from: c */
    public static boolean m2381c(String str) {
        return !str.equals(FirebasePerformance.HttpMethod.GET) && !str.equals(FirebasePerformance.HttpMethod.HEAD);
    }

    /* renamed from: d */
    public static boolean m2380d(String str) {
        return str.equals("PROPFIND");
    }

    /* renamed from: e */
    public static boolean m2379e(String str) {
        return !str.equals("PROPFIND");
    }
}
