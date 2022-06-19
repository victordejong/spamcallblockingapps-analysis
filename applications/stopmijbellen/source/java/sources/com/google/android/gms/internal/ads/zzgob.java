package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgob.class */
public final class zzgob extends zzgkl<zzgob, zzgoa> implements zzglw {
    private static final zzgob zzb;
    private int zze;
    private String zzf = "";

    static {
        zzgob zzgobVar = new zzgob();
        zzb = zzgobVar;
        zzgkl.zzaK(zzgob.class, zzgobVar);
    }

    private zzgob() {
    }

    public static zzgoa zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzgob zzgobVar, String str) {
        zzgobVar.zze |= 1;
        zzgobVar.zzf = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgob();
            }
            if (i2 == 4) {
                return new zzgoa(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
