package kotlin.p081e.p083b;

import kotlin.p085g.AbstractC1719b;
import kotlin.p085g.AbstractC1724f;
/* renamed from: kotlin.e.b.n */
/* loaded from: classes-dex2jar.jar:kotlin/e/b/n.class */
public class C1703n {

    /* renamed from: a */
    private static final C1704o f4392a;

    /* renamed from: b */
    private static final AbstractC1719b[] f4393b;

    static {
        C1704o c1704o = null;
        try {
            c1704o = (C1704o) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException e) {
        }
        if (c1704o == null) {
            c1704o = new C1704o();
        }
        f4392a = c1704o;
        f4393b = new AbstractC1719b[0];
    }

    /* renamed from: a */
    public static String m3106a(AbstractC1692f abstractC1692f) {
        return f4392a.m3102a(abstractC1692f);
    }

    /* renamed from: a */
    public static String m3105a(AbstractC1695i abstractC1695i) {
        return f4392a.m3101a(abstractC1695i);
    }

    /* renamed from: a */
    public static AbstractC1719b m3107a(Class cls) {
        return f4392a.m3103a(cls);
    }

    /* renamed from: a */
    public static AbstractC1724f m3104a(AbstractC1697k abstractC1697k) {
        return f4392a.m3100a(abstractC1697k);
    }
}
