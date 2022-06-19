package p193e.p194a.p1011l.p1025p2;

import android.app.Activity;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.billing.Receipt;
import com.truecaller.premium.data.ProductKind;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1020g.C16913t;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17151p1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.data.PlayBillingPremiumPurchaseHelper$purchaseInternal$2", f = "PremiumPurchaseHelper.kt", l = {182, 188}, m = "invokeSuspend")
/* renamed from: e.a.l.p2.v */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/v.class */
public final class C17196v extends i implements p<i0, d<? super AbstractC17151p1>, Object> {

    /* renamed from: e */
    public int f48246e;

    /* renamed from: f */
    public final /* synthetic */ C17199w f48247f;

    /* renamed from: g */
    public final /* synthetic */ PremiumLaunchContext f48248g;

    /* renamed from: h */
    public final /* synthetic */ C16993f f48249h;

    /* renamed from: i */
    public final /* synthetic */ String f48250i;

    /* renamed from: j */
    public final /* synthetic */ a f48251j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17196v(C17199w c17199w, PremiumLaunchContext premiumLaunchContext, C16993f c16993f, String str, a aVar, d dVar) {
        super(2, dVar);
        this.f48247f = c17199w;
        this.f48248g = premiumLaunchContext;
        this.f48249h = c16993f;
        this.f48250i = str;
        this.f48251j = aVar;
    }

    /* renamed from: i */
    public final d<s> m16419i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C17196v(this.f48247f, this.f48248g, this.f48249h, this.f48250i, this.f48251j, dVar);
    }

    /* renamed from: k */
    public final Object m16418k(Object obj, Object obj2) {
        return m16419i(obj, (d) obj2).m16417s(s.a);
    }

    /* renamed from: s */
    public final Object m16417s(Object obj) {
        AbstractC17151p1.C17155d c17155d;
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f48246e;
        boolean z = true;
        if (i == 0) {
            C25225a.m3932a3(obj);
            ((AbstractC17164q1) this.f48247f.f48264d.get()).mo16457e(this.f48248g);
            C17199w c17199w = this.f48247f;
            AbstractC16987e abstractC16987e = c17199w.f48262b;
            Activity mo16368a = c17199w.f48265e.mo16368a();
            C16993f c16993f = this.f48249h;
            String str = this.f48250i;
            this.f48246e = 1;
            Object mo16665g = abstractC16987e.mo16665g(mo16368a, c16993f, str, this);
            obj = mo16665g;
            if (mo16665g == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            c17155d = (AbstractC17151p1) obj;
            return c17155d;
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC16987e.AbstractC16988a abstractC16988a = (AbstractC16987e.AbstractC16988a) obj;
        if (!(abstractC16988a instanceof AbstractC16987e.AbstractC16988a.C16992d)) {
            if (abstractC16988a instanceof AbstractC16987e.AbstractC16988a.C16991c) {
                ((AbstractC17164q1) this.f48247f.f48264d.get()).mo16460b(((AbstractC16987e.AbstractC16988a.C16991c) abstractC16988a).f47660a.f14241h, this.f48248g);
                c17155d = new AbstractC17151p1.C17155d(false, 1);
            } else if (abstractC16988a instanceof AbstractC16987e.AbstractC16988a.C16990b) {
                String str2 = ((AbstractC16987e.AbstractC16988a.C16990b) abstractC16988a).f47659a;
                c17155d = AbstractC17151p1.C17156e.f48145a;
            } else if (!l.a(abstractC16988a, AbstractC16987e.AbstractC16988a.C16989a.f47658a)) {
                throw new s1.i();
            } else {
                c17155d = AbstractC17151p1.C17152a.f48141a;
            }
            return c17155d;
        }
        Receipt receipt = ((AbstractC16987e.AbstractC16988a.C16992d) abstractC16988a).f47661a;
        ((AbstractC17164q1) this.f48247f.f48264d.get()).mo16460b(receipt.f14241h, this.f48248g);
        C16913t c16913t = this.f48247f.f48267g;
        C16993f c16993f2 = this.f48249h;
        Objects.requireNonNull(c16913t);
        l.e(c16993f2, "purchaseItem");
        AbstractC16832c2 abstractC16832c2 = c16913t.f47500c;
        ProductKind productKind = c16993f2.f47672k;
        if (!(productKind == ProductKind.SUBSCRIPTION_GOLD || productKind == ProductKind.CONSUMABLE_GOLD_YEARLY) || !c16913t.m16771d()) {
            z = false;
        }
        abstractC16832c2.mo16909O(z);
        this.f48251j.invoke();
        C17199w c17199w2 = this.f48247f;
        String str3 = this.f48249h.f47662a;
        this.f48246e = 2;
        Object m16416a = c17199w2.m16416a(receipt, str3, this);
        obj = m16416a;
        if (m16416a == aVar) {
            return aVar;
        }
        c17155d = (AbstractC17151p1) obj;
        return c17155d;
    }
}
