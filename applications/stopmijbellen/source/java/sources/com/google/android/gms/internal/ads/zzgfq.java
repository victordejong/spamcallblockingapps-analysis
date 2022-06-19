package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgfq.class */
public final class zzgfq extends zzgkl<zzgfq, zzgfn> implements zzglw {
    private static final zzgfq zzb;
    private int zze;
    private zzgku<zzgfp> zzf = zzgkl.zzaE();

    static {
        zzgfq zzgfqVar = new zzgfq();
        zzb = zzgfqVar;
        zzgkl.zzaK(zzgfq.class, zzgfqVar);
    }

    private zzgfq() {
    }

    public static zzgfq zze(byte[] bArr, zzgjx zzgjxVar) throws zzgkx {
        return (zzgfq) zzgkl.zzaz(zzb, bArr, zzgjxVar);
    }

    public final int zza() {
        return this.zzf.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", zzgfp.class});
            }
            if (i2 == 3) {
                return new zzgfq();
            }
            if (i2 == 4) {
                return new zzgfn(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final int zzc() {
        return this.zze;
    }

    public final List<zzgfp> zzf() {
        return this.zzf;
    }
}
