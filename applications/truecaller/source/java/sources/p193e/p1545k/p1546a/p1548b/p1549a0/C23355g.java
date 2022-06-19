package p193e.p1545k.p1546a.p1548b.p1549a0;

import java.util.concurrent.ConcurrentHashMap;
/* renamed from: e.k.a.b.a0.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/g.class */
public final class C23355g extends ConcurrentHashMap<String, String> {

    /* renamed from: b */
    public static final C23355g f64580b = new C23355g();

    /* renamed from: a */
    public final Object f64581a = new Object();

    public C23355g() {
        super(180, 0.8f, 4);
    }

    /* renamed from: c */
    public String m7244c(String str) {
        String str2 = get(str);
        if (str2 != null) {
            return str2;
        }
        if (size() >= 180) {
            synchronized (this.f64581a) {
                if (size() >= 180) {
                    clear();
                }
            }
        }
        String intern = str.intern();
        put(intern, intern);
        return intern;
    }
}
