package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.PremiumLaunchContext;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1023n2.C16993f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.premium.data.PlayBillingPremiumPurchaseHelper$purchase$1", f = "PremiumPurchaseHelper.kt", l = {167}, m = "invokeSuspend")
/* renamed from: e.a.l.p2.u */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/u.class */
public final class C17193u extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f48235e;

    /* renamed from: f */
    public final /* synthetic */ C17199w f48236f;

    /* renamed from: g */
    public final /* synthetic */ C16993f f48237g;

    /* renamed from: h */
    public final /* synthetic */ PremiumLaunchContext f48238h;

    /* renamed from: i */
    public final /* synthetic */ String f48239i;

    /* renamed from: j */
    public final /* synthetic */ a f48240j;

    /* renamed from: k */
    public final /* synthetic */ l f48241k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17193u(C17199w c17199w, C16993f c16993f, PremiumLaunchContext premiumLaunchContext, String str, a aVar, l lVar, d dVar) {
        super(2, dVar);
        this.f48236f = c17199w;
        this.f48237g = c16993f;
        this.f48238h = premiumLaunchContext;
        this.f48239i = str;
        this.f48240j = aVar;
        this.f48241k = lVar;
    }

    /* renamed from: i */
    public final d<s> m16422i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C17193u(this.f48236f, this.f48237g, this.f48238h, this.f48239i, this.f48240j, this.f48241k, dVar);
    }

    /* renamed from: k */
    public final Object m16421k(Object obj, Object obj2) {
        return m16422i(obj, (d) obj2).m16420s(s.a);
    }

    /* renamed from: s */
    public final Object m16420s(Object obj) {
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f48235e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C17199w c17199w = this.f48236f;
            c17199w.f48266f.f48172d = false;
            C16993f c16993f = this.f48237g;
            PremiumLaunchContext premiumLaunchContext = this.f48238h;
            String str = this.f48239i;
            a aVar2 = this.f48240j;
            this.f48235e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(c17199w.f48268h, new C17196v(c17199w, premiumLaunchContext, c16993f, str, aVar2, null), this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C17199w c17199w2 = this.f48236f;
        c17199w2.f48266f.f48172d = true;
        c17199w2.f48261a = false;
        this.f48241k.d((AbstractC17151p1) obj);
        return s.a;
    }
}
