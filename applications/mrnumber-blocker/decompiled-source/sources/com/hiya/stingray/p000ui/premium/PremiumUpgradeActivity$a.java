package com.hiya.stingray.p000ui.premium;

import android.view.View;
import com.hiya.stingray.p000ui.premium.upsell.c$b;
import com.hiya.stingray.ui.premium.upsell.SubscriptionUpsellActivity;
/* renamed from: com.hiya.stingray.ui.premium.PremiumUpgradeActivity$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/PremiumUpgradeActivity$a.class */
final class PremiumUpgradeActivity$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ PremiumUpgradeActivity f27f;

    PremiumUpgradeActivity$a(PremiumUpgradeActivity premiumUpgradeActivity) {
        this.f27f = premiumUpgradeActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        PremiumUpgradeActivity premiumUpgradeActivity = this.f27f;
        premiumUpgradeActivity.startActivity(SubscriptionUpsellActivity.r.m1194a(premiumUpgradeActivity, c$b.AFTER_UPDATE));
        this.f27f.P().m1197c();
    }
}
