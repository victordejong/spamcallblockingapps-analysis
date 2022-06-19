package kotlin.p081e.p083b;

import kotlin.p085g.AbstractC1719b;
import kotlin.p085g.AbstractC1724f;
/* renamed from: kotlin.e.b.o */
/* loaded from: classes-dex2jar.jar:kotlin/e/b/o.class */
public class C1704o {
    /* renamed from: a */
    public String m3102a(AbstractC1692f abstractC1692f) {
        String obj = abstractC1692f.getClass().getGenericInterfaces()[0].toString();
        String str = obj;
        if (obj.startsWith("kotlin.jvm.functions.")) {
            str = obj.substring(21);
        }
        return str;
    }

    /* renamed from: a */
    public String m3101a(AbstractC1695i abstractC1695i) {
        return m3102a((AbstractC1692f) abstractC1695i);
    }

    /* renamed from: a */
    public AbstractC1719b m3103a(Class cls) {
        return new C1689c(cls);
    }

    /* renamed from: a */
    public AbstractC1724f m3100a(AbstractC1697k abstractC1697k) {
        return abstractC1697k;
    }
}
