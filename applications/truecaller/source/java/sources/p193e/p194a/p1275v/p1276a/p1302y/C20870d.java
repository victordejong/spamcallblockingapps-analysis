package p193e.p194a.p1275v.p1276a.p1302y;

import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1275v.p1276a.p1302y.C20867c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.ui.ads.DetailsAdPresenter$loadAds$1", f = "DetailsAdPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.v.a.y.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/y/d.class */
public final class C20870d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C20867c f58652e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20870d(C20867c c20867c, d dVar) {
        super(2, dVar);
        this.f58652e = c20867c;
    }

    /* renamed from: i */
    public final d<s> m10609i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20870d(this.f58652e, dVar);
    }

    /* renamed from: k */
    public final Object m10608k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C20867c c20867c = this.f58652e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        AbstractC20874h abstractC20874h = c20867c.f58648j;
        C20867c.C20868a c20868a = c20867c.f58646h;
        C20875i c20875i = (C20875i) abstractC20874h;
        Objects.requireNonNull(c20875i);
        l.e(c20868a, "adsListener");
        c20875i.f58658a = c20868a;
        if (c20875i.f58664g.mo10576c(c20875i.m10598c()) && !c20875i.f58663f) {
            c20868a.onAdLoaded();
        }
        c20867c.f58645g = true;
        C20875i c20875i2 = (C20875i) abstractC20874h;
        c20875i2.f58664g.mo10572g(c20875i2.m10598c(), c20875i2);
        c20867c.m10612Ij(true);
        return sVar;
    }

    /* renamed from: s */
    public final Object m10607s(Object obj) {
        C25225a.m3932a3(obj);
        C20867c c20867c = this.f58652e;
        AbstractC20874h abstractC20874h = c20867c.f58648j;
        C20867c.C20868a c20868a = c20867c.f58646h;
        C20875i c20875i = (C20875i) abstractC20874h;
        Objects.requireNonNull(c20875i);
        l.e(c20868a, "adsListener");
        c20875i.f58658a = c20868a;
        if (c20875i.f58664g.mo10576c(c20875i.m10598c()) && !c20875i.f58663f) {
            c20868a.onAdLoaded();
        }
        this.f58652e.f58645g = true;
        C20875i c20875i2 = (C20875i) abstractC20874h;
        c20875i2.f58664g.mo10572g(c20875i2.m10598c(), c20875i2);
        this.f58652e.m10612Ij(true);
        return s.a;
    }
}
