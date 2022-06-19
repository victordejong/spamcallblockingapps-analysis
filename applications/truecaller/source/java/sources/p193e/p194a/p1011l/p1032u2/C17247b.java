package p193e.p194a.p1011l.p1032u2;

import com.truecaller.premium.provider.Store;
import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
/* renamed from: e.a.l.u2.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/u2/b.class */
public final class C17247b implements AbstractC17246a {

    /* renamed from: a */
    public final C20592g f48388a;

    /* renamed from: b */
    public final AbstractC17248c f48389b;

    /* renamed from: c */
    public final int f48390c;

    /* renamed from: d */
    public final int f48391d;

    @Inject
    public C17247b(C20592g c20592g, AbstractC17248c abstractC17248c, int i, int i2) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC17248c, "purchaseViaBillingSupportedCheck");
        this.f48388a = c20592g;
        this.f48389b = abstractC17248c;
        this.f48390c = i;
        this.f48391d = i2;
    }

    @Override // p193e.p194a.p1011l.p1032u2.AbstractC17246a
    /* renamed from: a */
    public Store mo16331a() {
        Store store;
        if ((this.f48391d < this.f48390c) || (!this.f48389b.mo16330a())) {
            C20592g c20592g = this.f48388a;
            if (c20592g.f58061y.m10941a(c20592g, C20592g.f57695p6[21]).isEnabled()) {
                store = Store.WEB;
                return store;
            }
        }
        store = Store.GOOGLE_PLAY;
        return store;
    }
}
