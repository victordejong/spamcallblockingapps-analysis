package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazu.class */
public final class zzazu extends zzgga<zzazu, zzazo> implements zzghj {
    private static final zzazu zze;
    private zzggj<zzazn> zzb = zzgga.zzaE();

    static {
        zzazu zzazuVar = new zzazu();
        zze = zzazuVar;
        zzgga.zzay(zzazu.class, zzazuVar);
    }

    private zzazu() {
    }

    public static zzazo zza() {
        return zze.zzas();
    }

    public static /* synthetic */ void zzd(zzazu zzazuVar, zzazn zzaznVar) {
        zzaznVar.getClass();
        zzggj<zzazn> zzggjVar = zzazuVar.zzb;
        if (!zzggjVar.zza()) {
            zzazuVar.zzb = zzgga.zzaF(zzggjVar);
        }
        zzazuVar.zzb.add(zzaznVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzb", zzazn.class});
            }
            if (i2 == 3) {
                return new zzazu();
            }
            if (i2 == 4) {
                return new zzazo(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
