package p000;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: bt$e */
/* loaded from: classes-dex2jar.jar:bt$e.class */
public final class bt$e {

    /* renamed from: a */
    public final Map<String, String> f2003a = new HashMap();

    /* renamed from: b */
    public Map<String, String> f2004b;

    /* renamed from: a */
    public Map<String, String> m5590a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f2004b == null) {
                this.f2004b = Collections.unmodifiableMap(new HashMap(this.f2003a));
            }
            map = this.f2004b;
        }
        return map;
    }
}
