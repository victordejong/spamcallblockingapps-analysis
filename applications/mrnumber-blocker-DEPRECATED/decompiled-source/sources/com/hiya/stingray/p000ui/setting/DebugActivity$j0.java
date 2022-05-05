package com.hiya.stingray.p000ui.setting;

import android.view.View;
import com.hiya.stingray.p000ui.premium.upsell.c$b;
import com.hiya.stingray.ui.premium.upsell.SubscriptionUpsellActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$j0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$j0.class */
final class DebugActivity$j0 implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f97f;

    DebugActivity$j0(DebugActivity debugActivity) {
        this.f97f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f97f;
        debugActivity.startActivity(SubscriptionUpsellActivity.r.m1194a(debugActivity, c$b.DEFAULT));
    }
}
