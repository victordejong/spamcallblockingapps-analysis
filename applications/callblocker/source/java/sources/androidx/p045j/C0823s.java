package androidx.p045j;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.j.s */
/* loaded from: classes-dex2jar.jar:androidx/j/s.class */
public class C0823s {

    /* renamed from: b */
    public View f2823b;

    /* renamed from: a */
    public final Map<String, Object> f2822a = new HashMap();

    /* renamed from: c */
    final ArrayList<AbstractC0807m> f2824c = new ArrayList<>();

    @Deprecated
    public C0823s() {
    }

    public C0823s(View view) {
        this.f2823b = view;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0823s) && this.f2823b == ((C0823s) obj).f2823b && this.f2822a.equals(((C0823s) obj).f2822a);
    }

    public int hashCode() {
        return (this.f2823b.hashCode() * 31) + this.f2822a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f2823b + "\n") + "    values:";
        for (String str2 : this.f2822a.keySet()) {
            str = str + "    " + str2 + ": " + this.f2822a.get(str2) + "\n";
        }
        return str;
    }
}
