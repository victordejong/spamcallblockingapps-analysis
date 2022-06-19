package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.transition.y */
/* loaded from: classes-dex2jar.jar:androidx/transition/y.class */
public class C1175y {

    /* renamed from: b */
    public View f4996b;

    /* renamed from: a */
    public final Map<String, Object> f4995a = new HashMap();

    /* renamed from: c */
    final ArrayList<Transition> f4997c = new ArrayList<>();

    @Deprecated
    public C1175y() {
    }

    public C1175y(View view) {
        this.f4996b = view;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1175y) {
            C1175y c1175y = (C1175y) obj;
            return this.f4996b == c1175y.f4996b && this.f4995a.equals(c1175y.f4995a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f4996b.hashCode() * 31) + this.f4995a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f4996b + "\n") + "    values:";
        for (String str2 : this.f4995a.keySet()) {
            str = str + "    " + str2 + ": " + this.f4995a.get(str2) + "\n";
        }
        return str;
    }
}
