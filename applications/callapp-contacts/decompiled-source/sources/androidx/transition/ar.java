package androidx.transition;

import android.view.View;
import android.view.WindowId;
/* loaded from: classes-dex2jar.jar:androidx/transition/ar.class */
final class ar implements as {

    /* renamed from: a  reason: collision with root package name */
    private final WindowId f5787a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(View view) {
        this.f5787a = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ar) && ((ar) obj).f5787a.equals(this.f5787a);
    }

    public final int hashCode() {
        return this.f5787a.hashCode();
    }
}
