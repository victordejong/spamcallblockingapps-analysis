package androidx.p045j;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.j.t */
/* loaded from: classes-dex2jar.jar:androidx/j/t.class */
public class C0855t {

    /* renamed from: b */
    public View f2698b;

    /* renamed from: a */
    public final Map<String, Object> f2697a = new HashMap();

    /* renamed from: c */
    final ArrayList<AbstractC0838n> f2699c = new ArrayList<>();

    public boolean equals(Object obj) {
        if (obj instanceof C0855t) {
            C0855t c0855t = (C0855t) obj;
            return this.f2698b == c0855t.f2698b && this.f2697a.equals(c0855t.f2697a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f2698b.hashCode() * 31) + this.f2697a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f2698b + "\n") + "    values:";
        for (String str2 : this.f2697a.keySet()) {
            str = str + "    " + str2 + ": " + this.f2697a.get(str2) + "\n";
        }
        return str;
    }
}
