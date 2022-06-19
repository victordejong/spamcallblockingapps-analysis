package p086f;

import android.os.Build;
import android.view.View;
import p087f0.C2695b;
import p163m0.AbstractC3580m;
import p163m0.C3551b0;
import p163m0.C3589v;
/* renamed from: f.n */
/* loaded from: classes-dex2jar.jar:f/n.class */
public class C2669n implements AbstractC3580m {

    /* renamed from: a */
    public final /* synthetic */ LayoutInflater$Factory2C2654m f9183a;

    public C2669n(LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m) {
        this.f9183a = layoutInflater$Factory2C2654m;
    }

    @Override // p163m0.AbstractC3580m
    /* renamed from: a */
    public C3551b0 mo686a(View view, C3551b0 c3551b0) {
        int m2178e = c3551b0.m2178e();
        int m3336a0 = this.f9183a.m3336a0(c3551b0, null);
        C3551b0 c3551b02 = c3551b0;
        if (m2178e != m3336a0) {
            int m2180c = c3551b0.m2180c();
            int m2179d = c3551b0.m2179d();
            int m2181b = c3551b0.m2181b();
            int i = Build.VERSION.SDK_INT;
            C3551b0.C3555d c3555d = i >= 30 ? new C3551b0.C3555d(c3551b0) : i >= 29 ? new C3551b0.C3554c(c3551b0) : new C3551b0.C3553b(c3551b0);
            c3555d.mo2168d(C2695b.m3253a(m2180c, m3336a0, m2179d, m2181b));
            c3551b02 = c3555d.mo2170b();
        }
        return C3589v.m2108p(view, c3551b02);
    }
}
