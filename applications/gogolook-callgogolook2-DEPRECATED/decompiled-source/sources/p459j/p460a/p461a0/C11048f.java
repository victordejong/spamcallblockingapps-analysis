package p459j.p460a.p461a0;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: j.a.a0.f */
/* loaded from: classes2-dex2jar.jar:j/a/a0/f.class */
public class C11048f<T> {

    /* renamed from: a */
    public Map<String, T> f24861a = Collections.synchronizedMap(new LinkedHashMap(500, 1.5f, true));

    /* renamed from: a */
    public void m10363a() {
        this.f24861a.clear();
    }

    /* renamed from: a */
    public void m10361a(String str, T t) {
        this.f24861a.put(str, t);
    }

    /* renamed from: a */
    public boolean m10362a(String str) {
        return this.f24861a.containsKey(str);
    }

    /* renamed from: b */
    public T m10360b(String str) {
        if (!this.f24861a.containsKey(str)) {
            return null;
        }
        return this.f24861a.get(str);
    }

    /* renamed from: c */
    public void m10359c(String str) {
        this.f24861a.remove(str);
    }
}
