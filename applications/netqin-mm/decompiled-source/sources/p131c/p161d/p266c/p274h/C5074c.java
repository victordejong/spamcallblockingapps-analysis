package p131c.p161d.p266c.p274h;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.h.c */
/* loaded from: classes2-dex2jar.jar:c/d/c/h/c.class */
public final class C5074c {
    /* renamed from: a */
    public static <T> T m24556a(Class<T> cls, InvocationHandler invocationHandler) {
        C4933n.m24795a(invocationHandler);
        C4933n.m24782a(cls.isInterface(), "%s is not an interface", cls);
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
