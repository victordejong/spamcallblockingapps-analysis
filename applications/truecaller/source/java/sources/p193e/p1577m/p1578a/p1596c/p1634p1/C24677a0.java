package p193e.p1577m.p1578a.p1596c.p1634p1;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: e.m.a.c.p1.a0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/a0.class */
public final class C24677a0 {

    /* renamed from: a */
    public final Map<String, String> f69158a = new HashMap();

    /* renamed from: b */
    public Map<String, String> f69159b;

    /* renamed from: a */
    public Map<String, String> m4776a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f69159b == null) {
                this.f69159b = Collections.unmodifiableMap(new HashMap(this.f69158a));
            }
            map = this.f69159b;
        }
        return map;
    }
}
