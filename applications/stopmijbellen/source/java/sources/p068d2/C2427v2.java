package p068d2;

import android.graphics.Typeface;
import java.util.Objects;
/* renamed from: d2.v2 */
/* loaded from: classes-dex2jar.jar:d2/v2.class */
public class C2427v2 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2183b3 f8594a;

    public C2427v2(C2183b3 c2183b3) {
        this.f8594a = c2183b3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f8594a.m3775b(c2410t0)) {
            C2183b3 c2183b3 = this.f8594a;
            Objects.requireNonNull(c2183b3);
            int m3735r = C2227e4.m3735r(c2410t0.f8537b, "font_family");
            c2183b3.f7966g = m3735r;
            if (m3735r == 0) {
                c2183b3.setTypeface(Typeface.DEFAULT);
            } else if (m3735r == 1) {
                c2183b3.setTypeface(Typeface.SERIF);
            } else if (m3735r == 2) {
                c2183b3.setTypeface(Typeface.SANS_SERIF);
            } else if (m3735r != 3) {
            } else {
                c2183b3.setTypeface(Typeface.MONOSPACE);
            }
        }
    }
}
