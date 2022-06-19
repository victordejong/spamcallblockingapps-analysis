package p068d2;

import android.widget.FrameLayout;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Objects;
/* renamed from: d2.v3 */
/* loaded from: classes-dex2jar.jar:d2/v3.class */
public class C2428v3 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2191c4 f8595a;

    public C2428v3(C2191c4 c2191c4) {
        this.f8595a = c2191c4;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (C2191c4.m3774a(this.f8595a, c2410t0)) {
            C2191c4 c2191c4 = this.f8595a;
            Objects.requireNonNull(c2191c4);
            C2267f4 c2267f4 = c2410t0.f8537b;
            c2191c4.f7990b = C2227e4.m3735r(c2267f4, "x");
            c2191c4.f7991c = C2227e4.m3735r(c2267f4, "y");
            c2191c4.f7992d = C2227e4.m3735r(c2267f4, "width");
            c2191c4.f7993e = C2227e4.m3735r(c2267f4, "height");
            if (c2191c4.f7994f) {
                float m4794c = (c2191c4.f7993e * C1676a.m4794c()) / c2191c4.getDrawable().getIntrinsicHeight();
                c2191c4.f7993e = (int) (c2191c4.getDrawable().getIntrinsicHeight() * m4794c);
                int intrinsicWidth = (int) (c2191c4.getDrawable().getIntrinsicWidth() * m4794c);
                c2191c4.f7992d = intrinsicWidth;
                c2191c4.f7990b -= intrinsicWidth;
                c2191c4.f7991c -= c2191c4.f7993e;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) c2191c4.getLayoutParams();
            layoutParams.setMargins(c2191c4.f7990b, c2191c4.f7991c, 0, 0);
            layoutParams.width = c2191c4.f7992d;
            layoutParams.height = c2191c4.f7993e;
            c2191c4.setLayoutParams(layoutParams);
        }
    }
}
