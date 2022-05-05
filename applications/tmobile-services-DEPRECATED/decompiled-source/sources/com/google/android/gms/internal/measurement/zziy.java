package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziy.class */
public final class zziy implements zzkc {

    /* renamed from: b */
    private static final zzji f8547b = new zzix();

    /* renamed from: a */
    private final zzji f8548a;

    public zziy() {
        this(new zzja(zzhx.m12437c(), m12356b()));
    }

    private zziy(zzji zzjiVar) {
        zzic.m12392f(zzjiVar, "messageInfoFactory");
        this.f8548a = zzjiVar;
    }

    /* renamed from: b */
    private static zzji m12356b() {
        try {
            return (zzji) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f8547b;
        }
    }

    /* renamed from: c */
    private static boolean m12355c(zzjf zzjfVar) {
        return zzjfVar.zza() == zzjw.f8586a;
    }

    @Override // com.google.android.gms.internal.measurement.zzkc
    /* renamed from: a */
    public final <T> zzjz<T> mo12158a(Class<T> cls) {
        zzkb.m12169p(cls);
        zzjf b = this.f8548a.mo12328b(cls);
        return b.zzb() ? zzhz.class.isAssignableFrom(cls) ? zzjn.m12276j(zzkb.m12213B(), zzhq.m12443a(), b.zzc()) : zzjn.m12276j(zzkb.m12179f(), zzhq.m12442b(), b.zzc()) : zzhz.class.isAssignableFrom(cls) ? m12355c(b) ? zzjl.m12290q(cls, b, zzjr.m12274b(), zzir.m12369d(), zzkb.m12213B(), zzhq.m12443a(), zzjg.m12336b()) : zzjl.m12290q(cls, b, zzjr.m12274b(), zzir.m12369d(), zzkb.m12213B(), null, zzjg.m12336b()) : m12355c(b) ? zzjl.m12290q(cls, b, zzjr.m12275a(), zzir.m12370a(), zzkb.m12179f(), zzhq.m12442b(), zzjg.m12337a()) : zzjl.m12290q(cls, b, zzjr.m12275a(), zzir.m12370a(), zzkb.m12163v(), null, zzjg.m12337a());
    }
}
