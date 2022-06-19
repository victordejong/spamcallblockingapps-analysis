package p068d2;

import java.util.Objects;
/* renamed from: d2.x2 */
/* loaded from: classes-dex2jar.jar:d2/x2.class */
public class C2440x2 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2183b3 f8626a;

    public C2440x2(C2183b3 c2183b3) {
        this.f8626a = c2183b3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f8626a.m3775b(c2410t0)) {
            C2183b3 c2183b3 = this.f8626a;
            Objects.requireNonNull(c2183b3);
            int m3735r = C2227e4.m3735r(c2410t0.f8537b, "font_style");
            c2183b3.f7965f = m3735r;
            if (m3735r == 0) {
                c2183b3.setTypeface(c2183b3.getTypeface(), 0);
            } else if (m3735r == 1) {
                c2183b3.setTypeface(c2183b3.getTypeface(), 1);
            } else if (m3735r == 2) {
                c2183b3.setTypeface(c2183b3.getTypeface(), 2);
            } else if (m3735r != 3) {
            } else {
                c2183b3.setTypeface(c2183b3.getTypeface(), 3);
            }
        }
    }
}
