package com.hiya.stingray.p000ui.setting;

import android.view.View;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$e */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$e.class */
final class DebugActivity$e implements View.OnClickListener {

    /* renamed from: f */
    public static final DebugActivity$e f89f = new DebugActivity$e();

    DebugActivity$e() {
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        throw new RuntimeException("Test Crash");
    }
}
