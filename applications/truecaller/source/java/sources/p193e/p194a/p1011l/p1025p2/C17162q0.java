package p193e.p194a.p1011l.p1025p2;

import android.app.Activity;
import com.truecaller.premium.PremiumLaunchContext;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1011l.p1020g.C16913t;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1011l.p1023n2.AbstractC16994g;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.l.p2.q0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/q0.class */
public final class C17162q0 {

    /* renamed from: a */
    public final C17205x1 f48152a;

    /* renamed from: b */
    public final C17199w f48153b;

    /* renamed from: c */
    public final AbstractC17246a f48154c;

    /* renamed from: d */
    public final f f48155d;

    /* renamed from: e.a.l.p2.q0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/q0$a.class */
    public interface AbstractC17163a {
        /* renamed from: a */
        Activity mo16368a();
    }

    @Inject
    public C17162q0(AbstractC17246a abstractC17246a, AbstractC16994g abstractC16994g, AbstractC16987e abstractC16987e, AbstractC17028a abstractC17028a, a<AbstractC17164q1> aVar, AbstractC17163a abstractC17163a, C17173s c17173s, C16913t c16913t, @Named("UI") f fVar) {
        l.e(abstractC17246a, "premiumProductStoreProvider");
        l.e(abstractC16994g, "webBillingClient");
        l.e(abstractC16987e, "billing");
        l.e(abstractC17028a, "acknowledgePurchaseHelper");
        l.e(aVar, "purchaseSourceCache");
        l.e(abstractC17163a, "activityProvider");
        l.e(c17173s, "newPurchasesObserver");
        l.e(c16913t, "goldGiftPromoUtils");
        l.e(fVar, "uiContext");
        this.f48154c = abstractC17246a;
        this.f48155d = fVar;
        this.f48152a = new C17205x1(abstractC16994g, abstractC17163a);
        this.f48153b = new C17199w(abstractC16987e, abstractC17028a, aVar, abstractC17163a, c17173s, c16913t, fVar);
    }

    /* renamed from: a */
    public final void m16465a(f fVar, C16993f c16993f, PremiumLaunchContext premiumLaunchContext, String str, s1.z.b.a<s> aVar, s1.z.b.l<? super AbstractC17151p1, s> lVar) {
        l.e(fVar, "coroutineContext");
        l.e(c16993f, "purchaseItem");
        l.e(premiumLaunchContext, "purchaseSource");
        l.e(aVar, "beforeVerificationAction");
        l.e(lVar, "purchaseResultAction");
        int ordinal = this.f48154c.mo16331a().ordinal();
        if (ordinal == 0) {
            C17199w c17199w = this.f48153b;
            Objects.requireNonNull(c17199w);
            l.e(fVar, "coroutineContext");
            l.e(c16993f, "purchaseItem");
            l.e(premiumLaunchContext, "purchaseSource");
            l.e(aVar, "beforeVerificationAction");
            l.e(lVar, "purchaseResultAction");
            if (c17199w.f48261a) {
                return;
            }
            c17199w.f48261a = true;
            d.w2(d.h(fVar.plus(d.j((p1) null, 1, (Object) null))), (f) null, (j0) null, new C17193u(c17199w, c16993f, premiumLaunchContext, str, aVar, lVar, null), 3, (Object) null);
        } else if (ordinal != 1) {
        } else {
            C17205x1 c17205x1 = this.f48152a;
            Objects.requireNonNull(c17205x1);
            l.e(fVar, "coroutineContext");
            l.e(c16993f, "purchaseItem");
            l.e(aVar, "beforeVerificationAction");
            l.e(lVar, "purchaseResultAction");
            if (c17205x1.f48308a) {
                return;
            }
            c17205x1.f48308a = true;
            d.w2(d.h(fVar.plus(d.j((p1) null, 1, (Object) null))), (f) null, (j0) null, new C17202w1(c17205x1, c16993f, lVar, null), 3, (Object) null);
        }
    }
}
