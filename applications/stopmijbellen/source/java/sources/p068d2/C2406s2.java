package p068d2;

import android.widget.FrameLayout;
import java.util.Objects;
/* renamed from: d2.s2 */
/* loaded from: classes-dex2jar.jar:d2/s2.class */
public class C2406s2 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2183b3 f8529a;

    public C2406s2(C2183b3 c2183b3) {
        this.f8529a = c2183b3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f8529a.m3775b(c2410t0)) {
            C2183b3 c2183b3 = this.f8529a;
            Objects.requireNonNull(c2183b3);
            C2267f4 c2267f4 = c2410t0.f8537b;
            c2183b3.f7961b = C2227e4.m3735r(c2267f4, "x");
            c2183b3.f7962c = C2227e4.m3735r(c2267f4, "y");
            c2183b3.f7963d = C2227e4.m3735r(c2267f4, "width");
            c2183b3.f7964e = C2227e4.m3735r(c2267f4, "height");
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) c2183b3.getLayoutParams();
            layoutParams.setMargins(c2183b3.f7961b, c2183b3.f7962c, 0, 0);
            layoutParams.width = c2183b3.f7963d;
            layoutParams.height = c2183b3.f7964e;
            c2183b3.setLayoutParams(layoutParams);
        }
    }
}
