package com.hiya.stingray.p000ui.premium.upsell;

import android.widget.LinearLayout;
import com.hiya.stingray.n;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$n */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$n.class */
final class c$n implements Runnable {

    /* renamed from: f */
    final /* synthetic */ c f72f;

    c$n(c cVar) {
        this.f72f = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f72f;
        int i = n.h2;
        LinearLayout linearLayout = (LinearLayout) cVar.f1(i);
        if (linearLayout != null) {
            LinearLayout linearLayout2 = (LinearLayout) this.f72f.f1(i);
            k.c(linearLayout2, "mainContent");
            int paddingLeft = linearLayout2.getPaddingLeft();
            LinearLayout linearLayout3 = (LinearLayout) this.f72f.f1(n.u1);
            k.c(linearLayout3, "header");
            int height = linearLayout3.getHeight();
            LinearLayout linearLayout4 = (LinearLayout) this.f72f.f1(i);
            k.c(linearLayout4, "mainContent");
            int paddingRight = linearLayout4.getPaddingRight();
            LinearLayout linearLayout5 = (LinearLayout) this.f72f.f1(i);
            k.c(linearLayout5, "mainContent");
            linearLayout.setPadding(paddingLeft, height, paddingRight, linearLayout5.getPaddingBottom());
        }
    }
}
