package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cio.class */
public final class cio {

    /* renamed from: b */
    private final int f13114b;

    /* renamed from: c */
    private final int f13115c;

    /* renamed from: a */
    private final LinkedList<ciy<?>> f13113a = new LinkedList<>();

    /* renamed from: d */
    private final cjq f13116d = new cjq();

    public cio(int i, int i2) {
        this.f13114b = i;
        this.f13115c = i2;
    }

    /* renamed from: h */
    private final void m11237h() {
        while (!this.f13113a.isEmpty()) {
            if (!(C2341q.m14737j().mo13862a() - this.f13113a.getFirst().f13161d >= ((long) this.f13115c))) {
                return;
            }
            this.f13116d.m11189c();
            this.f13113a.remove();
        }
    }

    /* renamed from: a */
    public final ciy<?> m11245a() {
        ciy<?> ciyVar;
        this.f13116d.m11191a();
        m11237h();
        if (this.f13113a.isEmpty()) {
            ciyVar = null;
        } else {
            ciy<?> remove = this.f13113a.remove();
            ciyVar = remove;
            if (remove != null) {
                this.f13116d.m11190b();
                ciyVar = remove;
            }
        }
        return ciyVar;
    }

    /* renamed from: a */
    public final boolean m11244a(ciy<?> ciyVar) {
        boolean z;
        this.f13116d.m11191a();
        m11237h();
        if (this.f13113a.size() == this.f13114b) {
            z = false;
        } else {
            this.f13113a.add(ciyVar);
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final int m11243b() {
        m11237h();
        return this.f13113a.size();
    }

    /* renamed from: c */
    public final long m11242c() {
        return this.f13116d.m11188d();
    }

    /* renamed from: d */
    public final long m11241d() {
        return this.f13116d.m11187e();
    }

    /* renamed from: e */
    public final int m11240e() {
        return this.f13116d.m11186f();
    }

    /* renamed from: f */
    public final String m11239f() {
        return this.f13116d.m11184h();
    }

    /* renamed from: g */
    public final cjp m11238g() {
        return this.f13116d.m11185g();
    }
}
