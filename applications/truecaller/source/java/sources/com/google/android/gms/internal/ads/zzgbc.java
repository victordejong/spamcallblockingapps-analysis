package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgbc.class */
public final class zzgbc extends zzgga<zzgbc, zzgaz> implements zzghj {
    private static final zzgbc zzf;
    private int zzb;
    private zzggj<zzgbb> zze = zzgga.zzaE();

    static {
        zzgbc zzgbcVar = new zzgbc();
        zzf = zzgbcVar;
        zzgga.zzay(zzgbc.class, zzgbcVar);
    }

    private zzgbc() {
    }

    public static zzgbc zze(byte[] bArr, zzgfm zzgfmVar) throws zzggm {
        return (zzgbc) zzgga.zzaK(zzf, bArr, zzgfmVar);
    }

    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzb", "zze", zzgbb.class});
            }
            if (i2 == 3) {
                return new zzgbc();
            }
            if (i2 == 4) {
                return new zzgaz(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final List<zzgbb> zzc() {
        return this.zze;
    }

    public final int zzd() {
        return this.zze.size();
    }
}
