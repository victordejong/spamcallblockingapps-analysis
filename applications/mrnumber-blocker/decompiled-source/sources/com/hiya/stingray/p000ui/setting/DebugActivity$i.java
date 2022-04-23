package com.hiya.stingray.p000ui.setting;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.Button;
import com.hiya.stingray.n;
import com.hiya.stingray.ui.SplashActivity;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$i.class */
final class DebugActivity$i implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f94f;

    DebugActivity$i(DebugActivity debugActivity) {
        this.f94f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DebugActivity debugActivity = this.f94f;
        Intent intent = new Intent((Context) this.f94f, (Class<?>) SplashActivity.class);
        intent.setAction("android.intent.action.DIAL");
        Button button = (Button) this.f94f.O(n.j0);
        k.c(button, "deepLinkActionDial");
        intent.setData(Uri.parse(button.getText().toString()));
        debugActivity.startActivity(intent);
    }
}
