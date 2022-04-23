package com.hiya.stingray.p000ui.setting;

import android.widget.CompoundButton;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$i0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$i0.class */
final class DebugActivity$i0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ DebugActivity f95a;

    DebugActivity$i0(DebugActivity debugActivity) {
        this.f95a = debugActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f95a.k0().b0(z);
        DebugActivity.V(this.f95a);
    }
}
