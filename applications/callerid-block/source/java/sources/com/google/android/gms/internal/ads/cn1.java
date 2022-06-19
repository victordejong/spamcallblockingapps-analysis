package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cn1.class */
final class cn1 {

    /* renamed from: b */
    private final int f6278b;

    /* renamed from: c */
    private final int f6279c;

    /* renamed from: a */
    private final LinkedList<ln1<?>> f6277a = new LinkedList<>();

    /* renamed from: d */
    private final bo1 f6280d = new bo1();

    public cn1(int i, int i2) {
        this.f6278b = i;
        this.f6279c = i2;
    }

    /* renamed from: i */
    private final void m7793i() {
        while (!this.f6277a.isEmpty()) {
            if (C1407r.m8913k().m8247a() - this.f6277a.getFirst().f7132d < this.f6279c) {
                return;
            }
            this.f6280d.m7938c();
            this.f6277a.remove();
        }
    }

    /* renamed from: a */
    public final boolean m7801a(ln1<?> ln1Var) {
        this.f6280d.m7940a();
        m7793i();
        if (this.f6277a.size() == this.f6278b) {
            return false;
        }
        this.f6277a.add(ln1Var);
        return true;
    }

    /* renamed from: b */
    public final ln1<?> m7800b() {
        this.f6280d.m7940a();
        m7793i();
        if (this.f6277a.isEmpty()) {
            return null;
        }
        ln1<?> remove = this.f6277a.remove();
        if (remove != null) {
            this.f6280d.m7939b();
        }
        return remove;
    }

    /* renamed from: c */
    public final int m7799c() {
        m7793i();
        return this.f6277a.size();
    }

    /* renamed from: d */
    public final long m7798d() {
        return this.f6280d.m7937d();
    }

    /* renamed from: e */
    public final long m7797e() {
        return this.f6280d.m7936e();
    }

    /* renamed from: f */
    public final int m7796f() {
        return this.f6280d.m7935f();
    }

    /* renamed from: g */
    public final String m7795g() {
        return this.f6280d.m7933h();
    }

    /* renamed from: h */
    public final ao1 m7794h() {
        return this.f6280d.m7934g();
    }
}
