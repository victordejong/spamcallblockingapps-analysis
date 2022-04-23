package p081h.p160h.p172b.p173a;

import java.lang.reflect.Method;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.b.a.c */
/* loaded from: classes2-dex2jar.jar:h/h/b/a/c.class */
public final class C6294c {

    /* renamed from: a */
    public static Method f15598a;

    static {
        new C6294c();
    }

    /* renamed from: a */
    public static final String m23364a(String str) {
        C15149k.m377b(str, "name");
        try {
            if (f15598a == null) {
                f15598a = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
            }
            Method method = f15598a;
            Object invoke = method != null ? method.invoke(null, str) : null;
            if (invoke != null) {
                return (String) invoke;
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.String");
        } catch (Exception e) {
            return null;
        }
    }
}
