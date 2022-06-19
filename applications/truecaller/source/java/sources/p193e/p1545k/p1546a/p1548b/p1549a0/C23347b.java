package p193e.p1545k.p1546a.p1548b.p1549a0;

import java.lang.ref.SoftReference;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23363o;
/* renamed from: e.k.a.b.a0.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/b.class */
public class C23347b {

    /* renamed from: a */
    public static final C23363o f64565a;

    /* renamed from: b */
    public static final ThreadLocal<SoftReference<C23346a>> f64566b;

    static {
        boolean z;
        try {
            z = "true".equals(System.getProperty("com.fasterxml.jackson.core.util.BufferRecyclers.trackReusableBuffers"));
        } catch (SecurityException e) {
            z = false;
        }
        f64565a = z ? C23363o.C23364a.f64604a : null;
        f64566b = new ThreadLocal<>();
    }
}
