package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/transition/x.class */
public final class x {

    /* renamed from: b  reason: collision with root package name */
    public View f5853b;

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, Object> f5852a = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    final ArrayList<Transition> f5854c = new ArrayList<>();

    @Deprecated
    public x() {
    }

    public x(View view) {
        this.f5853b = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.f5853b == xVar.f5853b && this.f5852a.equals(xVar.f5852a);
    }

    public final int hashCode() {
        return (this.f5853b.hashCode() * 31) + this.f5852a.hashCode();
    }

    public final String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f5853b + StringUtils.LF) + "    values:";
        for (String str2 : this.f5852a.keySet()) {
            str = str + "    " + str2 + ": " + this.f5852a.get(str2) + StringUtils.LF;
        }
        return str;
    }
}
