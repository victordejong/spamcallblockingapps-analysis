package com.hiya.stingray.p000ui.setting;

import android.view.View;
import i.c.b0.j.a;
import p033i.p064c.p066b0.p067a.p069b.C0446b;
/* renamed from: com.hiya.stingray.ui.setting.DebugActivity$e0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/DebugActivity$e0.class */
final class DebugActivity$e0 implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ DebugActivity f90f;

    DebugActivity$e0(DebugActivity debugActivity) {
        this.f90f = debugActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f90f.i0().e().m(new a(this)).D(a.b()).u(C0446b.m96b()).B(new b(this), new c(this));
    }
}
