package androidx.transition;

import android.view.View;
import android.view.WindowId;
/* renamed from: androidx.transition.s0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/s0.class */
class C1165s0 implements AbstractC1167t0 {

    /* renamed from: a */
    private final WindowId f4970a;

    public C1165s0(View view) {
        this.f4970a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C1165s0) && ((C1165s0) obj).f4970a.equals(this.f4970a);
    }

    public int hashCode() {
        return this.f4970a.hashCode();
    }
}
