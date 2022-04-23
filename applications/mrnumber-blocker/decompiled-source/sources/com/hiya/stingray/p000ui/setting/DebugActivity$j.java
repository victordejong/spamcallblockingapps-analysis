package com.hiya.stingray.p000ui.setting;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.hiya.stingray.manager.i2;
import com.hiya.stingray.ui.SplashActivity;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$j.class */
final class DebugActivity$j implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f96f;

    DebugActivity$j(DebugActivity debugActivity) {
        this.f96f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f96f;
        Intent intent = new Intent((Context) this.f96f, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(i2.a.PREMIUM_INFO.getUri(this.f96f));
        debugActivity.startActivity(intent);
    }
}
