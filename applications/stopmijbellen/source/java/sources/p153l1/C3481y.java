package p153l1;

import android.view.View;
import android.view.WindowId;
/* renamed from: l1.y */
/* loaded from: classes-dex2jar.jar:l1/y.class */
public class C3481y implements AbstractC3482z {

    /* renamed from: a */
    public final WindowId f11596a;

    public C3481y(View view) {
        this.f11596a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C3481y) && ((C3481y) obj).f11596a.equals(this.f11596a);
    }

    public int hashCode() {
        return this.f11596a.hashCode();
    }
}
