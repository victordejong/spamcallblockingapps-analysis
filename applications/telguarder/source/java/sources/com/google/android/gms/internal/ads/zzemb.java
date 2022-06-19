package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemb.class */
public final class zzemb implements zzenm {
    private static final zzeml zzisg = new zzeme();
    private final zzeml zzisf;

    public zzemb() {
        this(new zzemd(zzelc.zzbir(), zzbjq()));
    }

    private zzemb(zzeml zzemlVar) {
        this.zzisf = (zzeml) zzeld.zza(zzemlVar, "messageInfoFactory");
    }

    private static boolean zza(zzemm zzemmVar) {
        return zzemmVar.zzbjy() == zzemz.zzitk;
    }

    private static zzeml zzbjq() {
        try {
            return (zzeml) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzisg;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzenm
    public final <T> zzenj<T> zzg(Class<T> cls) {
        zzenl.zzi(cls);
        zzemm zzf = this.zzisf.zzf(cls);
        return zzf.zzbjz() ? zzelb.class.isAssignableFrom(cls) ? zzemu.zza(zzenl.zzbkn(), zzekr.zzbhz(), zzf.zzbka()) : zzemu.zza(zzenl.zzbkl(), zzekr.zzbia(), zzf.zzbka()) : zzelb.class.isAssignableFrom(cls) ? zza(zzf) ? zzems.zza(cls, zzf, zzemy.zzbkc(), zzely.zzbjp(), zzenl.zzbkn(), zzekr.zzbhz(), zzemj.zzbjw()) : zzems.zza(cls, zzf, zzemy.zzbkc(), zzely.zzbjp(), zzenl.zzbkn(), (zzekq<?>) null, zzemj.zzbjw()) : zza(zzf) ? zzems.zza(cls, zzf, zzemy.zzbkb(), zzely.zzbjo(), zzenl.zzbkl(), zzekr.zzbia(), zzemj.zzbjv()) : zzems.zza(cls, zzf, zzemy.zzbkb(), zzely.zzbjo(), zzenl.zzbkm(), (zzekq<?>) null, zzemj.zzbjv());
    }
}
