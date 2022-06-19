package p193e.p1577m.p1578a.p1596c;

import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24806y;
/* renamed from: e.m.a.c.z */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/z.class */
public final class C24865z implements AbstractC24791p {

    /* renamed from: a */
    public final C24806y f69743a;

    /* renamed from: b */
    public final AbstractC24866a f69744b;

    /* renamed from: c */
    public AbstractC24853u0 f69745c;

    /* renamed from: d */
    public AbstractC24791p f69746d;

    /* renamed from: e */
    public boolean f69747e = true;

    /* renamed from: f */
    public boolean f69748f;

    /* renamed from: e.m.a.c.z$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/z$a.class */
    public interface AbstractC24866a {
    }

    public C24865z(AbstractC24866a abstractC24866a, AbstractC24776f abstractC24776f) {
        this.f69744b = abstractC24866a;
        this.f69743a = new C24806y(abstractC24776f);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p
    public C24652o0 getPlaybackParameters() {
        AbstractC24791p abstractC24791p = this.f69746d;
        return abstractC24791p != null ? abstractC24791p.getPlaybackParameters() : this.f69743a.f69530e;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p
    /* renamed from: r */
    public long mo4348r() {
        return this.f69747e ? this.f69743a.mo4348r() : this.f69746d.mo4348r();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p
    /* renamed from: t */
    public void mo4347t(C24652o0 c24652o0) {
        AbstractC24791p abstractC24791p = this.f69746d;
        C24652o0 c24652o02 = c24652o0;
        if (abstractC24791p != null) {
            abstractC24791p.mo4347t(c24652o0);
            c24652o02 = this.f69746d.getPlaybackParameters();
        }
        this.f69743a.mo4347t(c24652o02);
    }
}
