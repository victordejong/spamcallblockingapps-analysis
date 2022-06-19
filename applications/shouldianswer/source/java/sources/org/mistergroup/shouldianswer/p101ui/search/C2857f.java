package org.mistergroup.shouldianswer.p101ui.search;

import android.content.Context;
import android.text.Spanned;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.makeramen.roundedimageview.RoundedImageView;
import java.util.Arrays;
import java.util.Observable;
import java.util.Observer;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1705p;
import org.mistergroup.shouldianswer.components.stickyheaders.C2334a;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2118ag;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3116p;
/* renamed from: org.mistergroup.shouldianswer.ui.search.f */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/f.class */
public final class C2857f extends C2334a.C2339e {

    /* renamed from: a */
    private C2853d f8509a;

    /* renamed from: b */
    private C2385ac f8510b;

    /* renamed from: c */
    private final AbstractC2118ag f8511c;

    /* renamed from: org.mistergroup.shouldianswer.ui.search.f$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/f$a.class */
    public static final class C2862a implements Observer {

        /* renamed from: b */
        final /* synthetic */ C2853d f8520b;

        C2862a(C2853d c2853d) {
            C2857f.this = r4;
            this.f8520b = c2853d;
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            C2857f.this.m373b(this.f8520b);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2857f(org.mistergroup.shouldianswer.p097a.AbstractC2118ag r8, final org.mistergroup.shouldianswer.p101ui.search.C2844a r9) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "binding"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r9
            java.lang.String r1 = "adapter"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r8
            android.view.View r0 = r0.m5863d()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "binding.root"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r7
            r1 = r10
            r0.<init>(r1)
            r0 = r7
            r1 = r8
            r0.f8511c = r1
            r0 = r7
            org.mistergroup.shouldianswer.a.ag r0 = r0.f8511c
            android.view.View r0 = r0.m5863d()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "binding.root"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r8
            org.mistergroup.shouldianswer.ui.search.f$1 r1 = new org.mistergroup.shouldianswer.ui.search.f$1
            r2 = r1
            r3 = r7
            r4 = r9
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            r0 = r8
            org.mistergroup.shouldianswer.ui.search.f$2 r1 = new org.mistergroup.shouldianswer.ui.search.f$2
            r2 = r1
            r3 = r7
            r4 = r8
            r5 = r9
            r2.<init>()
            android.view.View$OnCreateContextMenuListener r1 = (android.view.View.OnCreateContextMenuListener) r1
            r0.setOnCreateContextMenuListener(r1)
            r0 = r7
            org.mistergroup.shouldianswer.a.ag r0 = r0.f8511c
            android.widget.ImageButton r0 = r0.f5513c
            org.mistergroup.shouldianswer.ui.search.f$3 r1 = new org.mistergroup.shouldianswer.ui.search.f$3
            r2 = r1
            r3 = r7
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            r0 = r7
            org.mistergroup.shouldianswer.a.ag r0 = r0.f8511c
            android.widget.FrameLayout r0 = r0.f5515e
            org.mistergroup.shouldianswer.ui.search.f$4 r1 = new org.mistergroup.shouldianswer.ui.search.f$4
            r2 = r1
            r3 = r7
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.search.C2857f.<init>(org.mistergroup.shouldianswer.a.ag, org.mistergroup.shouldianswer.ui.search.a):void");
    }

    /* renamed from: b */
    public final void m373b(C2853d c2853d) {
        String m1469f;
        try {
            View d = this.f8511c.m5863d();
            C1694h.m3122a((Object) d, "binding.root");
            Context context = d.getContext();
            C2385ac c2385ac = this.f8510b;
            if (c2385ac == null) {
                return;
            }
            NumberInfo m1346j = c2385ac.m1346j();
            Spanned m385d = c2853d.m385d();
            Spanned m384e = c2853d.m384e();
            ImageButton imageButton = this.f8511c.f5513c;
            C1694h.m3122a((Object) imageButton, "binding.butCall");
            imageButton.setVisibility(0);
            ImageButton imageButton2 = this.f8511c.f5513c;
            C1694h.m3122a((Object) imageButton2, "binding.butCall");
            C1705p c1705p = C1705p.f4394a;
            String string = context.getString(2131755364);
            C1694h.m3122a((Object) string, "context.getString(R.stri…r_but_call_accessibility)");
            Object[] objArr = {c2385ac.m1360b()};
            String format = String.format(string, Arrays.copyOf(objArr, objArr.length));
            C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
            imageButton2.setContentDescription(format);
            ImageView imageView = this.f8511c.f5520j;
            C1694h.m3122a((Object) imageView, "binding.imgCallType");
            imageView.setVisibility(8);
            AppCompatTextView appCompatTextView = this.f8511c.f5525o;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvCaption");
            appCompatTextView.setText(m385d != null ? m385d : c2385ac.m1360b());
            AppCompatTextView appCompatTextView2 = this.f8511c.f5527q;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvDescription");
            if (m384e != null) {
                m1469f = m384e;
            } else {
                if (m1346j == null) {
                    C1694h.m3124a();
                }
                m1469f = m1346j.m1469f();
            }
            appCompatTextView2.setText(m1469f);
            AppCompatTextView appCompatTextView3 = this.f8511c.f5527q;
            C1694h.m3122a((Object) appCompatTextView3, "binding.tvDescription");
            appCompatTextView3.setVisibility(0);
            AppCompatTextView appCompatTextView4 = this.f8511c.f5528r;
            C1694h.m3122a((Object) appCompatTextView4, "binding.tvTime");
            appCompatTextView4.setVisibility(8);
            FrameLayout frameLayout = this.f8511c.f5515e;
            C1694h.m3122a((Object) frameLayout, "binding.frameContactPhoto");
            C1705p c1705p2 = C1705p.f4394a;
            String string2 = context.getString(2131755365);
            C1694h.m3122a((Object) string2, "context.getString(R.stri…er_contact_accessibility)");
            Object[] objArr2 = {c2385ac.m1360b()};
            String format2 = String.format(string2, Arrays.copyOf(objArr2, objArr2.length));
            C1694h.m3122a((Object) format2, "java.lang.String.format(format, *args)");
            frameLayout.setContentDescription(format2);
            C3116p c3116p = C3116p.f9183a;
            RoundedImageView roundedImageView = this.f8511c.f5521k;
            C1694h.m3122a((Object) roundedImageView, "binding.imgContactPhoto");
            AppCompatTextView appCompatTextView5 = this.f8511c.f5526p;
            C1694h.m3122a((Object) appCompatTextView5, "binding.tvContactPhoto");
            c3116p.m106a(c2385ac, roundedImageView, appCompatTextView5);
            ImageView imageView2 = this.f8511c.f5522l;
            C1694h.m3122a((Object) imageView2, "binding.imgRatingBig");
            imageView2.setVisibility(8);
            ImageView imageView3 = this.f8511c.f5523m;
            C1694h.m3122a((Object) imageView3, "binding.imgRatingSmall");
            imageView3.setVisibility(8);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m376a(C2853d c2853d) {
        C1694h.m3117b(c2853d, "item");
        this.f8509a = c2853d;
        new C2862a(c2853d);
        this.f8510b = c2853d.m386c();
        m373b(c2853d);
    }
}
