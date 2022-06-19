package p068d2;

import java.util.Objects;
/* renamed from: d2.u3 */
/* loaded from: classes-dex2jar.jar:d2/u3.class */
public class C2423u3 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2191c4 f8584a;

    public C2423u3(C2191c4 c2191c4) {
        this.f8584a = c2191c4;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (C2191c4.m3774a(this.f8584a, c2410t0)) {
            C2191c4 c2191c4 = this.f8584a;
            Objects.requireNonNull(c2191c4);
            if (C2227e4.m3741l(c2410t0.f8537b, "visible")) {
                c2191c4.setVisibility(0);
            } else {
                c2191c4.setVisibility(4);
            }
        }
    }
}
