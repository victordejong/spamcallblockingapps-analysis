package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjf.class */
public final class zzfjf extends zzgga<zzfjf, zzfje> implements zzghj {
    private static final zzggg<Integer, Object> zzf = new zzfjc();
    private static final zzfjf zzj;
    private int zzb;
    private zzggf zze = zzgga.zzaB();
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        zzfjf zzfjfVar = new zzfjf();
        zzj = zzfjfVar;
        zzgga.zzay(zzfjf.class, zzfjfVar);
    }

    private zzfjf() {
    }

    public static zzfje zza() {
        return zzj.zzas();
    }

    public static /* synthetic */ void zzd(zzfjf zzfjfVar, String str) {
        str.getClass();
        zzfjfVar.zzb |= 1;
        zzfjfVar.zzg = str;
    }

    public static /* synthetic */ void zze(zzfjf zzfjfVar, int i) {
        zzggf zzggfVar = zzfjfVar.zze;
        if (!zzggfVar.zza()) {
            zzfjfVar.zze = zzgga.zzaC(zzggfVar);
        }
        zzfjfVar.zze.zzh(2);
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzj, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001e\u0002ဈ��\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzb", "zze", zzfjd.zza, "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new zzfjf();
            } else {
                if (i2 == 4) {
                    return new zzfje(null);
                }
                if (i2 == 5) {
                    return zzj;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
