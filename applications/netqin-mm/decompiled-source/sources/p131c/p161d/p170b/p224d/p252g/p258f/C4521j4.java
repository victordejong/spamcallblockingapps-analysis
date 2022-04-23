package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzia;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: c.d.b.d.g.f.j4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/j4.class */
public final class C4521j4 {

    /* renamed from: c */
    public static final C4521j4 f16783c = new C4521j4();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, AbstractC4560o4<?>> f16785b = new ConcurrentHashMap();

    /* renamed from: a */
    public final AbstractC4553n4 f16784a = new C4573q3();

    /* renamed from: a */
    public static C4521j4 m25442a() {
        return f16783c;
    }

    /* renamed from: a */
    public final <T> AbstractC4560o4<T> m25441a(Class<T> cls) {
        zzia.m9636a(cls, "messageType");
        AbstractC4560o4<?> o4Var = this.f16785b.get(cls);
        AbstractC4560o4<T> o4Var2 = (AbstractC4560o4<T>) o4Var;
        if (o4Var == null) {
            o4Var2 = this.f16784a.mo25312a(cls);
            zzia.m9636a(cls, "messageType");
            zzia.m9636a(o4Var2, "schema");
            AbstractC4560o4<?> putIfAbsent = this.f16785b.putIfAbsent(cls, o4Var2);
            if (putIfAbsent != null) {
                o4Var2 = (AbstractC4560o4<T>) putIfAbsent;
            }
        }
        return o4Var2;
    }

    /* renamed from: a */
    public final <T> AbstractC4560o4<T> m25440a(T t) {
        return m25441a((Class) t.getClass());
    }
}
