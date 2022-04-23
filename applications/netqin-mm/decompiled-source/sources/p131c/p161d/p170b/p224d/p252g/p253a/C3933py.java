package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzdqk;
import com.google.android.gms.internal.ads.zzdra;
import java.util.LinkedList;
/* renamed from: c.d.b.d.g.a.py */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/py.class */
public final class C3933py {

    /* renamed from: b */
    public final int f14568b;

    /* renamed from: c */
    public final int f14569c;

    /* renamed from: a */
    public final LinkedList<zzdqk<?>> f14567a = new LinkedList<>();

    /* renamed from: d */
    public final C4232xy f14570d = new C4232xy();

    public C3933py(int i, int i2) {
        this.f14568b = i;
        this.f14569c = i2;
    }

    /* renamed from: a */
    public final long m26539a() {
        return this.f14570d.m26152a();
    }

    /* renamed from: a */
    public final boolean m26538a(zzdqk<?> zzdqkVar) {
        this.f14570d.m26148e();
        m26531h();
        if (this.f14567a.size() == this.f14568b) {
            return false;
        }
        this.f14567a.add(zzdqkVar);
        return true;
    }

    /* renamed from: b */
    public final int m26537b() {
        m26531h();
        return this.f14567a.size();
    }

    /* renamed from: c */
    public final zzdqk<?> m26536c() {
        this.f14570d.m26148e();
        m26531h();
        if (this.f14567a.isEmpty()) {
            return null;
        }
        zzdqk<?> remove = this.f14567a.remove();
        if (remove != null) {
            this.f14570d.m26147f();
        }
        return remove;
    }

    /* renamed from: d */
    public final long m26535d() {
        return this.f14570d.m26151b();
    }

    /* renamed from: e */
    public final int m26534e() {
        return this.f14570d.m26150c();
    }

    /* renamed from: f */
    public final String m26533f() {
        return this.f14570d.m26149d();
    }

    /* renamed from: g */
    public final zzdra m26532g() {
        return this.f14570d.m26145h();
    }

    /* renamed from: h */
    public final void m26531h() {
        while (!this.f14567a.isEmpty()) {
            if (zzp.m17962j().mo17091b() - this.f14567a.getFirst().f27748d >= ((long) this.f14569c)) {
                this.f14570d.m26146g();
                this.f14567a.remove();
            } else {
                return;
            }
        }
    }
}
