package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/il2.class */
public final class il2 {

    /* renamed from: b */
    private final int f24329b;

    /* renamed from: c */
    private final int f24330c;

    /* renamed from: a */
    private final LinkedList<ql2<?, ?>> f24328a = new LinkedList<>();

    /* renamed from: d */
    private final gm2 f24331d = new gm2();

    public il2(int i, int i2) {
        this.f24329b = i;
        this.f24330c = i2;
    }

    /* renamed from: i */
    private final void m14348i() {
        while (!this.f24328a.isEmpty()) {
            if (C5667s.m18153k().mo16807a() - this.f24328a.getFirst().f28552d < this.f24330c) {
                return;
            }
            this.f24331d.m14896c();
            this.f24328a.remove();
        }
    }

    /* renamed from: a */
    public final boolean m14356a(ql2<?, ?> ql2Var) {
        this.f24331d.m14898a();
        m14348i();
        if (this.f24328a.size() == this.f24329b) {
            return false;
        }
        this.f24328a.add(ql2Var);
        return true;
    }

    /* renamed from: b */
    public final ql2<?, ?> m14355b() {
        this.f24331d.m14898a();
        m14348i();
        if (this.f24328a.isEmpty()) {
            return null;
        }
        ql2<?, ?> remove = this.f24328a.remove();
        if (remove != null) {
            this.f24331d.m14897b();
        }
        return remove;
    }

    /* renamed from: c */
    public final int m14354c() {
        m14348i();
        return this.f24328a.size();
    }

    /* renamed from: d */
    public final long m14353d() {
        return this.f24331d.m14895d();
    }

    /* renamed from: e */
    public final long m14352e() {
        return this.f24331d.m14894e();
    }

    /* renamed from: f */
    public final int m14351f() {
        return this.f24331d.m14893f();
    }

    /* renamed from: g */
    public final String m14350g() {
        return this.f24331d.m14891h();
    }

    /* renamed from: h */
    public final em2 m14349h() {
        return this.f24331d.m14892g();
    }
}
