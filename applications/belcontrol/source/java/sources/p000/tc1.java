package p000;

import android.content.Context;
import android.hardware.SensorEvent;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
/* renamed from: tc1 */
/* loaded from: classes3-dex2jar.jar:tc1.class */
public class tc1 extends gc1 {

    /* renamed from: b */
    public final id1[] f8220b;

    /* renamed from: c */
    public final rc1[] f8221c;

    /* renamed from: d */
    public final sc1 f8222d = new sc1();

    /* renamed from: e */
    public final boolean f8223e = true;

    public tc1(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.f6693a = new hc1((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f, displayMetrics.heightPixels);
        dc1 dc1Var = new dc1(this.f6693a);
        hc1 hc1Var = this.f6693a;
        dd1 dd1Var = new dd1(hc1Var);
        kc1 kc1Var = new kc1(hc1Var);
        oc1 oc1Var = new oc1(hc1Var);
        mc1 mc1Var = new mc1(hc1Var);
        cc1 cc1Var = new cc1(hc1Var);
        bd1 bd1Var = new bd1(this.f6693a);
        hc1 hc1Var2 = this.f6693a;
        this.f8220b = new id1[]{dc1Var, dd1Var, kc1Var, oc1Var, mc1Var, cc1Var, bd1Var, new uc1(hc1Var2), new ic1(hc1Var2)};
        this.f8221c = new rc1[]{new xc1(hc1Var2), new zc1(hc1Var2)};
    }

    @Override // p000.gc1
    /* renamed from: a */
    public void mo33a(SensorEvent sensorEvent) {
        for (id1 id1Var : this.f8220b) {
            id1Var.mo33a(sensorEvent);
        }
        for (rc1 rc1Var : this.f8221c) {
            rc1Var.mo33a(sensorEvent);
        }
    }

    @Override // p000.gc1
    /* renamed from: b */
    public void mo32b(MotionEvent motionEvent) {
        m515c(motionEvent);
    }

    /* renamed from: c */
    public final void m515c(MotionEvent motionEvent) {
        this.f6693a.m1631d(motionEvent);
        for (id1 id1Var : this.f8220b) {
            id1Var.mo32b(motionEvent);
        }
        for (rc1 rc1Var : this.f8221c) {
            rc1Var.mo32b(motionEvent);
        }
        int size = this.f6693a.m1633b().size();
        int i = 0;
        while (true) {
            float f = 0.0f;
            if (i >= size) {
                break;
            }
            hd1 hd1Var = this.f6693a.m1633b().get(i);
            for (id1 id1Var2 : this.f8220b) {
                f += id1Var2.mo398c(hd1Var);
            }
            this.f8222d.m579b(f);
            i++;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            float f2 = 0.0f;
            for (rc1 rc1Var2 : this.f8221c) {
                f2 += rc1Var2.mo31c();
            }
            this.f8222d.m580a(f2);
        }
        this.f6693a.m1634a(motionEvent);
    }

    /* renamed from: d */
    public boolean m514d() {
        return this.f8223e;
    }
}
