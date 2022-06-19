package p068d2;

import java.util.Objects;
/* renamed from: d2.q2 */
/* loaded from: classes-dex2jar.jar:d2/q2.class */
public class C2392q2 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2183b3 f8458a;

    public C2392q2(C2183b3 c2183b3) {
        this.f8458a = c2183b3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f8458a.m3775b(c2410t0)) {
            C2183b3 c2183b3 = this.f8458a;
            Objects.requireNonNull(c2183b3);
            C2267f4 c2267f4 = c2410t0.f8537b;
            c2183b3.f7968i = C2227e4.m3735r(c2267f4, "x");
            c2183b3.f7969j = C2227e4.m3735r(c2267f4, "y");
            c2183b3.setGravity(c2183b3.m3776a(true, c2183b3.f7968i) | c2183b3.m3776a(false, c2183b3.f7969j));
        }
    }
}
