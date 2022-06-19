package p086f;

import android.view.View;
import java.util.WeakHashMap;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: f.q */
/* loaded from: classes-dex2jar.jar:f/q.class */
public class C2673q extends C3260w0 {

    /* renamed from: N */
    public final /* synthetic */ LayoutInflater$Factory2C2654m f9187N;

    public C2673q(LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m) {
        this.f9187N = layoutInflater$Factory2C2654m;
    }

    @Override // p163m0.AbstractC3614z
    /* renamed from: c */
    public void mo1976c(View view) {
        this.f9187N.f9138o.setAlpha(1.0f);
        this.f9187N.f9141r.m1981d(null);
        this.f9187N.f9141r = null;
    }

    @Override // p134j4.C3260w0, p163m0.AbstractC3614z
    /* renamed from: d */
    public void mo1975d(View view) {
        this.f9187N.f9138o.setVisibility(0);
        if (this.f9187N.f9138o.getParent() instanceof View) {
            View view2 = (View) this.f9187N.f9138o.getParent();
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3597h.m2051c(view2);
        }
    }
}
