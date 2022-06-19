package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C2387p;
import java.util.Set;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/avg.class */
public final class avg extends ate<C2387p.C2388a> {
    @GuardedBy("this")

    /* renamed from: a */
    private boolean f10414a;

    public avg(Set<auq<C2387p.C2388a>> set) {
        super(set);
    }

    /* renamed from: a */
    public final void m12412a() {
        m12775a(avj.f10416a);
    }

    /* renamed from: b */
    public final void m12411b() {
        m12775a(avi.f10415a);
    }

    /* renamed from: c */
    public final void m12410c() {
        synchronized (this) {
            m12775a(avl.f10418a);
            this.f10414a = true;
        }
    }

    /* renamed from: d */
    public final void m12409d() {
        synchronized (this) {
            if (!this.f10414a) {
                m12775a(avk.f10417a);
                this.f10414a = true;
            }
            m12775a(avn.f10420a);
        }
    }
}
