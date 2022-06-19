package p1727n3.p1789g0;

import android.view.View;
import android.view.WindowId;
/* renamed from: n3.g0.j0 */
/* loaded from: classes-dex2jar.jar:n3/g0/j0.class */
public class C26212j0 implements AbstractC26213k0 {

    /* renamed from: a */
    public final WindowId f73077a;

    public C26212j0(View view) {
        this.f73077a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C26212j0) && ((C26212j0) obj).f73077a.equals(this.f73077a);
    }

    public int hashCode() {
        return this.f73077a.hashCode();
    }
}
