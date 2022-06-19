package p193e.p1485h.p1486a.p1493c.p1510y0;

import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: e.h.a.c.y0.a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/y0/a.class */
public class C22882a {

    /* renamed from: a */
    public static final Map<String, C22883b> f63529a = Collections.synchronizedMap(new HashMap());

    /* renamed from: a */
    public static C22883b m7644a(CleverTapInstanceConfig cleverTapInstanceConfig) {
        if (cleverTapInstanceConfig != null) {
            Map<String, C22883b> map = f63529a;
            C22883b c22883b = map.get(cleverTapInstanceConfig.f2240a);
            C22883b c22883b2 = c22883b;
            if (c22883b == null) {
                synchronized (C22882a.class) {
                    try {
                        C22883b c22883b3 = map.get(cleverTapInstanceConfig.f2240a);
                        c22883b2 = c22883b3;
                        if (c22883b3 == null) {
                            c22883b2 = new C22883b(cleverTapInstanceConfig);
                            map.put(cleverTapInstanceConfig.f2240a, c22883b2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return c22883b2;
        }
        throw new IllegalArgumentException("Can't create task for null config");
    }
}
