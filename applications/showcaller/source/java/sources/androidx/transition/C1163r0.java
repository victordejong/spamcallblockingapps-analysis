package androidx.transition;

import android.os.IBinder;
/* renamed from: androidx.transition.r0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/r0.class */
class C1163r0 implements AbstractC1167t0 {

    /* renamed from: a */
    private final IBinder f4967a;

    public C1163r0(IBinder iBinder) {
        this.f4967a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C1163r0) && ((C1163r0) obj).f4967a.equals(this.f4967a);
    }

    public int hashCode() {
        return this.f4967a.hashCode();
    }
}
