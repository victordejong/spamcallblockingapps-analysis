package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzcg;
import com.google.android.gms.internal.clearcut.zzci;
/* renamed from: c.d.b.d.g.c.t0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/t0.class */
public final class C4415t0 implements AbstractC4396p1 {

    /* renamed from: b */
    public static final AbstractC4322b1 f16635b = new C4420u0();

    /* renamed from: a */
    public final AbstractC4322b1 f16636a;

    public C4415t0() {
        this(new C4424v0(C4361j0.m25895a(), m25638a()));
    }

    public C4415t0(AbstractC4322b1 b1Var) {
        zzci.m10699a(b1Var, "messageInfoFactory");
        this.f16636a = b1Var;
    }

    /* renamed from: a */
    public static AbstractC4322b1 m25638a() {
        try {
            return (AbstractC4322b1) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f16635b;
        }
    }

    /* renamed from: a */
    public static boolean m25637a(AbstractC4317a1 a1Var) {
        return a1Var.mo25821a() == zzcg.zzg.f29260i;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4396p1
    /* renamed from: a */
    public final <T> AbstractC4391o1<T> mo25636a(Class<T> cls) {
        C4401q1.m25713a((Class<?>) cls);
        AbstractC4317a1 b = this.f16636a.mo25632b(cls);
        if (b.mo25820b()) {
            return zzcg.class.isAssignableFrom(cls) ? C4342f1.m25919a(C4401q1.m25701c(), C4336e0.m25944b(), b.mo25819c()) : C4342f1.m25919a(C4401q1.m25727a(), C4336e0.m25943c(), b.mo25819c());
        }
        if (zzcg.class.isAssignableFrom(cls)) {
            boolean a = m25637a(b);
            AbstractC4347g1 b2 = C4357i1.m25897b();
            AbstractC4390o0 b3 = AbstractC4390o0.m25746b();
            AbstractC4343f2<?, ?> c = C4401q1.m25701c();
            return a ? C4332d1.m25973a(cls, b, b2, b3, c, C4336e0.m25944b(), C4440z0.m25571b()) : C4332d1.m25973a(cls, b, b2, b3, c, (AbstractC4321b0<?>) null, C4440z0.m25571b());
        }
        boolean a2 = m25637a(b);
        AbstractC4347g1 a3 = C4357i1.m25898a();
        AbstractC4390o0 a4 = AbstractC4390o0.m25747a();
        return a2 ? C4332d1.m25973a(cls, b, a3, a4, C4401q1.m25727a(), C4336e0.m25943c(), C4440z0.m25572a()) : C4332d1.m25973a(cls, b, a3, a4, C4401q1.m25709b(), (AbstractC4321b0<?>) null, C4440z0.m25572a());
    }
}
