package p068d2;

import java.util.Objects;
/* renamed from: d2.u2 */
/* loaded from: classes-dex2jar.jar:d2/u2.class */
public class C2422u2 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2183b3 f8583a;

    public C2422u2(C2183b3 c2183b3) {
        this.f8583a = c2183b3;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f8583a.m3775b(c2410t0)) {
            C2183b3 c2183b3 = this.f8583a;
            Objects.requireNonNull(c2183b3);
            String m3697o = c2410t0.f8537b.m3697o("background_color");
            c2183b3.f7971l = m3697o;
            c2183b3.setBackgroundColor(C2315i3.m3675B(m3697o));
        }
    }
}
