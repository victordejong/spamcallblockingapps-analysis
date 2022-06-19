package p1727n3.p1874y.p1876b.p1877a.p1903w0;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: n3.y.b.a.w0.y */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/y.class */
public final class C27412y {

    /* renamed from: a */
    public final Map<String, String> f77146a = new HashMap();

    /* renamed from: b */
    public Map<String, String> f77147b;

    /* renamed from: a */
    public Map<String, String> m379a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f77147b == null) {
                this.f77147b = Collections.unmodifiableMap(new HashMap(this.f77146a));
            }
            map = this.f77147b;
        }
        return map;
    }
}
