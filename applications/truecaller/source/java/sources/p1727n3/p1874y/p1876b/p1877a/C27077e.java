package p1727n3.p1874y.p1876b.p1877a;

import n3.y.b.a.x0.r;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.AbstractC27415a;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.AbstractC27427i;
/* renamed from: n3.y.b.a.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/e.class */
public final class C27077e implements AbstractC27427i {

    /* renamed from: a */
    public final r f75687a;

    /* renamed from: b */
    public final AbstractC27078a f75688b;

    /* renamed from: c */
    public AbstractC27089h0 f75689c;

    /* renamed from: d */
    public AbstractC27427i f75690d;

    /* renamed from: e */
    public boolean f75691e = true;

    /* renamed from: f */
    public boolean f75692f;

    /* renamed from: n3.y.b.a.e$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/e$a.class */
    public interface AbstractC27078a {
    }

    public C27077e(AbstractC27078a abstractC27078a, AbstractC27415a abstractC27415a) {
        this.f75688b = abstractC27078a;
        this.f75687a = new r(abstractC27415a);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1904x0.AbstractC27427i
    public C27079e0 getPlaybackParameters() {
        AbstractC27427i abstractC27427i = this.f75690d;
        return abstractC27427i != null ? abstractC27427i.getPlaybackParameters() : this.f75687a.e;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1904x0.AbstractC27427i
    /* renamed from: r */
    public long mo365r() {
        return this.f75691e ? this.f75687a.r() : this.f75690d.mo365r();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1904x0.AbstractC27427i
    /* renamed from: u */
    public void mo364u(C27079e0 c27079e0) {
        AbstractC27427i abstractC27427i = this.f75690d;
        C27079e0 c27079e02 = c27079e0;
        if (abstractC27427i != null) {
            abstractC27427i.mo364u(c27079e0);
            c27079e02 = this.f75690d.getPlaybackParameters();
        }
        this.f75687a.u(c27079e02);
    }
}
