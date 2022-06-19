package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.analytics.AppEvents$PremiumPromotionSeen$PromoType;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.premium.premiumusertab.list.AnalyticsAction;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1033v2.p1034f.AbstractC17259b;
import p193e.p194a.p1111o2.C18900h;
import s1.i;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.k2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/k2.class */
public final class C16698k2 extends AbstractC16663f<AbstractC16719p1> implements AbstractC16715o1 {

    /* renamed from: d */
    public final AbstractC16711n1 f46839d;

    /* renamed from: e */
    public final AbstractC16694j2 f46840e;

    /* renamed from: f */
    public final CleverTapManager f46841f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16698k2(AbstractC16711n1 abstractC16711n1, AbstractC16694j2 abstractC16694j2, CleverTapManager cleverTapManager) {
        super(abstractC16711n1);
        l.e(abstractC16711n1, "model");
        l.e(abstractC16694j2, "router");
        l.e(cleverTapManager, "cleverTapManager");
        this.f46839d = abstractC16711n1;
        this.f46840e = abstractC16694j2;
        this.f46841f = cleverTapManager;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16663f, p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC16719p1 abstractC16719p1 = (AbstractC16719p1) obj;
        l.e(abstractC16719p1, "itemView");
        super.mo11464G(abstractC16719p1, i);
        AbstractC16736t abstractC16736t = m17148A().get(i).f46880b;
        Long l = null;
        if (!(abstractC16736t instanceof AbstractC16736t.C16745i)) {
            abstractC16736t = null;
        }
        AbstractC16736t.C16745i c16745i = (AbstractC16736t.C16745i) abstractC16736t;
        if (c16745i != null) {
            if (c16745i.f46952d) {
                abstractC16719p1.mo17079L();
            } else {
                Integer num = c16745i.f46950b;
                if (num != null) {
                    abstractC16719p1.mo17075r3(num.intValue());
                }
                String str = c16745i.f46951c;
                if (str != null) {
                    abstractC16719p1.mo17076o3(str);
                }
            }
            C16771y c16771y = c16745i.f46959k;
            abstractC16719p1.mo17082F2(c16771y != null ? c16771y.f47005b : null);
            C16767x c16767x = c16771y != null ? c16771y.f47004a : null;
            if (c16771y != null) {
                l = Long.valueOf(c16771y.f47006c);
            }
            abstractC16719p1.mo17077i0(c16767x, l);
            abstractC16719p1.mo17078U(c16745i.f46953e);
            abstractC16719p1.mo17084A4(c16745i.f46954f);
            abstractC16719p1.mo17081I(c16745i.f46955g);
            abstractC16719p1.mo17080J4(c16745i.f46956h, c16745i.f46957i);
            abstractC16719p1.mo17083B2(c16745i.f46958j);
            AnalyticsAction analyticsAction = c16745i.f46960l;
            if (analyticsAction == null) {
                return;
            }
            if (analyticsAction.ordinal() != 0) {
                throw new i();
            }
            this.f46841f.push("PremiumPromoSeen", C25225a.m3938Z1(new k("PromoType", AppEvents$PremiumPromotionSeen$PromoType.BottomBarWinback.name())));
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return m17148A().get(i).f46880b instanceof AbstractC16736t.C16745i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        Object obj = c18900h.f53005e;
        if (obj instanceof C16993f) {
            AbstractC16711n1 abstractC16711n1 = this.f46839d;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.premium.billing.Subscription");
            abstractC16711n1.mo17006Je((C16993f) obj, "CARD_PURCHASE_BUTTON_SOURCE");
            return true;
        } else if (obj instanceof AbstractC16775z) {
            AbstractC16694j2 abstractC16694j2 = this.f46840e;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CtaAction");
            abstractC16694j2.mo17008Hd((AbstractC16775z) obj);
            return true;
        } else if (!(obj instanceof AbstractC17259b.C17261b)) {
            return true;
        } else {
            AbstractC16736t abstractC16736t = m17148A().get(c18900h.f53002b).f46880b;
            Objects.requireNonNull(abstractC16736t, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.Promo");
            this.f46839d.mo17010Fg(((AbstractC16736t.C16745i) abstractC16736t).f46949a);
            return true;
        }
    }
}
