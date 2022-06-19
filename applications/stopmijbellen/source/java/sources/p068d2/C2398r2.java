package p068d2;

import java.util.Objects;
/* renamed from: d2.r2 */
/* loaded from: classes-dex2jar.jar:d2/r2.class */
public class C2398r2 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2183b3 f8470a;

    public C2398r2(C2183b3 c2183b3) {
        this.f8470a = c2183b3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f8470a.m3775b(c2410t0)) {
            C2183b3 c2183b3 = this.f8470a;
            Objects.requireNonNull(c2183b3);
            if (C2227e4.m3741l(c2410t0.f8537b, "visible")) {
                c2183b3.setVisibility(0);
            } else {
                c2183b3.setVisibility(4);
            }
        }
    }
}
