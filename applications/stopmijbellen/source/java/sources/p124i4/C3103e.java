package p124i4;

import p134j4.C3187b1;
import p134j4.C3243q1;
import p134j4.C3245r0;
import p134j4.C3246r1;
import p134j4.C3259w;
import p156l4.C3496b;
import p189o4.AbstractC3879p;
import p189o4.AbstractC3882s;
import p189o4.C3881r;
/* renamed from: i4.e */
/* loaded from: classes-dex2jar.jar:i4/e.class */
public final class C3103e implements AbstractC3882s {

    /* renamed from: a */
    public final AbstractC3882s f10513a;

    /* renamed from: b */
    public final AbstractC3882s f10514b;

    /* renamed from: c */
    public final AbstractC3882s f10515c;

    /* renamed from: d */
    public final AbstractC3882s f10516d;

    /* renamed from: e */
    public final AbstractC3882s f10517e;

    /* renamed from: f */
    public final AbstractC3882s f10518f;

    /* renamed from: g */
    public final Object f10519g;

    public C3103e(C3108j c3108j) {
        this.f10519g = this;
        C3110l c3110l = new C3110l(c3108j);
        this.f10513a = c3110l;
        AbstractC3882s c3105g = new C3105g(c3110l, 1);
        Object obj = C3881r.f12375c;
        c3105g = !(c3105g instanceof C3881r) ? new C3881r(c3105g) : c3105g;
        this.f10514b = c3105g;
        AbstractC3882s c3117s = new C3117s(c3110l, c3105g);
        c3117s = !(c3117s instanceof C3881r) ? new C3881r(c3117s) : c3117s;
        this.f10515c = c3117s;
        AbstractC3882s c3105g2 = new C3105g(c3110l, 0);
        c3105g2 = !(c3105g2 instanceof C3881r) ? new C3881r(c3105g2) : c3105g2;
        this.f10516d = c3105g2;
        AbstractC3882s c3107i = new C3107i(c3117s, c3105g2, c3110l, 0);
        c3107i = !(c3107i instanceof C3881r) ? new C3881r(c3107i) : c3107i;
        this.f10517e = c3107i;
        AbstractC3882s c3109k = new C3109k(c3107i, 0);
        this.f10518f = !(c3109k instanceof C3881r) ? new C3881r(c3109k) : c3109k;
    }

    public /* synthetic */ C3103e(AbstractC3882s abstractC3882s, AbstractC3882s abstractC3882s2, AbstractC3882s abstractC3882s3, AbstractC3882s abstractC3882s4, AbstractC3882s abstractC3882s5, AbstractC3882s abstractC3882s6, AbstractC3882s abstractC3882s7) {
        this.f10513a = abstractC3882s;
        this.f10514b = abstractC3882s2;
        this.f10515c = abstractC3882s3;
        this.f10516d = abstractC3882s4;
        this.f10517e = abstractC3882s5;
        this.f10518f = abstractC3882s6;
        this.f10519g = abstractC3882s7;
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        Object zza = this.f10513a.zza();
        AbstractC3879p m1736a = C3881r.m1736a(this.f10514b);
        Object zza2 = this.f10515c.zza();
        return new C3243q1((C3259w) zza, m1736a, (C3187b1) zza2, C3881r.m1736a(this.f10516d), (C3245r0) this.f10517e.zza(), (C3496b) this.f10518f.zza(), (C3246r1) ((AbstractC3882s) this.f10519g).zza());
    }
}
