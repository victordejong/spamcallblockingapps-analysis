package p000;

import android.view.MotionEvent;
/* renamed from: xc1 */
/* loaded from: classes3-dex2jar.jar:xc1.class */
public class xc1 extends rc1 {

    /* renamed from: b */
    public int f8682b = 0;

    public xc1(hc1 hc1Var) {
    }

    @Override // p000.gc1
    /* renamed from: b */
    public void mo32b(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f8682b = 1;
        }
        if (actionMasked == 5) {
            this.f8682b++;
        }
    }

    @Override // p000.rc1
    /* renamed from: c */
    public float mo31c() {
        return yc1.m86a(this.f8682b);
    }
}
