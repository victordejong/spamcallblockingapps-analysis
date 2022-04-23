package p081h.p415j.p416a.p417a.p418a.p420d;

import p081h.p415j.p416a.p417a.p418a.p423g.C10645e;
/* renamed from: h.j.a.a.a.d.a */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/d/a.class */
public final class C10618a {

    /* renamed from: a */
    public final C10626i f24168a;

    public C10618a(C10626i iVar) {
        this.f24168a = iVar;
    }

    /* renamed from: a */
    public static C10618a m11190a(AbstractC10619b bVar) {
        C10626i iVar = (C10626i) bVar;
        C10645e.m11081a(bVar, "AdSession is null");
        C10645e.m11078b(iVar);
        C10645e.m11082a(iVar);
        C10618a aVar = new C10618a(iVar);
        iVar.m11157j().m11070a(aVar);
        return aVar;
    }

    /* renamed from: a */
    public void m11191a() {
        C10645e.m11082a(this.f24168a);
        C10645e.m11077c(this.f24168a);
        if (!this.f24168a.m11162f()) {
            try {
                this.f24168a.mo11170b();
            } catch (Exception e) {
            }
        }
        if (this.f24168a.m11162f()) {
            this.f24168a.m11166d();
        }
    }
}
