package p287x6;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: x6.e */
/* loaded from: classes-dex2jar.jar:x6/e.class */
public class C4905e {

    /* renamed from: b */
    public static volatile C4905e f15000b;

    /* renamed from: c */
    public static final C4905e f15001c = new C4905e(true);

    /* renamed from: a */
    public final Map<Object, Object> f15002a;

    public C4905e() {
        this.f15002a = new HashMap();
    }

    public C4905e(boolean z) {
        this.f15002a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C4905e m270a() {
        C4905e c4905e = f15000b;
        C4905e c4905e2 = c4905e;
        if (c4905e == null) {
            synchronized (C4905e.class) {
                try {
                    C4905e c4905e3 = f15000b;
                    c4905e2 = c4905e3;
                    if (c4905e3 == null) {
                        Class<?> cls = C4903d.f14988a;
                        c4905e2 = null;
                        if (cls != null) {
                            try {
                                c4905e2 = (C4905e) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                            } catch (Exception e) {
                            }
                        }
                        if (c4905e2 == null) {
                            c4905e2 = f15001c;
                        }
                        f15000b = c4905e2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c4905e2;
    }
}
