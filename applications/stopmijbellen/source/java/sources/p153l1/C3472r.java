package p153l1;

import android.annotation.SuppressLint;
import android.view.View;
import p291y.C4951d;
/* renamed from: l1.r */
/* loaded from: classes-dex2jar.jar:l1/r.class */
public class C3472r extends C4951d {

    /* renamed from: j */
    public static boolean f11573j = true;

    @Override // p291y.C4951d
    /* renamed from: d */
    public void mo199d(View view) {
    }

    @Override // p291y.C4951d
    @SuppressLint({"NewApi"})
    /* renamed from: h */
    public float mo195h(View view) {
        if (f11573j) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError e) {
                f11573j = false;
            }
        }
        return view.getAlpha();
    }

    @Override // p291y.C4951d
    /* renamed from: j */
    public void mo193j(View view) {
    }

    @Override // p291y.C4951d
    @SuppressLint({"NewApi"})
    /* renamed from: l */
    public void mo191l(View view, float f) {
        if (f11573j) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError e) {
                f11573j = false;
            }
        }
        view.setAlpha(f);
    }
}
