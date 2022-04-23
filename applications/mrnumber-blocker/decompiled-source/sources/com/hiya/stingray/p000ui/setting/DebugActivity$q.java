package com.hiya.stingray.p000ui.setting;

import android.view.View;
import com.hiya.stingray.manager.r2;
import com.hiya.stingray.ui.t.a;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$q */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$q.class */
final class DebugActivity$q implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f110f;

    DebugActivity$q(DebugActivity debugActivity) {
        this.f110f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        new a(r2.b.DEBUG, this.f110f).show();
    }
}
