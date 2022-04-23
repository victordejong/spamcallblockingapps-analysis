package androidx.transition;

import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:androidx/transition/aq.class */
final class aq implements as {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f5786a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(IBinder iBinder) {
        this.f5786a = iBinder;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof aq) && ((aq) obj).f5786a.equals(this.f5786a);
    }

    public final int hashCode() {
        return this.f5786a.hashCode();
    }
}
