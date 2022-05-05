package com.hiya.stingray.p000ui.premium.upsell;

import android.view.View;
import androidx.fragment.app.e;
import com.hiya.stingray.manager.k4;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$h.class */
final class c$h implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ c f64f;

    c$h(c cVar) {
        this.f64f = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k4 i1 = this.f64f.i1();
        e activity = this.f64f.getActivity();
        if (activity != null) {
            k.c(activity, "activity!!");
            i1.a(activity);
            this.f64f.g1().m1191c();
            return;
        }
        k.o();
        throw null;
    }
}
