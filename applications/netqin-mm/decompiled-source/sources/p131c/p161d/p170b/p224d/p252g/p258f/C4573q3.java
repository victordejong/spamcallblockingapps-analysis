package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzju;
/* renamed from: c.d.b.d.g.f.q3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/q3.class */
public final class C4573q3 implements AbstractC4553n4 {

    /* renamed from: b */
    public static final AbstractC4624y3 f16850b = new C4594t3();

    /* renamed from: a */
    public final AbstractC4624y3 f16851a;

    public C4573q3() {
        this(new C4587s3(C4506h3.m25453a(), m25314a()));
    }

    public C4573q3(AbstractC4624y3 y3Var) {
        zzia.m9636a(y3Var, "messageInfoFactory");
        this.f16851a = y3Var;
    }

    /* renamed from: a */
    public static AbstractC4624y3 m25314a() {
        try {
            return (AbstractC4624y3) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f16850b;
        }
    }

    /* renamed from: a */
    public static boolean m25313a(AbstractC4630z3 z3Var) {
        return z3Var.zza() == zzju.f29517a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4553n4
    /* renamed from: a */
    public final <T> AbstractC4560o4<T> mo25312a(Class<T> cls) {
        C4574q4.m25298a((Class<?>) cls);
        AbstractC4630z3 b = this.f16851a.mo25123b(cls);
        return b.zzb() ? zzhy.class.isAssignableFrom(cls) ? C4479d4.m25499a(C4574q4.m25286c(), C4457a3.m25568a(), b.zzc()) : C4479d4.m25499a(C4574q4.m25311a(), C4457a3.m25567b(), b.zzc()) : zzhy.class.isAssignableFrom(cls) ? m25313a(b) ? C4472c4.m25553a(cls, b, C4500g4.m25472b(), AbstractC4552n3.m25353b(), C4574q4.m25286c(), C4457a3.m25568a(), C4612w3.m25177b()) : C4472c4.m25553a(cls, b, C4500g4.m25472b(), AbstractC4552n3.m25353b(), C4574q4.m25286c(), (AbstractC4629z2<?>) null, C4612w3.m25177b()) : m25313a(b) ? C4472c4.m25553a(cls, b, C4500g4.m25473a(), AbstractC4552n3.m25354a(), C4574q4.m25311a(), C4457a3.m25567b(), C4612w3.m25178a()) : C4472c4.m25553a(cls, b, C4500g4.m25473a(), AbstractC4552n3.m25354a(), C4574q4.m25294b(), (AbstractC4629z2<?>) null, C4612w3.m25178a());
    }
}
