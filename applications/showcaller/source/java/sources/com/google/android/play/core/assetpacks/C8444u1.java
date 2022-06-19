package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC8509p0;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8480d0;
import java.io.File;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
/* renamed from: com.google.android.play.core.assetpacks.u1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/u1.class */
public final class C8444u1 {

    /* renamed from: a */
    private static final C8466a f37944a = new C8466a("PatchSliceTaskHandler");

    /* renamed from: b */
    private final C8446v f37945b;

    /* renamed from: c */
    private final AbstractC8509p0<AbstractC8433r2> f37946c;

    public C8444u1(C8446v c8446v, AbstractC8509p0<AbstractC8433r2> abstractC8509p0) {
        this.f37945b = c8446v;
        this.f37946c = abstractC8509p0;
    }

    /* renamed from: a */
    public final void m3673a(C8440t1 c8440t1) {
        File m3642t = this.f37945b.m3642t(c8440t1.f37669b, c8440t1.f37929c, c8440t1.f37930d);
        File file = new File(this.f37945b.m3641u(c8440t1.f37669b, c8440t1.f37929c, c8440t1.f37930d), c8440t1.f37934h);
        try {
            GZIPInputStream gZIPInputStream = c8440t1.f37936j;
            if (c8440t1.f37933g == 2) {
                gZIPInputStream = new GZIPInputStream(gZIPInputStream, 8192);
            }
            C8452x c8452x = new C8452x(m3642t, file);
            File m3640v = this.f37945b.m3640v(c8440t1.f37669b, c8440t1.f37931e, c8440t1.f37932f, c8440t1.f37934h);
            if (!m3640v.exists()) {
                m3640v.mkdirs();
            }
            C8451w1 c8451w1 = new C8451w1(this.f37945b, c8440t1.f37669b, c8440t1.f37931e, c8440t1.f37932f, c8440t1.f37934h);
            C8480d0.m3540l(c8452x, gZIPInputStream, new C8411m0(m3640v, c8451w1), c8440t1.f37935i);
            c8451w1.m3627d(0);
            gZIPInputStream.close();
            f37944a.m3564d("Patching and extraction finished for slice %s of pack %s.", c8440t1.f37934h, c8440t1.f37669b);
            this.f37946c.m3482a().mo3683c(c8440t1.f37668a, c8440t1.f37669b, c8440t1.f37934h, 0);
            try {
                c8440t1.f37936j.close();
            } catch (IOException e) {
                f37944a.m3563e("Could not close file for slice %s of pack %s.", c8440t1.f37934h, c8440t1.f37669b);
            }
        } catch (IOException e2) {
            f37944a.m3566b("IOException during patching %s.", e2.getMessage());
            throw new C8369bk(String.format("Error patching slice %s of pack %s.", c8440t1.f37934h, c8440t1.f37669b), e2, c8440t1.f37668a);
        }
    }
}
