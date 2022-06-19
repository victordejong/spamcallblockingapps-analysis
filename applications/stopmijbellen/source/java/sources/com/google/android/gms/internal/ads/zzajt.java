package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajt.class */
public final class zzajt extends zzgkl<zzajt, zzajs> implements zzglw {
    private static final zzajt zzb;
    private int zze;
    private zzgjf zzf;
    private zzgjf zzg;
    private zzgjf zzh;
    private zzgjf zzi;

    static {
        zzajt zzajtVar = new zzajt();
        zzb = zzajtVar;
        zzgkl.zzaK(zzajt.class, zzajtVar);
    }

    private zzajt() {
        zzgjf zzgjfVar = zzgjf.zzb;
        this.zzf = zzgjfVar;
        this.zzg = zzgjfVar;
        this.zzh = zzgjfVar;
        this.zzi = zzgjfVar;
    }

    public static zzajs zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ zzajt zzc() {
        return zzb;
    }

    public static zzajt zzd(byte[] bArr, zzgjx zzgjxVar) throws zzgkx {
        return (zzajt) zzgkl.zzaz(zzb, bArr, zzgjxVar);
    }

    public static /* synthetic */ void zzi(zzajt zzajtVar, zzgjf zzgjfVar) {
        zzajtVar.zze |= 1;
        zzajtVar.zzf = zzgjfVar;
    }

    public static /* synthetic */ void zzj(zzajt zzajtVar, zzgjf zzgjfVar) {
        zzajtVar.zze |= 2;
        zzajtVar.zzg = zzgjfVar;
    }

    public static /* synthetic */ void zzk(zzajt zzajtVar, zzgjf zzgjfVar) {
        zzajtVar.zze |= 4;
        zzajtVar.zzh = zzgjfVar;
    }

    public static /* synthetic */ void zzl(zzajt zzajtVar, zzgjf zzgjfVar) {
        zzajtVar.zze |= 8;
        zzajtVar.zzi = zzgjfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ည��\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzajt();
            }
            if (i2 == 4) {
                return new zzajs(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgjf zze() {
        return this.zzf;
    }

    public final zzgjf zzf() {
        return this.zzg;
    }

    public final zzgjf zzg() {
        return this.zzi;
    }

    public final zzgjf zzh() {
        return this.zzh;
    }
}
