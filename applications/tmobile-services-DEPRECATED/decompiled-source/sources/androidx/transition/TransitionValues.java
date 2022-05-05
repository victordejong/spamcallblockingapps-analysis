package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/transition/TransitionValues.class */
public class TransitionValues {

    /* renamed from: b */
    public View f5272b;

    /* renamed from: a */
    public final Map<String, Object> f5271a = new HashMap();

    /* renamed from: c */
    final ArrayList<Transition> f5273c = new ArrayList<>();

    @Deprecated
    public TransitionValues() {
    }

    public TransitionValues(@NonNull View view) {
        this.f5272b = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TransitionValues)) {
            return false;
        }
        TransitionValues transitionValues = (TransitionValues) obj;
        return this.f5272b == transitionValues.f5272b && this.f5271a.equals(transitionValues.f5271a);
    }

    public int hashCode() {
        return (this.f5272b.hashCode() * 31) + this.f5271a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f5272b + "\n") + "    values:";
        for (String str2 : this.f5271a.keySet()) {
            str = str + "    " + str2 + ": " + this.f5271a.get(str2) + "\n";
        }
        return str;
    }
}
