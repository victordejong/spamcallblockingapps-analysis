package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
import java.util.Map;
import p020b.p036e.C1489a;
/* renamed from: com.google.android.gms.measurement.internal.a2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/a2.class */
public final class C7647a2 extends C7660b3 {

    /* renamed from: d */
    private long f34972d;

    /* renamed from: c */
    private final Map<String, Integer> f34971c = new C1489a();

    /* renamed from: b */
    private final Map<String, Long> f34970b = new C1489a();

    public C7647a2(C7858s4 c7858s4) {
        super(c7858s4);
    }

    /* renamed from: j */
    public static /* synthetic */ void m6596j(C7647a2 c7647a2, String str, long j) {
        c7647a2.mo6113f();
        C6155o.m17022f(str);
        if (c7647a2.f34971c.isEmpty()) {
            c7647a2.f34972d = j;
        }
        Integer num = c7647a2.f34971c.get(str);
        if (num != null) {
            c7647a2.f34971c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (c7647a2.f34971c.size() >= 100) {
            c7647a2.f35460a.mo6047C().m6192p().m6216a("Too many ads visible");
        } else {
            c7647a2.f34971c.put(str, 1);
            c7647a2.f34970b.put(str, Long.valueOf(j));
        }
    }

    /* renamed from: k */
    public static /* synthetic */ void m6595k(C7647a2 c7647a2, String str, long j) {
        c7647a2.mo6113f();
        C6155o.m17022f(str);
        Integer num = c7647a2.f34971c.get(str);
        if (num == null) {
            c7647a2.f35460a.mo6047C().m6195m().m6215b("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        C7676c7 m6300q = c7647a2.f35460a.m6033Q().m6300q(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            c7647a2.f34971c.put(str, Integer.valueOf(intValue));
            return;
        }
        c7647a2.f34971c.remove(str);
        Long l = c7647a2.f34970b.get(str);
        if (l == null) {
            c7647a2.f35460a.mo6047C().m6195m().m6216a("First ad unit exposure time was never set");
        } else {
            long longValue = l.longValue();
            c7647a2.f34970b.remove(str);
            c7647a2.m6592n(str, j - longValue, m6300q);
        }
        if (!c7647a2.f34971c.isEmpty()) {
            return;
        }
        long j2 = c7647a2.f34972d;
        if (j2 == 0) {
            c7647a2.f35460a.mo6047C().m6195m().m6216a("First ad exposure time was never set");
            return;
        }
        c7647a2.m6593m(j - j2, m6300q);
        c7647a2.f34972d = 0L;
    }

    /* renamed from: m */
    private final void m6593m(long j, C7676c7 c7676c7) {
        if (c7676c7 == null) {
            this.f35460a.mo6047C().m6187u().m6216a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            this.f35460a.mo6047C().m6187u().m6215b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            C7772k7.m6295v(c7676c7, bundle, true);
            this.f35460a.m6044F().m5917X("am", "_xa", bundle);
        }
    }

    /* renamed from: n */
    private final void m6592n(String str, long j, C7676c7 c7676c7) {
        if (c7676c7 == null) {
            this.f35460a.mo6047C().m6187u().m6216a("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            this.f35460a.mo6047C().m6187u().m6215b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            C7772k7.m6295v(c7676c7, bundle, true);
            this.f35460a.m6044F().m5917X("am", "_xu", bundle);
        }
    }

    /* renamed from: o */
    public final void m6591o(long j) {
        for (String str : this.f34970b.keySet()) {
            this.f34970b.put(str, Long.valueOf(j));
        }
        if (!this.f34970b.isEmpty()) {
            this.f34972d = j;
        }
    }

    /* renamed from: g */
    public final void m6599g(String str, long j) {
        if (str == null || str.length() == 0) {
            this.f35460a.mo6047C().m6195m().m6216a("Ad unit id must be a non-empty string");
        } else {
            this.f35460a.mo6029b().m6109p(new RunnableC7644a(this, str, j));
        }
    }

    /* renamed from: h */
    public final void m6598h(String str, long j) {
        if (str == null || str.length() == 0) {
            this.f35460a.mo6047C().m6195m().m6216a("Ad unit id must be a non-empty string");
        } else {
            this.f35460a.mo6029b().m6109p(new RunnableC7919y(this, str, j));
        }
    }

    /* renamed from: i */
    public final void m6597i(long j) {
        C7676c7 m6300q = this.f35460a.m6033Q().m6300q(false);
        for (String str : this.f34970b.keySet()) {
            m6592n(str, j - this.f34970b.get(str).longValue(), m6300q);
        }
        if (!this.f34970b.isEmpty()) {
            m6593m(j - this.f34972d, m6300q);
        }
        m6591o(j);
    }
}
