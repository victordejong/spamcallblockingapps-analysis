package androidx.p045j;

import android.view.View;
import android.view.WindowId;
/* renamed from: androidx.j.al */
/* loaded from: classes-dex2jar.jar:androidx/j/al.class */
class C0806al implements AbstractC0807am {

    /* renamed from: a */
    private final WindowId f2595a;

    public C0806al(View view) {
        this.f2595a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0806al) && ((C0806al) obj).f2595a.equals(this.f2595a);
    }

    public int hashCode() {
        return this.f2595a.hashCode();
    }
}
