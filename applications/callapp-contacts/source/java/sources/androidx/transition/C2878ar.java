package androidx.transition;

import android.view.View;
import android.view.WindowId;
/* renamed from: androidx.transition.ar */
/* loaded from: classes-dex2jar.jar:androidx/transition/ar.class */
final class C2878ar implements AbstractC2879as {

    /* renamed from: a */
    private final WindowId f10848a;

    public C2878ar(View view) {
        this.f10848a = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C2878ar) && ((C2878ar) obj).f10848a.equals(this.f10848a);
    }

    public final int hashCode() {
        return this.f10848a.hashCode();
    }
}
