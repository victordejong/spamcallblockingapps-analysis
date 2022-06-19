package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzye.class */
public final class zzye extends zzgga<zzye, zzyd> implements zzghj {
    private static final zzye zzf;
    private int zzb;
    private int zze = 2;

    static {
        zzye zzyeVar = new zzye();
        zzf = zzyeVar;
        zzgga.zzay(zzye.class, zzyeVar);
    }

    private zzye() {
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "\u0001\u0001��\u0001\u001b\u001b\u0001������\u001bဌ��", new Object[]{"zzb", "zze", zzyf.zza});
            } else if (i2 == 3) {
                return new zzye();
            } else {
                if (i2 == 4) {
                    return new zzyd(null);
                }
                if (i2 == 5) {
                    return zzf;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
