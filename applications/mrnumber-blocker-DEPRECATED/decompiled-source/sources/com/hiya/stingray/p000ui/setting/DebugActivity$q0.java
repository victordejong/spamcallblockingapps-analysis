package com.hiya.stingray.p000ui.setting;

import android.widget.CompoundButton;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$q0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$q0.class */
final class DebugActivity$q0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ DebugActivity f111a;

    DebugActivity$q0(DebugActivity debugActivity) {
        this.f111a = debugActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f111a.k0().c0(z);
        DebugActivity.V(this.f111a);
    }
}
