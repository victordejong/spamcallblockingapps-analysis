package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.C2752R;
import com.truecaller.premium.premiumusertab.list.AnalyticsAction;
import java.util.Objects;
import p193e.p194a.p1011l.p1012a.AbstractC16566c;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1129p5.AbstractC19233h0;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.h */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/h.class */
public abstract class AbstractC16674h {

    /* renamed from: a */
    public final C16727r f46810a;

    /* renamed from: b */
    public final AbstractC16566c f46811b;

    /* renamed from: c */
    public final AbstractC19233h0 f46812c;

    public AbstractC16674h(C16727r c16727r, AbstractC16566c abstractC16566c, AbstractC19233h0 abstractC19233h0) {
        l.e(c16727r, "cardLabelFactory");
        l.e(abstractC16566c, "buttonBuildHelper");
        l.e(abstractC19233h0, "resourceProvider");
        this.f46810a = c16727r;
        this.f46811b = abstractC16566c;
        this.f46812c = abstractC19233h0;
    }

    /* renamed from: b */
    public static C16717p m17132b(AbstractC16674h abstractC16674h, C16993f c16993f, boolean z, C16629a0 c16629a0, Long l, int i, Object obj) {
        Long l2 = (i & 8) != 0 ? null : l;
        l.e(c16993f, "purchaseItem");
        String mo13768b = abstractC16674h.f46812c.mo13768b(C2752R.string.PremiumUserTabGiftGoldCardTitle, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…UserTabGiftGoldCardTitle)");
        C16770x2 c16770x2 = new C16770x2(mo13768b, abstractC16674h.f46812c.mo13769a(C2752R.color.tcx_goldWinbackCardTitle), 16.0f, false, 0.0f, 24);
        String mo13768b2 = abstractC16674h.f46812c.mo13768b(C2752R.string.PremiumUserTabGiftGoldCardOffer, new Object[0]);
        l.d(mo13768b2, "resourceProvider.getStri…UserTabGiftGoldCardOffer)");
        C16770x2 c16770x22 = new C16770x2(mo13768b2, abstractC16674h.f46812c.mo13769a(C2752R.color.tcx_goldWinbackCardOffer), 28.0f, false, 0.0f, 24);
        String mo13768b3 = abstractC16674h.f46812c.mo13768b(C2752R.string.PremiumUserTabGiftGoldCardSubtitle, new Object[0]);
        l.d(mo13768b3, "resourceProvider.getStri…rTabGiftGoldCardSubtitle)");
        return new C16717p(abstractC16674h.f46810a.m17072a(2130970084), new AbstractC16736t.C16745i("PROMO_TYPE_GOLD_GIFT", null, null, true, c16770x2, c16770x22, new C16770x2(mo13768b3, abstractC16674h.f46812c.mo13769a(C2752R.color.tcx_goldWinbackCardOffer), 12.0f, false, 0.0f, 24), c16993f, abstractC16674h.f46811b.mo17240a(c16993f, z, C2752R.C2753drawable.background_tcx_promo_card_purchase_button_gold), null, abstractC16674h.m17133a(l2, 2130969965), null, 2054), null, 4);
    }

    /* renamed from: c */
    public static C16717p m17131c(AbstractC16674h abstractC16674h, String str, C16993f c16993f, boolean z, boolean z2, C16629a0 c16629a0, Long l, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = false;
        }
        if ((i & 16) != 0) {
            c16629a0 = null;
        }
        if ((i & 32) != 0) {
            l = null;
        }
        if ((i & 64) != 0) {
            str2 = null;
        }
        Objects.requireNonNull(abstractC16674h);
        l.e(str, "imageUrl");
        l.e(c16993f, "purchaseItem");
        AbstractC16736t.C16745i c16745i = new AbstractC16736t.C16745i(str2, null, str, false, null, null, null, c16993f, abstractC16674h.f46811b.mo17240a(c16993f, z, z2 ? 2131231038 : 2131231036), c16629a0, abstractC16674h.m17133a(l, z2 ? 2130969965 : 2130970017), null, 2170);
        C16727r c16727r = abstractC16674h.f46810a;
        int i2 = 2130969965;
        if (z2) {
            i2 = 2130970084;
        }
        return new C16717p(c16727r.m17072a(i2), c16745i, null, 4);
    }

    /* renamed from: d */
    public static C16717p m17130d(AbstractC16674h abstractC16674h, C16993f c16993f, Long l, C16629a0 c16629a0, int i, Object obj) {
        if ((i & 2) != 0) {
            l = null;
        }
        Objects.requireNonNull(abstractC16674h);
        l.e(c16993f, "purchaseItem");
        String mo13768b = abstractC16674h.f46812c.mo13768b(C2752R.string.PremiumUserTabWelcomeOfferCardTitle, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…TabWelcomeOfferCardTitle)");
        C16770x2 c16770x2 = new C16770x2(mo13768b, abstractC16674h.f46812c.mo13769a(2131101238), 15.0f, false, 0.0f, 24);
        String mo13768b2 = abstractC16674h.f46812c.mo13768b(C2752R.string.PremiumUserTabWelcomeOfferCardOffer, new Object[0]);
        l.d(mo13768b2, "resourceProvider.getStri…TabWelcomeOfferCardOffer)");
        C16770x2 c16770x22 = new C16770x2(mo13768b2, abstractC16674h.f46812c.mo13769a(2131101238), 33.0f, true, 0.0f, 16);
        String mo13768b3 = abstractC16674h.f46812c.mo13768b(C2752R.string.PremiumUserTabWelcomeOfferCardSubTitle, new Object[0]);
        l.d(mo13768b3, "resourceProvider.getStri…WelcomeOfferCardSubTitle)");
        AbstractC16736t.C16745i c16745i = new AbstractC16736t.C16745i("PROMO_TYPE_WELCOME_OFFER", Integer.valueOf((int) C2752R.C2753drawable.img_premium_user_tab_promo_tab_welcome), null, false, c16770x2, c16770x22, new C16770x2(mo13768b3, abstractC16674h.f46812c.mo13769a(2131101238), 12.0f, true, 0.0f, 16), c16993f, abstractC16674h.f46811b.mo17240a(c16993f, false, C2752R.C2753drawable.background_tcx_promo_card_purchase_button_welcome_offer), null, abstractC16674h.m17133a(l, 2130969964), null, 2060);
        String mo13768b4 = abstractC16674h.f46810a.f46901c.mo13768b(C2752R.string.PremiumOfferWelcomeSubtext, new Object[0]);
        l.d(mo13768b4, "resourceProvider.getStri…emiumOfferWelcomeSubtext)");
        return new C16717p(new C16723q(C2752R.C2753drawable.ic_wave, mo13768b4, 2130969964), c16745i, null, 4);
    }

    /* renamed from: e */
    public static C16717p m17129e(AbstractC16674h abstractC16674h, C16993f c16993f, boolean z, boolean z2, C16629a0 c16629a0, Long l, String str, int i, Object obj) {
        if ((i & 8) != 0) {
            c16629a0 = null;
        }
        if ((i & 16) != 0) {
            l = null;
        }
        if ((i & 32) != 0) {
            str = null;
        }
        Objects.requireNonNull(abstractC16674h);
        l.e(c16993f, "purchaseItem");
        Integer valueOf = !z ? Integer.valueOf((int) C2752R.C2753drawable.background_tcx_winback_premium_card) : null;
        String mo13768b = abstractC16674h.f46812c.mo13768b(z ? 2131887439 : 2131887441, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…bWinbackCardPremiumTitle)");
        C16770x2 c16770x2 = new C16770x2(mo13768b, abstractC16674h.f46812c.mo13769a(z ? 2131101002 : 2131101388), 15.0f, false, 0.0f, 24);
        String mo13768b2 = abstractC16674h.f46812c.mo13768b(C2752R.string.PremiumUserTabWinbackCardOffer2, new Object[0]);
        l.d(mo13768b2, "resourceProvider.getStri…UserTabWinbackCardOffer2)");
        C16770x2 c16770x22 = new C16770x2(mo13768b2, abstractC16674h.f46812c.mo13769a(z ? 2131101001 : 2131101388), 33.0f, true, 0.0f, 16);
        String mo13768b3 = abstractC16674h.f46812c.mo13768b(C2752R.string.PremiumUserTabWinbackCardSubtitle, new Object[0]);
        l.d(mo13768b3, "resourceProvider.getStri…erTabWinbackCardSubtitle)");
        return new C16717p(abstractC16674h.f46810a.m17072a(z ? 2130970084 : 2130969965), new AbstractC16736t.C16745i(str, valueOf, null, z, c16770x2, c16770x22, new C16770x2(mo13768b3, abstractC16674h.f46812c.mo13769a(z ? 2131101002 : 2131101388), 12.0f, true, 0.7f), c16993f, abstractC16674h.f46811b.mo17240a(c16993f, z2, C2752R.C2753drawable.background_tcx_promo_card_purchase_button_premium_winback), c16629a0, abstractC16674h.m17133a(l, 2130969965), AnalyticsAction.WINBACK, 4), null, 4);
    }

    /* renamed from: a */
    public final C16771y m17133a(Long l, int i) {
        C16771y c16771y;
        if (l != null) {
            l.longValue();
            C16767x c16767x = new C16767x(this.f46812c.mo13769a(2131101388), this.f46812c.mo13758l(i));
            int mo13758l = this.f46812c.mo13758l(2130970253);
            String mo13768b = this.f46812c.mo13768b(C2752R.string.PremiumUserTabCardOfferEndPreText, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…erTabCardOfferEndPreText)");
            c16771y = new C16771y(c16767x, new C16770x2(mo13768b, mo13758l, 12.0f, false, 0.0f, 24), l.longValue());
        } else {
            c16771y = null;
        }
        return c16771y;
    }
}
