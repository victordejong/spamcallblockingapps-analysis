package org.mistergroup.shouldianswer.p101ui.search;

import android.content.Context;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.makeramen.roundedimageview.RoundedImageView;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.components.stickyheaders.C2334a;
import org.mistergroup.shouldianswer.p097a.AbstractC2118ag;
import org.mistergroup.shouldianswer.utils.C3116p;
/* renamed from: org.mistergroup.shouldianswer.ui.search.k */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/k.class */
public final class C2872k extends C2334a.C2339e {

    /* renamed from: a */
    private C2853d f8536a;

    /* renamed from: b */
    private final AbstractC2118ag f8537b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2872k(org.mistergroup.shouldianswer.p097a.AbstractC2118ag r7, final org.mistergroup.shouldianswer.p101ui.search.C2844a r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "binding"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r8
            java.lang.String r1 = "adapter"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r7
            android.view.View r0 = r0.m5863d()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "binding.root"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r6
            r1 = r9
            r0.<init>(r1)
            r0 = r6
            r1 = r7
            r0.f8537b = r1
            r0 = r6
            org.mistergroup.shouldianswer.a.ag r0 = r0.f8537b
            android.view.View r0 = r0.m5863d()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "binding.root"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r7
            org.mistergroup.shouldianswer.ui.search.k$1 r1 = new org.mistergroup.shouldianswer.ui.search.k$1
            r2 = r1
            r3 = r6
            r4 = r8
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.search.C2872k.<init>(org.mistergroup.shouldianswer.a.ag, org.mistergroup.shouldianswer.ui.search.a):void");
    }

    /* renamed from: a */
    public final void m363a(C2853d c2853d) {
        C1694h.m3117b(c2853d, "item");
        View d = this.f8537b.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        Context context = d.getContext();
        this.f8536a = c2853d;
        ImageView imageView = this.f8537b.f5520j;
        C1694h.m3122a((Object) imageView, "binding.imgCallType");
        imageView.setVisibility(8);
        AppCompatTextView appCompatTextView = this.f8537b.f5525o;
        C1694h.m3122a((Object) appCompatTextView, "binding.tvCaption");
        appCompatTextView.setText(context.getString(2131755475));
        AppCompatTextView appCompatTextView2 = this.f8537b.f5527q;
        C1694h.m3122a((Object) appCompatTextView2, "binding.tvDescription");
        appCompatTextView2.setText("");
        AppCompatTextView appCompatTextView3 = this.f8537b.f5527q;
        C1694h.m3122a((Object) appCompatTextView3, "binding.tvDescription");
        appCompatTextView3.setVisibility(8);
        AppCompatTextView appCompatTextView4 = this.f8537b.f5528r;
        C1694h.m3122a((Object) appCompatTextView4, "binding.tvTime");
        appCompatTextView4.setVisibility(8);
        C3116p c3116p = C3116p.f9183a;
        RoundedImageView roundedImageView = this.f8537b.f5521k;
        C1694h.m3122a((Object) roundedImageView, "binding.imgContactPhoto");
        AppCompatTextView appCompatTextView5 = this.f8537b.f5526p;
        C1694h.m3122a((Object) appCompatTextView5, "binding.tvContactPhoto");
        c3116p.m108a(null, "?", roundedImageView, appCompatTextView5);
        ImageView imageView2 = this.f8537b.f5522l;
        C1694h.m3122a((Object) imageView2, "binding.imgRatingBig");
        imageView2.setVisibility(8);
        ImageView imageView3 = this.f8537b.f5523m;
        C1694h.m3122a((Object) imageView3, "binding.imgRatingSmall");
        imageView3.setVisibility(8);
        ImageButton imageButton = this.f8537b.f5513c;
        C1694h.m3122a((Object) imageButton, "binding.butCall");
        imageButton.setVisibility(8);
    }
}
