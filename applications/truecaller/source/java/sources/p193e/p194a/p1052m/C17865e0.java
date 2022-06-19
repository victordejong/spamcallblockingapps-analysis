package p193e.p194a.p1052m;

import com.truecaller.ads.provider.fetch.AdsConfigurationManager;
import com.truecaller.wizard.adschoices.AdsChoice;
import e.a.r.b.n;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1164r.p1168b.AbstractC19730i;
import p193e.p194a.p372b0.p394b.p403l.AbstractC8405a;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.m.e0 */
/* loaded from: classes7-dex2jar.jar:e/a/m/e0.class */
public final class C17865e0 extends n {

    /* renamed from: k */
    public final boolean f50841k = true;

    /* renamed from: l */
    public final AdsConfigurationManager f50842l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C17865e0(AbstractC8405a abstractC8405a, @Named("UI") f fVar, @Named("Async") f fVar2, AdsConfigurationManager adsConfigurationManager, AbstractC8426f abstractC8426f) {
        super(abstractC8405a, fVar, fVar2, abstractC8426f);
        l.e(abstractC8405a, "optOutRequester");
        l.e(fVar, "uiCoroutineContext");
        l.e(fVar2, "asyncCoroutineContext");
        l.e(adsConfigurationManager, "adsConfigurationManager");
        l.e(abstractC8426f, "regionUtils");
        this.f50842l = adsConfigurationManager;
    }

    /* renamed from: Jj */
    public boolean m15749Jj() {
        return this.f50841k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Mj */
    public void m15748Mj() {
        AbstractC19730i abstractC19730i = (AbstractC19730i) this.f57683a;
        if (abstractC19730i != null) {
            abstractC19730i.m12938K0();
        }
    }

    /* renamed from: Pj */
    public void m15747Pj(AdsChoice adsChoice, boolean z, boolean z2) {
        l.e(adsChoice, "choice");
        C17865e0.super.Pj(adsChoice, z, z2);
        if (z2 && adsChoice == AdsChoice.PERSONALIZED_ADS) {
            this.f50842l.m35954i(z ? AdsConfigurationManager.TargetingState.TARGETING : AdsConfigurationManager.TargetingState.NON_TARGETING);
        } else if (!z2 || adsChoice != AdsChoice.DIRECT_MARKETING) {
        } else {
            this.f50842l.m35960c(z ? AdsConfigurationManager.PromotionState.OPT_IN : AdsConfigurationManager.PromotionState.OPT_OUT);
        }
    }

    /* renamed from: c */
    public void m15746c() {
        C17865e0.super.c();
        this.f50842l.m35962a();
    }
}
