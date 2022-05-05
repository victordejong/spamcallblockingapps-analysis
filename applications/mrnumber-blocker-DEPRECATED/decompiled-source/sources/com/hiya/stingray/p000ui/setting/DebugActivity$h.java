package com.hiya.stingray.p000ui.setting;

import android.view.View;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$h.class */
final class DebugActivity$h implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f92f;

    DebugActivity$h(DebugActivity debugActivity) {
        this.f92f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f92f.h0().m1298a(this.f92f, new String[]{"android.permission.WRITE_CALL_LOG"})) {
            DebugActivity.P(this.f92f);
            return;
        }
        this.f92f.h0().m1292g(this.f92f, null, new String[]{"android.permission.WRITE_CALL_LOG"}, DebugActivity.Q());
    }
}
