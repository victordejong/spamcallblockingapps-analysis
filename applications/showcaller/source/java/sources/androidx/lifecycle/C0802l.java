package androidx.lifecycle;

import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.l */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/l.class */
public class C0802l {

    /* renamed from: a */
    private Map<String, Integer> f3715a = new HashMap();

    /* renamed from: a */
    public boolean m32374a(String str, int i) {
        Integer num = this.f3715a.get(str);
        boolean z = false;
        int intValue = num != null ? num.intValue() : 0;
        if ((intValue & i) != 0) {
            z = true;
        }
        this.f3715a.put(str, Integer.valueOf(i | intValue));
        return !z;
    }
}
