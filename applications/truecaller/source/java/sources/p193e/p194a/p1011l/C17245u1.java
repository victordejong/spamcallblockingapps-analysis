package p193e.p194a.p1011l;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.premium.gift.GoldGiftDialogActivity;
import com.truecaller.premium.p173ui.PremiumObtainedDialogActivity;
import com.truecaller.premium.provider.Store;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import p193e.p194a.p1011l.p1025p2.C17086f;
import p193e.p194a.p1011l.p1025p2.C17192t1;
import p193e.p194a.p1011l.p1025p2.C17203x;
import q3.a.i0;
import s1.f0.r;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.PremiumPushNotificationHandler$handleNotification$1", f = "PremiumPushNotificationHandler.kt", l = {36}, m = "invokeSuspend")
/* renamed from: e.a.l.u1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/u1.class */
public final class C17245u1 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f48385e;

    /* renamed from: f */
    public final /* synthetic */ C17251v1 f48386f;

    /* renamed from: g */
    public final /* synthetic */ InternalTruecallerNotification f48387g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17245u1(C17251v1 c17251v1, InternalTruecallerNotification internalTruecallerNotification, d dVar) {
        super(2, dVar);
        this.f48386f = c17251v1;
        this.f48387g = internalTruecallerNotification;
    }

    /* renamed from: i */
    public final d<s> m16334i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C17245u1(this.f48386f, this.f48387g, dVar);
    }

    /* renamed from: k */
    public final Object m16333k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C17245u1(this.f48386f, this.f48387g, dVar).m16332s(s.a);
    }

    /* renamed from: s */
    public final Object m16332s(Object obj) {
        String str;
        String str2;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f48385e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC17168r0 abstractC17168r0 = this.f48386f.f48394b;
            this.f48385e = 1;
            Object mo16453b = abstractC17168r0.mo16453b(this);
            obj = mo16453b;
            if (mo16453b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((C17203x) ((k) obj).b).f48293m == Store.WEB) {
            C17192t1 c17192t1 = this.f48386f.f48399g;
            c17192t1.f48231a.mo16401X1(0L);
            c17192t1.f48231a.mo16402X(false);
            c17192t1.f48232b.mo16871y0(false);
        }
        if (s1.a.a.a.v0.f.d.I3(this.f48387g.m34847j("ro"))) {
            return sVar;
        }
        if (this.f48386f.f48398f.m16773b()) {
            Context context = this.f48386f.f48393a;
            context.startActivity(GoldGiftDialogActivity.f14248d.m34818a(context, false));
            return sVar;
        }
        String m34847j = this.f48387g.m34847j("pl");
        if (m34847j == null) {
            m34847j = "regular";
        }
        l.d(m34847j, "notification.getApplicat…M_LEVEL) ?: Level.PREMIUM");
        String m34847j2 = this.f48387g.m34847j("d");
        String string = this.f48386f.f48393a.getString(C2752R.string.PremiumObtainedDialogTitle);
        l.d(string, "context.getString(R.stri…emiumObtainedDialogTitle)");
        int intValue = m34847j2 != null ? new Integer(Integer.parseInt(m34847j2)).intValue() : 0;
        String string2 = this.f48386f.f48393a.getString(C2752R.string.PremiumObtainedDialogSubTitleV2, new Integer(intValue), this.f48386f.f48393a.getResources().getQuantityString(C2752R.plurals.referral_days_of_premium, intValue));
        l.d(string2, "context.getString(\n     …tionInDays)\n            )");
        C17086f c17086f = this.f48386f.f48396d;
        String m34847j3 = this.f48387g.m34847j("pid");
        Objects.requireNonNull(c17086f);
        boolean n = r.n("free_to_paid_test", m34847j3, true);
        if (n) {
            c17086f.m16549a();
            c17086f.f47955a.putBoolean("premiumFreePromoReceived", true);
        }
        if (n) {
            str = this.f48386f.f48393a.getString(C2752R.string.PremiumObtainedDialogFreePromotionTitle);
            l.d(str, "context.getString(R.stri…DialogFreePromotionTitle)");
            String string3 = this.f48386f.f48393a.getString(C2752R.string.PremiumObtainedDialogFreePromotionMessage);
            l.d(string3, "context.getString(R.stri…alogFreePromotionMessage)");
            m34847j = "regular";
            str2 = string3;
        } else if (r.n("gold", m34847j, true)) {
            str2 = this.f48386f.f48393a.getString(C2752R.string.PremiumGoldObtainedMessage, m34847j2);
            l.d(str2, "context.getString(R.stri…oldObtainedMessage, days)");
            str = string;
        } else {
            str = string;
            str2 = string2;
            if (this.f48386f.f48397e.m17212a()) {
                str = string;
                str2 = string2;
                if (this.f48386f.f48395c.m17198b()) {
                    str = this.f48386f.f48393a.getString(C2752R.string.PremiumObtainedDialogFreePremiumTitle);
                    l.d(str, "context.getString(R.stri…edDialogFreePremiumTitle)");
                    str2 = this.f48386f.f48393a.getString(C2752R.string.PremiumObtainedDialogFreePremiumMessage);
                    l.d(str2, "context.getString(R.stri…DialogFreePremiumMessage)");
                }
            }
        }
        Context context2 = this.f48386f.f48393a;
        l.e(context2, AnalyticsConstants.CONTEXT);
        l.e(str, "title");
        l.e(str2, "text");
        l.e(m34847j, "level");
        context2.startActivity(new Intent(context2, PremiumObtainedDialogActivity.class).addFlags(268435456).putExtra("ARG_TITLE", str).putExtra("ARG_TEXT", str2).putExtra("ARG_LEVEL", m34847j));
        return sVar;
    }
}
