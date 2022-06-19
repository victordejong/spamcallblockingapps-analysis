package androidx.lifecycle;

import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.o */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/o.class */
public class C0909o {

    /* renamed from: a */
    private Map<String, Integer> f2862a = new HashMap();

    /* renamed from: a */
    public boolean m5085a(String str, int i) {
        Integer num = this.f2862a.get(str);
        boolean z = false;
        int intValue = num != null ? num.intValue() : 0;
        if ((intValue & i) != 0) {
            z = true;
        }
        this.f2862a.put(str, Integer.valueOf(i | intValue));
        return !z;
    }
}
