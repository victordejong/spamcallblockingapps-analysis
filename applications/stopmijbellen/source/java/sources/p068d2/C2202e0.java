package p068d2;

import android.net.Uri;
import android.support.p012v4.media.AbstractC0081a;
import android.widget.FrameLayout;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import java.util.ArrayList;
import java.util.Objects;
import p008a7.EnumC0038e;
/* renamed from: d2.e0 */
/* loaded from: classes-dex2jar.jar:d2/e0.class */
public class C2202e0 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2322j0 f8028a;

    public C2202e0(C2322j0 c2322j0) {
        this.f8028a = c2322j0;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f8028a.m3639b(c2410t0)) {
            C2322j0 c2322j0 = this.f8028a;
            Objects.requireNonNull(c2322j0);
            int m3735r = C2227e4.m3735r(c2410t0.f8537b, FacebookAdapter.KEY_ID);
            C2191c4 c2191c4 = new C2191c4(c2322j0.f8315y, c2410t0, m3735r, c2322j0);
            C2267f4 c2267f4 = c2191c4.f7999k.f8537b;
            c2191c4.f7998j = c2267f4.m3697o("ad_session_id");
            c2191c4.f7990b = C2227e4.m3735r(c2267f4, "x");
            c2191c4.f7991c = C2227e4.m3735r(c2267f4, "y");
            c2191c4.f7992d = C2227e4.m3735r(c2267f4, "width");
            c2191c4.f7993e = C2227e4.m3735r(c2267f4, "height");
            c2191c4.f7997i = c2267f4.m3697o("filepath");
            c2191c4.f7994f = C2227e4.m3741l(c2267f4, "dpi");
            c2191c4.f7995g = C2227e4.m3741l(c2267f4, "invert_y");
            c2191c4.f7996h = C2227e4.m3741l(c2267f4, "wrap_content");
            c2191c4.setImageURI(Uri.fromFile(new File(c2191c4.f7997i)));
            if (c2191c4.f7994f) {
                float m4794c = (c2191c4.f7993e * C1676a.m4794c()) / c2191c4.getDrawable().getIntrinsicHeight();
                c2191c4.f7993e = (int) (c2191c4.getDrawable().getIntrinsicHeight() * m4794c);
                int intrinsicWidth = (int) (c2191c4.getDrawable().getIntrinsicWidth() * m4794c);
                c2191c4.f7992d = intrinsicWidth;
                c2191c4.f7990b -= intrinsicWidth;
                c2191c4.f7991c = c2191c4.f7995g ? c2191c4.f7991c + c2191c4.f7993e : c2191c4.f7991c - c2191c4.f7993e;
            }
            c2191c4.setVisibility(4);
            FrameLayout.LayoutParams layoutParams = c2191c4.f7996h ? new FrameLayout.LayoutParams(-2, -2) : new FrameLayout.LayoutParams(c2191c4.f7992d, c2191c4.f7993e);
            layoutParams.setMargins(c2191c4.f7990b, c2191c4.f7991c, 0, 0);
            layoutParams.gravity = 0;
            c2191c4.f8000l.addView(c2191c4, layoutParams);
            ArrayList<AbstractC2458y0> arrayList = c2191c4.f8000l.f8309s;
            C2423u3 c2423u3 = new C2423u3(c2191c4);
            C2408t.m3594a("ImageView.set_visible", c2423u3);
            arrayList.add(c2423u3);
            ArrayList<AbstractC2458y0> arrayList2 = c2191c4.f8000l.f8309s;
            C2428v3 c2428v3 = new C2428v3(c2191c4);
            C2408t.m3594a("ImageView.set_bounds", c2428v3);
            arrayList2.add(c2428v3);
            ArrayList<AbstractC2458y0> arrayList3 = c2191c4.f8000l.f8309s;
            C2435w3 c2435w3 = new C2435w3(c2191c4);
            C2408t.m3594a("ImageView.set_image", c2435w3);
            arrayList3.add(c2435w3);
            c2191c4.f8000l.f8310t.add("ImageView.set_visible");
            c2191c4.f8000l.f8310t.add("ImageView.set_bounds");
            c2191c4.f8000l.f8310t.add("ImageView.set_image");
            c2322j0.f8295e.put(Integer.valueOf(m3735r), c2191c4);
            c2322j0.f8297g.put(Integer.valueOf(m3735r), c2191c4);
            EnumC0038e enumC0038e = EnumC0038e.OTHER;
            AbstractC0081a abstractC0081a = c2322j0.f8314x;
            if (abstractC0081a == null) {
                return;
            }
            try {
                abstractC0081a.mo8766f(c2191c4, enumC0038e, null);
            } catch (RuntimeException e) {
            }
        }
    }
}
