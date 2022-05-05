package com.hiya.stingray.p000ui.login.verification;

import android.view.View;
import androidx.fragment.app.e;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.login.verification.j$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/j$h.class */
final class j$h implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ j f16f;

    j$h(j jVar) {
        this.f16f = jVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (j.j1(this.f16f)) {
            this.f16f.q1().m1265d();
        } else {
            this.f16f.q1().m1264e();
        }
        e activity = this.f16f.getActivity();
        if (activity != null) {
            activity.setResult(-1);
            activity.finish();
            return;
        }
        k.o();
        throw null;
    }
}
