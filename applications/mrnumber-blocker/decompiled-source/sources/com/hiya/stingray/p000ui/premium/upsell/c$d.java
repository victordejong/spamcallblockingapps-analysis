package com.hiya.stingray.p000ui.premium.upsell;

import android.view.View;
import androidx.fragment.app.e;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$d */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$d.class */
final class c$d implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ c f60f;

    c$d(c cVar) {
        this.f60f = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e activity = this.f60f.getActivity();
        if (activity != null) {
            activity.finish();
        }
        this.f60f.g1().m1193a();
    }
}
