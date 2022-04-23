package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekb;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: c.d.b.d.g.a.y80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/y80.class */
public final class y80 {

    /* renamed from: c */
    public static final y80 f16099c = new y80();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, f90<?>> f16101b = new ConcurrentHashMap();

    /* renamed from: a */
    public final i90 f16100a = new h80();

    /* renamed from: a */
    public static y80 m26138a() {
        return f16099c;
    }

    /* renamed from: a */
    public final <T> f90<T> m26137a(Class<T> cls) {
        zzekb.m12370a(cls, "messageType");
        f90<?> f90Var = this.f16101b.get(cls);
        f90<T> f90Var2 = (f90<T>) f90Var;
        if (f90Var == null) {
            f90Var2 = this.f16100a.mo26804a(cls);
            zzekb.m12370a(cls, "messageType");
            zzekb.m12370a(f90Var2, "schema");
            f90<?> putIfAbsent = this.f16101b.putIfAbsent(cls, f90Var2);
            if (putIfAbsent != null) {
                f90Var2 = (f90<T>) putIfAbsent;
            }
        }
        return f90Var2;
    }

    /* renamed from: a */
    public final <T> f90<T> m26136a(T t) {
        return m26137a((Class) t.getClass());
    }
}
