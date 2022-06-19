package p193e.p1545k.p1546a.p1556c.p1565h0;

import java.lang.reflect.Method;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.h0.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/h0/c.class */
public class C23697c {

    /* renamed from: d */
    public static final C23697c f65723d;

    /* renamed from: e */
    public static final RuntimeException f65724e;

    /* renamed from: a */
    public final Method f65725a;

    /* renamed from: b */
    public final Method f65726b;

    /* renamed from: c */
    public final Method f65727c;

    static {
        RuntimeException e;
        C23697c c23697c = null;
        try {
            e = null;
            c23697c = new C23697c();
        } catch (RuntimeException e2) {
            e = e2;
        }
        f65723d = c23697c;
        f65724e = e;
    }

    public C23697c() throws RuntimeException {
        try {
            this.f65725a = Class.class.getMethod("getRecordComponents", new Class[0]);
            Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
            this.f65726b = cls.getMethod("getName", new Class[0]);
            this.f65727c = cls.getMethod("getType", new Class[0]);
        } catch (Exception e) {
            throw new RuntimeException(String.format("Failed to access Methods needed to support `java.lang.Record`: (%s) %s", e.getClass().getName(), e.getMessage()), e);
        }
    }

    /* renamed from: a */
    public Object[] m6245a(Class<?> cls) throws IllegalArgumentException {
        try {
            return (Object[]) this.f65725a.invoke(cls, new Object[0]);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("Failed to access RecordComponents of type ");
            m8728C.append(C23914g.m5776E(cls));
            throw new IllegalArgumentException(m8728C.toString());
        }
    }
}
