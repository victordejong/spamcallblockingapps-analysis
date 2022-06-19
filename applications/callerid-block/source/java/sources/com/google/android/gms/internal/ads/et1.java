package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.tasks.AbstractC2397g;
import com.google.android.gms.tasks.C2401j;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/et1.class */
public final class et1 {

    /* renamed from: e */
    private static volatile zzca f6457e = zzca.b;

    /* renamed from: f */
    public static final /* synthetic */ int f6458f = 0;

    /* renamed from: a */
    private final Context f6459a;

    /* renamed from: b */
    private final Executor f6460b;

    /* renamed from: c */
    private final AbstractC2397g<dv1> f6461c;

    /* renamed from: d */
    private final boolean f6462d;

    et1(Context context, Executor executor, AbstractC2397g<dv1> abstractC2397g, boolean z) {
        this.f6459a = context;
        this.f6460b = executor;
        this.f6461c = abstractC2397g;
        this.f6462d = z;
    }

    /* renamed from: a */
    static void m7592a(zzca zzcaVar) {
        f6457e = zzcaVar;
    }

    /* renamed from: b */
    public static et1 m7591b(Context context, Executor executor, boolean z) {
        return new et1(context, executor, C2401j.m3762c(executor, new Callable(context) { // from class: com.google.android.gms.internal.ads.bt1

            /* renamed from: a */
            private final Context f6203a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6203a = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new dv1(this.f6203a, "GLAS", null);
            }
        }), z);
    }

    /* renamed from: h */
    private final AbstractC2397g<Boolean> m7585h(int i, long j, Exception exc, String str, Map<String, String> map, String str2) {
        if (!this.f6462d) {
            return this.f6461c.m3780g(this.f6460b, ct1.a);
        }
        n80 E = se0.E();
        E.q(this.f6459a.getPackageName());
        E.r(j);
        E.w(f6457e);
        if (exc != null) {
            E.s(vw1.m5175b(exc));
            E.t(exc.getClass().getName());
        }
        if (str2 != null) {
            E.u(str2);
        }
        if (str != null) {
            E.v(str);
        }
        return this.f6461c.m3780g(this.f6460b, new dt1(E, i));
    }

    /* renamed from: c */
    public final AbstractC2397g<Boolean> m7590c(int i, long j) {
        return m7585h(i, j, null, null, null, null);
    }

    /* renamed from: d */
    public final AbstractC2397g<Boolean> m7589d(int i, long j, Exception exc) {
        return m7585h(i, j, exc, null, null, null);
    }

    /* renamed from: e */
    public final AbstractC2397g<Boolean> m7588e(int i, long j, String str, Map<String, String> map) {
        return m7585h(i, j, null, str, null, null);
    }

    /* renamed from: f */
    public final AbstractC2397g<Boolean> m7587f(int i, String str) {
        return m7585h(i, 0L, null, null, null, str);
    }

    /* renamed from: g */
    public final AbstractC2397g<Boolean> m7586g(int i, long j, String str) {
        return m7585h(i, j, null, null, null, str);
    }
}
