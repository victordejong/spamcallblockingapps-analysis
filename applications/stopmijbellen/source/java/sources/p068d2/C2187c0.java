package p068d2;

import android.graphics.Typeface;
import android.support.p012v4.media.AbstractC0081a;
import android.widget.FrameLayout;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Objects;
import p008a7.EnumC0038e;
/* renamed from: d2.c0 */
/* loaded from: classes-dex2jar.jar:d2/c0.class */
public class C2187c0 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2322j0 f7982a;

    public C2187c0(C2322j0 c2322j0) {
        this.f7982a = c2322j0;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        C2183b3 c2183b3;
        if (this.f7982a.m3639b(c2410t0)) {
            C2322j0 c2322j0 = this.f7982a;
            Objects.requireNonNull(c2322j0);
            C2267f4 c2267f4 = c2410t0.f8537b;
            int m3735r = C2227e4.m3735r(c2267f4, FacebookAdapter.KEY_ID);
            if (C2227e4.m3741l(c2267f4, "editable")) {
                C2183b3 c2183b32 = new C2183b3(c2322j0.f8315y, c2410t0, m3735r, c2322j0);
                C2267f4 c2267f42 = c2183b32.f7975p.f8537b;
                c2183b32.f7970k = c2267f42.m3697o("ad_session_id");
                c2183b32.f7961b = C2227e4.m3735r(c2267f42, "x");
                c2183b32.f7962c = C2227e4.m3735r(c2267f42, "y");
                c2183b32.f7963d = C2227e4.m3735r(c2267f42, "width");
                c2183b32.f7964e = C2227e4.m3735r(c2267f42, "height");
                c2183b32.f7966g = C2227e4.m3735r(c2267f42, "font_family");
                c2183b32.f7965f = C2227e4.m3735r(c2267f42, "font_style");
                c2183b32.f7967h = C2227e4.m3735r(c2267f42, "font_size");
                c2183b32.f7971l = c2267f42.m3697o("background_color");
                c2183b32.f7972m = c2267f42.m3697o("font_color");
                c2183b32.f7973n = c2267f42.m3697o("text");
                c2183b32.f7968i = C2227e4.m3735r(c2267f42, "align_x");
                c2183b32.f7969j = C2227e4.m3735r(c2267f42, "align_y");
                c2183b32.setVisibility(4);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c2183b32.f7963d, c2183b32.f7964e);
                layoutParams.setMargins(c2183b32.f7961b, c2183b32.f7962c, 0, 0);
                layoutParams.gravity = 0;
                c2183b32.f7974o.addView(c2183b32, layoutParams);
                int i = c2183b32.f7966g;
                if (i == 0) {
                    c2183b32.setTypeface(Typeface.DEFAULT);
                } else if (i == 1) {
                    c2183b32.setTypeface(Typeface.SERIF);
                } else if (i == 2) {
                    c2183b32.setTypeface(Typeface.SANS_SERIF);
                } else if (i == 3) {
                    c2183b32.setTypeface(Typeface.MONOSPACE);
                }
                int i2 = c2183b32.f7965f;
                if (i2 == 0) {
                    c2183b32.setTypeface(c2183b32.getTypeface(), 0);
                } else if (i2 == 1) {
                    c2183b32.setTypeface(c2183b32.getTypeface(), 1);
                } else if (i2 == 2) {
                    c2183b32.setTypeface(c2183b32.getTypeface(), 2);
                } else if (i2 == 3) {
                    c2183b32.setTypeface(c2183b32.getTypeface(), 3);
                }
                c2183b32.setText(c2183b32.f7973n);
                c2183b32.setTextSize(c2183b32.f7967h);
                c2183b32.setGravity(c2183b32.m3776a(true, c2183b32.f7968i) | c2183b32.m3776a(false, c2183b32.f7969j));
                if (!c2183b32.f7971l.equals("")) {
                    c2183b32.setBackgroundColor(C2315i3.m3675B(c2183b32.f7971l));
                }
                if (!c2183b32.f7972m.equals("")) {
                    c2183b32.setTextColor(C2315i3.m3675B(c2183b32.f7972m));
                }
                ArrayList<AbstractC2458y0> arrayList = c2183b32.f7974o.f8309s;
                C2398r2 c2398r2 = new C2398r2(c2183b32);
                C2408t.m3594a("TextView.set_visible", c2398r2);
                arrayList.add(c2398r2);
                ArrayList<AbstractC2458y0> arrayList2 = c2183b32.f7974o.f8309s;
                C2406s2 c2406s2 = new C2406s2(c2183b32);
                C2408t.m3594a("TextView.set_bounds", c2406s2);
                arrayList2.add(c2406s2);
                ArrayList<AbstractC2458y0> arrayList3 = c2183b32.f7974o.f8309s;
                C2413t2 c2413t2 = new C2413t2(c2183b32);
                C2408t.m3594a("TextView.set_font_color", c2413t2);
                arrayList3.add(c2413t2);
                ArrayList<AbstractC2458y0> arrayList4 = c2183b32.f7974o.f8309s;
                C2422u2 c2422u2 = new C2422u2(c2183b32);
                C2408t.m3594a("TextView.set_background_color", c2422u2);
                arrayList4.add(c2422u2);
                ArrayList<AbstractC2458y0> arrayList5 = c2183b32.f7974o.f8309s;
                C2427v2 c2427v2 = new C2427v2(c2183b32);
                C2408t.m3594a("TextView.set_typeface", c2427v2);
                arrayList5.add(c2427v2);
                ArrayList<AbstractC2458y0> arrayList6 = c2183b32.f7974o.f8309s;
                C2434w2 c2434w2 = new C2434w2(c2183b32);
                C2408t.m3594a("TextView.set_font_size", c2434w2);
                arrayList6.add(c2434w2);
                ArrayList<AbstractC2458y0> arrayList7 = c2183b32.f7974o.f8309s;
                C2440x2 c2440x2 = new C2440x2(c2183b32);
                C2408t.m3594a("TextView.set_font_style", c2440x2);
                arrayList7.add(c2440x2);
                ArrayList<AbstractC2458y0> arrayList8 = c2183b32.f7974o.f8309s;
                C2460y2 c2460y2 = new C2460y2(c2183b32);
                C2408t.m3594a("TextView.get_text", c2460y2);
                arrayList8.add(c2460y2);
                ArrayList<AbstractC2458y0> arrayList9 = c2183b32.f7974o.f8309s;
                C2465z2 c2465z2 = new C2465z2(c2183b32);
                C2408t.m3594a("TextView.set_text", c2465z2);
                arrayList9.add(c2465z2);
                ArrayList<AbstractC2458y0> arrayList10 = c2183b32.f7974o.f8309s;
                C2392q2 c2392q2 = new C2392q2(c2183b32);
                C2408t.m3594a("TextView.align", c2392q2);
                arrayList10.add(c2392q2);
                c2183b32.f7974o.f8310t.add("TextView.set_visible");
                c2183b32.f7974o.f8310t.add("TextView.set_bounds");
                c2183b32.f7974o.f8310t.add("TextView.set_font_color");
                c2183b32.f7974o.f8310t.add("TextView.set_background_color");
                c2183b32.f7974o.f8310t.add("TextView.set_typeface");
                c2183b32.f7974o.f8310t.add("TextView.set_font_size");
                c2183b32.f7974o.f8310t.add("TextView.set_font_style");
                c2183b32.f7974o.f8310t.add("TextView.get_text");
                c2183b32.f7974o.f8310t.add("TextView.set_text");
                c2183b32.f7974o.f8310t.add("TextView.align");
                c2322j0.f8294d.put(Integer.valueOf(m3735r), c2183b32);
                c2322j0.f8297g.put(Integer.valueOf(m3735r), c2183b32);
                c2322j0.f8296f.put(Integer.valueOf(m3735r), Boolean.TRUE);
                c2183b3 = c2183b32;
            } else if (!C2227e4.m3741l(c2267f4, "button")) {
                C2256f3 c2256f3 = new C2256f3(c2322j0.f8315y, c2410t0, m3735r, c2322j0);
                c2256f3.m3713b();
                c2322j0.f8292b.put(Integer.valueOf(m3735r), c2256f3);
                c2322j0.f8297g.put(Integer.valueOf(m3735r), c2256f3);
                c2322j0.f8296f.put(Integer.valueOf(m3735r), Boolean.FALSE);
                c2183b3 = c2256f3;
            } else {
                C2256f3 c2256f32 = new C2256f3(c2322j0.f8315y, 16974145, c2410t0, m3735r, c2322j0);
                c2256f32.m3713b();
                c2322j0.f8292b.put(Integer.valueOf(m3735r), c2256f32);
                c2322j0.f8297g.put(Integer.valueOf(m3735r), c2256f32);
                c2322j0.f8296f.put(Integer.valueOf(m3735r), Boolean.FALSE);
                c2183b3 = c2256f32;
            }
            EnumC0038e enumC0038e = EnumC0038e.OTHER;
            AbstractC0081a abstractC0081a = c2322j0.f8314x;
            if (abstractC0081a == null) {
                return;
            }
            try {
                abstractC0081a.mo8766f(c2183b3, enumC0038e, null);
            } catch (RuntimeException e) {
            }
        }
    }
}
