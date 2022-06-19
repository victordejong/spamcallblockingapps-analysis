package p134j4;

import java.io.File;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import p189o4.AbstractC3879p;
import p189o4.C3876m;
import p201p6.C4018c;
/* renamed from: j4.v1 */
/* loaded from: classes-dex2jar.jar:j4/v1.class */
public final class C3258v1 {

    /* renamed from: c */
    public static final C4018c f11001c = new C4018c("PatchSliceTaskHandler");

    /* renamed from: a */
    public final C3259w f11002a;

    /* renamed from: b */
    public final AbstractC3879p f11003b;

    public C3258v1(C3259w c3259w, AbstractC3879p abstractC3879p) {
        this.f11002a = c3259w;
        this.f11003b = abstractC3879p;
    }

    /* renamed from: a */
    public final void m2503a(C3255u1 c3255u1) {
        File m2489n = this.f11002a.m2489n(c3255u1.f10747b, c3255u1.f10992c, c3255u1.f10993d);
        File file = new File(this.f11002a.m2488o(c3255u1.f10747b, c3255u1.f10992c, c3255u1.f10993d), c3255u1.f10997h);
        try {
            GZIPInputStream gZIPInputStream = c3255u1.f10999j;
            if (c3255u1.f10996g == 2) {
                gZIPInputStream = new GZIPInputStream(gZIPInputStream, 8192);
            }
            C3265y c3265y = new C3265y(m2489n, file);
            File m2484s = this.f11002a.m2484s(c3255u1.f10747b, c3255u1.f10994e, c3255u1.f10995f, c3255u1.f10997h);
            if (!m2484s.exists()) {
                m2484s.mkdirs();
            }
            C3270z1 c3270z1 = new C3270z1(this.f11002a, c3255u1.f10747b, c3255u1.f10994e, c3255u1.f10995f, c3255u1.f10997h);
            C3876m.m1742a(c3265y, gZIPInputStream, new C3242q0(m2484s, c3270z1), c3255u1.f10998i);
            c3270z1.m2459h(0);
            gZIPInputStream.close();
            f11001c.m1507e("Patching and extraction finished for slice %s of pack %s.", c3255u1.f10997h, c3255u1.f10747b);
            ((AbstractC3228l2) this.f11003b.zza()).mo2525a(c3255u1.f10746a, c3255u1.f10747b, c3255u1.f10997h, 0);
            try {
                c3255u1.f10999j.close();
            } catch (IOException e) {
                f11001c.m1506f("Could not close file for slice %s of pack %s.", c3255u1.f10997h, c3255u1.f10747b);
            }
        } catch (IOException e2) {
            f11001c.m1509c("IOException during patching %s.", e2.getMessage());
            throw new C3233n0(String.format("Error patching slice %s of pack %s.", c3255u1.f10997h, c3255u1.f10747b), e2, c3255u1.f10746a);
        }
    }
}
