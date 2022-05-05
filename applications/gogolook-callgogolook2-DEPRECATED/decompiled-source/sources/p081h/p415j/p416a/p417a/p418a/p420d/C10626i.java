package p081h.p415j.p416a.p417a.p418a.p420d;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import p081h.p415j.p416a.p417a.p418a.p421e.C10627a;
import p081h.p415j.p416a.p417a.p418a.p421e.C10634e;
import p081h.p415j.p416a.p417a.p418a.p423g.C10645e;
import p081h.p415j.p416a.p417a.p418a.p424h.C10647a;
import p081h.p415j.p416a.p417a.p418a.p425i.AbstractC10649a;
import p081h.p415j.p416a.p417a.p418a.p425i.C10651b;
import p081h.p415j.p416a.p417a.p418a.p425i.C10652c;
/* renamed from: h.j.a.a.a.d.i */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/d/i.class */
public class C10626i extends AbstractC10619b {

    /* renamed from: a */
    public final C10621d f24192a;

    /* renamed from: b */
    public final C10620c f24193b;

    /* renamed from: d */
    public C10647a f24195d;

    /* renamed from: e */
    public AbstractC10649a f24196e;

    /* renamed from: i */
    public boolean f24200i;

    /* renamed from: c */
    public final List<C10647a> f24194c = new ArrayList();

    /* renamed from: f */
    public boolean f24197f = false;

    /* renamed from: g */
    public boolean f24198g = false;

    /* renamed from: h */
    public String f24199h = UUID.randomUUID().toString();

    public C10626i(C10620c cVar, C10621d dVar) {
        this.f24193b = cVar;
        this.f24192a = dVar;
        m11163e(null);
        this.f24196e = dVar.m11185a() == EnumC10622e.HTML ? new C10651b(dVar.m11179f()) : new C10652c(dVar.m11180e(), dVar.m11182c());
        this.f24196e.mo11058a();
        C10627a.m11148d().m11153a(this);
        this.f24196e.m11069a(cVar);
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p420d.AbstractC10619b
    /* renamed from: a */
    public void mo11172a() {
        if (!this.f24198g) {
            this.f24195d.clear();
            m11155l();
            this.f24198g = true;
            m11157j().m11062e();
            C10627a.m11148d().m11149c(this);
            m11157j().mo11056b();
            this.f24196e = null;
        }
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p420d.AbstractC10619b
    /* renamed from: a */
    public void mo11171a(View view) {
        if (!this.f24198g) {
            m11165d(view);
            if (m11167c(view) == null) {
                this.f24194c.add(new C10647a(view));
            }
        }
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p420d.AbstractC10619b
    /* renamed from: b */
    public void mo11170b() {
        if (!this.f24197f) {
            this.f24197f = true;
            C10627a.m11148d().m11151b(this);
            this.f24196e.m11072a(C10634e.m11113e().m11115c());
            this.f24196e.m11068a(this, this.f24192a);
        }
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p420d.AbstractC10619b
    /* renamed from: b */
    public void mo11169b(View view) {
        if (!this.f24198g) {
            C10645e.m11081a(view, "AdView is null");
            if (m11164e() != view) {
                m11163e(view);
                m11157j().m11059h();
                m11161f(view);
            }
        }
    }

    /* renamed from: c */
    public final C10647a m11167c(View view) {
        for (C10647a aVar : this.f24194c) {
            if (aVar.get() == view) {
                return aVar;
            }
        }
        return null;
    }

    /* renamed from: c */
    public List<C10647a> m11168c() {
        return this.f24194c;
    }

    /* renamed from: d */
    public void m11166d() {
        m11156k();
        m11157j().m11061f();
        this.f24200i = true;
    }

    /* renamed from: d */
    public final void m11165d(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    /* renamed from: e */
    public View m11164e() {
        return this.f24195d.get();
    }

    /* renamed from: e */
    public final void m11163e(View view) {
        this.f24195d = new C10647a(view);
    }

    /* renamed from: f */
    public final void m11161f(View view) {
        Collection<C10626i> a = C10627a.m11148d().m11154a();
        if (a != null && a.size() > 0) {
            for (C10626i iVar : a) {
                if (iVar != this && iVar.m11164e() == view) {
                    iVar.f24195d.clear();
                }
            }
        }
    }

    /* renamed from: f */
    public boolean m11162f() {
        return this.f24197f && !this.f24198g;
    }

    /* renamed from: g */
    public boolean m11160g() {
        return this.f24198g;
    }

    /* renamed from: h */
    public boolean m11159h() {
        return this.f24193b.m11188a();
    }

    /* renamed from: i */
    public String m11158i() {
        return this.f24199h;
    }

    /* renamed from: j */
    public AbstractC10649a m11157j() {
        return this.f24196e;
    }

    /* renamed from: k */
    public final void m11156k() {
        if (this.f24200i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    /* renamed from: l */
    public void m11155l() {
        if (!this.f24198g) {
            this.f24194c.clear();
        }
    }
}
