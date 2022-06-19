package com.google.android.gms.internal.ads;

import java.util.List;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgby.class */
public final class zzgby extends zzgga<zzgby, zzgbx> implements zzghj {
    private static final zzgby zzf;
    private String zzb = "";
    private zzggj<zzgax> zze = zzgga.zzaE();

    static {
        zzgby zzgbyVar = new zzgby();
        zzf = zzgbyVar;
        zzgga.zzay(zzgby.class, zzgbyVar);
    }

    private zzgby() {
    }

    public static zzgby zzc() {
        return zzf;
    }

    public final List<zzgax> zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"zzb", "zze", zzgax.class});
            }
            if (i2 == 3) {
                return new zzgby();
            }
            if (i2 == 4) {
                return new zzgbx(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }
}
