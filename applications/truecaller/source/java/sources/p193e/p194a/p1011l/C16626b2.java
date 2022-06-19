package p193e.p194a.p1011l;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.premium.PremiumActivity;
import com.truecaller.premium.PremiumDialogActivity;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import com.truecaller.wizard.framework.WizardStartContext;
import e.a.r.t.c;
import java.util.Objects;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.l.b2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/b2.class */
public final class C16626b2 implements AbstractC16613a2 {
    @Override // p193e.p194a.p1011l.AbstractC16613a2
    /* renamed from: a */
    public void mo17168a(Context context, PremiumLaunchContext premiumLaunchContext, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(premiumLaunchContext, "launchContext");
        l.e(str, "page");
        context.startActivity(C10480a.m26059J(this, context, premiumLaunchContext, str, null, 8, null));
    }

    @Override // p193e.p194a.p1011l.AbstractC16613a2
    /* renamed from: b */
    public void mo17167b(Context context, PremiumLaunchContext premiumLaunchContext) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(premiumLaunchContext, "launchContext");
        context.startActivity(C10480a.m26059J(this, context, premiumLaunchContext, null, null, 8, null));
    }

    @Override // p193e.p194a.p1011l.AbstractC16613a2
    /* renamed from: c */
    public Intent mo17166c(Context context, PremiumLaunchContext premiumLaunchContext, String str, SubscriptionPromoEventMetaData subscriptionPromoEventMetaData) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(premiumLaunchContext, "launchContext");
        Intent addFlags = new Intent(context, premiumLaunchContext.ordinal() != 6 ? PremiumActivity.class : PremiumDialogActivity.class).putExtra("launchContext", premiumLaunchContext.name()).putExtra("selectedPage", str).putExtra("analyticsMetadata", subscriptionPromoEventMetaData).addFlags(268435456);
        l.d(addFlags, "Intent(context, activity…t.FLAG_ACTIVITY_NEW_TASK)");
        return addFlags;
    }

    @Override // p193e.p194a.p1011l.AbstractC16613a2
    /* renamed from: d */
    public void mo17165d(Context context, String str, PremiumLaunchContext premiumLaunchContext, SubscriptionPromoEventMetaData subscriptionPromoEventMetaData) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(premiumLaunchContext, "launchContext");
        l.e(subscriptionPromoEventMetaData, "subscriptionPromoEventMetaData");
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) applicationContext;
        if (!abstractApplicationC8442a.mo28540W() || !c.ya()) {
            if (C18334g0.m15277B("silentLoginFailed", false)) {
                abstractApplicationC8442a.mo28536a0(false);
            }
            c.Ga(context, WizardActivity.class, WizardStartContext.PREMIUM_VIEW);
            return;
        }
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(premiumLaunchContext, "launchContext");
        l.e(subscriptionPromoEventMetaData, "subscriptionPromoEventMetaData");
        context.startActivity(mo17166c(context, premiumLaunchContext, str, subscriptionPromoEventMetaData));
    }

    @Override // p193e.p194a.p1011l.AbstractC16613a2
    /* renamed from: e */
    public void mo17164e(Context context, String str, PremiumLaunchContext premiumLaunchContext, SubscriptionPromoEventMetaData subscriptionPromoEventMetaData) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(premiumLaunchContext, "launchContext");
        l.e(subscriptionPromoEventMetaData, "subscriptionPromoEventMetaData");
        context.startActivity(mo17166c(context, premiumLaunchContext, null, subscriptionPromoEventMetaData));
    }
}
