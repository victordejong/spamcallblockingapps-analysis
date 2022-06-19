package kotlin.p075c.p077b.p078a;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.reflect.Method;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.c.b.a.i */
/* loaded from: classes-dex2jar.jar:kotlin/c/b/a/i.class */
public final class C1637i {

    /* renamed from: a */
    public static C1638a f4359a;

    /* renamed from: b */
    public static final C1637i f4360b = new C1637i();

    /* renamed from: c */
    private static final C1638a f4361c = new C1638a(null, null, null);

    /* renamed from: kotlin.c.b.a.i$a */
    /* loaded from: classes-dex2jar.jar:kotlin/c/b/a/i$a.class */
    public static final class C1638a {

        /* renamed from: a */
        public final Method f4362a;

        /* renamed from: b */
        public final Method f4363b;

        /* renamed from: c */
        public final Method f4364c;

        public C1638a(Method method, Method method2, Method method3) {
            this.f4362a = method;
            this.f4363b = method2;
            this.f4364c = method3;
        }
    }

    private C1637i() {
    }

    /* renamed from: b */
    private final C1638a m3150b(AbstractC1629a abstractC1629a) {
        try {
            C1638a c1638a = new C1638a(Class.class.getDeclaredMethod("getModule", new Class[0]), abstractC1629a.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), abstractC1629a.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod(AppMeasurementSdk.ConditionalUserProperty.NAME, new Class[0]));
            f4359a = c1638a;
            return c1638a;
        } catch (Exception e) {
            C1638a c1638a2 = f4361c;
            f4359a = c1638a2;
            return c1638a2;
        }
    }

    /* renamed from: a */
    public final String m3151a(AbstractC1629a abstractC1629a) {
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        C1694h.m3117b(abstractC1629a, "continuation");
        C1638a c1638a = f4359a;
        if (c1638a == null) {
            c1638a = m3150b(abstractC1629a);
        }
        if (c1638a == f4361c || (method = c1638a.f4362a) == null || (invoke = method.invoke(abstractC1629a.getClass(), new Object[0])) == null || (method2 = c1638a.f4363b) == null || (invoke2 = method2.invoke(invoke, new Object[0])) == null) {
            return null;
        }
        Method method3 = c1638a.f4364c;
        String invoke3 = method3 != null ? method3.invoke(invoke2, new Object[0]) : null;
        String str = invoke3;
        if (!(invoke3 instanceof String)) {
            str = null;
        }
        return str;
    }
}
