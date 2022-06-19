package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgjk.class */
public final class zzgjk extends zzgga<zzgjk, zzgjj> implements zzghj {
    private static final zzgjk zzf;
    private int zzb;
    private String zze = "";

    static {
        zzgjk zzgjkVar = new zzgjk();
        zzf = zzgjkVar;
        zzgga.zzay(zzgjk.class, zzgjkVar);
    }

    private zzgjk() {
    }

    public static zzgjj zza() {
        return zzf.zzas();
    }

    public static /* synthetic */ void zzd(zzgjk zzgjkVar, String str) {
        zzgjkVar.zzb |= 1;
        zzgjkVar.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzgjk();
            }
            if (i2 == 4) {
                return new zzgjj(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }
}
