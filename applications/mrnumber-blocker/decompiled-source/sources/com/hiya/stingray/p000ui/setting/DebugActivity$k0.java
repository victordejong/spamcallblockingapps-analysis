package com.hiya.stingray.p000ui.setting;

import android.view.View;
import com.hiya.stingray.ui.premium.SoftPaywallActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$k0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$k0.class */
final class DebugActivity$k0 implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f99f;

    DebugActivity$k0(DebugActivity debugActivity) {
        this.f99f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f99f;
        debugActivity.startActivity(SoftPaywallActivity.s.m1246a(debugActivity));
    }
}
