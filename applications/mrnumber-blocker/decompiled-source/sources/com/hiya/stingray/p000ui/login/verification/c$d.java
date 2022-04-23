package com.hiya.stingray.p000ui.login.verification;

import android.widget.CompoundButton;
/* renamed from: com.hiya.stingray.ui.login.verification.c$d */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/c$d.class */
final class c$d implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ c f10a;

    c$d(c cVar) {
        this.f10a = cVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        c.g1(this.f10a).i(z);
    }
}
