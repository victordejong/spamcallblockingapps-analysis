package com.google.firebase.perf.util;

import android.os.Bundle;
import com.google.firebase.perf.f.a;
/* renamed from: com.google.firebase.perf.util.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/b.class */
public final class C2447b {

    /* renamed from: b */
    private static final a f10705b = a.e();

    /* renamed from: a */
    private final Bundle f10706a;

    public C2447b() {
        this(new Bundle());
    }

    public C2447b(Bundle bundle) {
        this.f10706a = (Bundle) bundle.clone();
    }

    /* renamed from: d */
    private C2448c<Integer> m3577d(String str) {
        if (!m3580a(str)) {
            return C2448c.m3575a();
        }
        try {
            return C2448c.m3574b((Integer) this.f10706a.get(str));
        } catch (ClassCastException e) {
            f10705b.b("Metadata key %s contains type other than int: %s", new Object[]{str, e.getMessage()});
            return C2448c.m3575a();
        }
    }

    /* renamed from: a */
    public boolean m3580a(String str) {
        return str != null && this.f10706a.containsKey(str);
    }

    /* renamed from: b */
    public C2448c<Boolean> m3579b(String str) {
        if (!m3580a(str)) {
            return C2448c.m3575a();
        }
        try {
            return C2448c.m3574b((Boolean) this.f10706a.get(str));
        } catch (ClassCastException e) {
            f10705b.b("Metadata key %s contains type other than boolean: %s", new Object[]{str, e.getMessage()});
            return C2448c.m3575a();
        }
    }

    /* renamed from: c */
    public C2448c<Float> m3578c(String str) {
        if (!m3580a(str)) {
            return C2448c.m3575a();
        }
        try {
            return C2448c.m3574b((Float) this.f10706a.get(str));
        } catch (ClassCastException e) {
            f10705b.b("Metadata key %s contains type other than float: %s", new Object[]{str, e.getMessage()});
            return C2448c.m3575a();
        }
    }

    /* renamed from: e */
    public C2448c<Long> m3576e(String str) {
        C2448c<Integer> d = m3577d(str);
        return d.m3572d() ? C2448c.m3571e(Long.valueOf(d.m3573c().intValue())) : C2448c.m3575a();
    }
}
