package com.hiya.stingray.p000ui.login.verification;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
/* renamed from: com.hiya.stingray.ui.login.verification.g$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/g$b.class */
final class g$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ g f11f;

    g$b(g gVar) {
        this.f11f = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        g.h1(this.f11f, true);
        this.f11f.i1().m1266c();
        if (g.g1(this.f11f).k() != null) {
            g gVar = this.f11f;
            gVar.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/account/subscriptions?sku=" + g.g1(this.f11f).k() + "&package=com.mrnumber.blocker")));
            return;
        }
        this.f11f.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/account?utm_source=google&utm_medium=account&utm_campaign=my-account")));
    }
}
