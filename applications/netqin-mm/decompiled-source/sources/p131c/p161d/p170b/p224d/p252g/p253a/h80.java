package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzekb;
/* renamed from: c.d.b.d.g.a.h80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/h80.class */
public final class h80 implements i90 {

    /* renamed from: b */
    public static final o80 f13254b = new f80();

    /* renamed from: a */
    public final o80 f13255a;

    public h80() {
        this(new i80(v70.m26212a(), m26920a()));
    }

    public h80(o80 o80Var) {
        zzekb.m12370a(o80Var, "messageInfoFactory");
        this.f13255a = o80Var;
    }

    /* renamed from: a */
    public static o80 m26920a() {
        try {
            return (o80) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f13254b;
        }
    }

    /* renamed from: a */
    public static boolean m26919a(m80 m80Var) {
        return m80Var.mo26280a() == zzejz.zze.f28082i;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.i90
    /* renamed from: a */
    public final <T> f90<T> mo26804a(Class<T> cls) {
        h90.m26905a((Class<?>) cls);
        m80 a = this.f13255a.mo26211a(cls);
        return a.mo26279b() ? zzejz.class.isAssignableFrom(cls) ? r80.m26424a(h90.m26893c(), o70.m26602b(), a.mo26278c()) : r80.m26424a(h90.m26918a(), o70.m26601c(), a.mo26278c()) : zzejz.class.isAssignableFrom(cls) ? m26919a(a) ? p80.m26578a(cls, a, u80.m26303b(), a80.m27242b(), h90.m26893c(), o70.m26602b(), n80.m26621b()) : p80.m26578a(cls, a, u80.m26303b(), a80.m27242b(), h90.m26893c(), (n70<?>) null, n80.m26621b()) : m26919a(a) ? p80.m26578a(cls, a, u80.m26304a(), a80.m27243a(), h90.m26918a(), o70.m26601c(), n80.m26622a()) : p80.m26578a(cls, a, u80.m26304a(), a80.m27243a(), h90.m26901b(), (n70<?>) null, n80.m26622a());
    }
}
