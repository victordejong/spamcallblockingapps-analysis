package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.transition.x */
/* loaded from: classes-dex2jar.jar:androidx/transition/x.class */
public final class C2914x {

    /* renamed from: b */
    public View f10934b;

    /* renamed from: a */
    public final Map<String, Object> f10933a = new HashMap();

    /* renamed from: c */
    final ArrayList<Transition> f10935c = new ArrayList<>();

    @Deprecated
    public C2914x() {
    }

    public C2914x(View view) {
        this.f10934b = view;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2914x) {
            C2914x c2914x = (C2914x) obj;
            return this.f10934b == c2914x.f10934b && this.f10933a.equals(c2914x.f10933a);
        }
        return false;
    }

    public final int hashCode() {
        return (this.f10934b.hashCode() * 31) + this.f10933a.hashCode();
    }

    public final String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f10934b + StringUtils.f67179LF) + "    values:";
        for (String str2 : this.f10933a.keySet()) {
            str = str + "    " + str2 + ": " + this.f10933a.get(str2) + StringUtils.f67179LF;
        }
        return str;
    }
}
