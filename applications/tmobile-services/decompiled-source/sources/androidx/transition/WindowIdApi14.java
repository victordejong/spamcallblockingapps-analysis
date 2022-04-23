package androidx.transition;

import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:androidx/transition/WindowIdApi14.class */
class WindowIdApi14 implements WindowIdImpl {

    /* renamed from: a */
    private final IBinder f5336a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WindowIdApi14(IBinder iBinder) {
        this.f5336a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof WindowIdApi14) && ((WindowIdApi14) obj).f5336a.equals(this.f5336a);
    }

    public int hashCode() {
        return this.f5336a.hashCode();
    }
}
