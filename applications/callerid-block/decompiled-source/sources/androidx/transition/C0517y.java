package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.transition.y */
/* loaded from: classes-dex2jar.jar:androidx/transition/y.class */
public class C0517y {

    /* renamed from: b */
    public View f2778b;

    /* renamed from: a */
    public final Map<String, Object> f2777a = new HashMap();

    /* renamed from: c */
    final ArrayList<Transition> f2779c = new ArrayList<>();

    @Deprecated
    public C0517y() {
    }

    public C0517y(View view) {
        this.f2778b = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0517y)) {
            return false;
        }
        C0517y yVar = (C0517y) obj;
        return this.f2778b == yVar.f2778b && this.f2777a.equals(yVar.f2777a);
    }

    public int hashCode() {
        return (this.f2778b.hashCode() * 31) + this.f2777a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f2778b + "\n") + "    values:";
        for (String str2 : this.f2777a.keySet()) {
            str = str + "    " + str2 + ": " + this.f2777a.get(str2) + "\n";
        }
        return str;
    }
}
