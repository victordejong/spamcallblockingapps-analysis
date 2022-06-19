package androidx.p045j;

import android.view.View;
import android.view.WindowId;
/* renamed from: androidx.j.al */
/* loaded from: classes-dex2jar.jar:androidx/j/al.class */
class C0776al implements AbstractC0777am {

    /* renamed from: a */
    private final WindowId f2695a;

    public C0776al(View view) {
        this.f2695a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0776al) && ((C0776al) obj).f2695a.equals(this.f2695a);
    }

    public int hashCode() {
        return this.f2695a.hashCode();
    }
}
