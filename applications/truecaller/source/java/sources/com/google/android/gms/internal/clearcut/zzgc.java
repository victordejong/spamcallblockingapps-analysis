package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgc.class */
public final class zzgc extends zzcg.zzd<zzgc, zza> implements zzdq {
    private static volatile zzdz<zzgc> zzbg;
    private static final zzgc zzsg;
    private byte zzsf = (byte) 2;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgc$zza.class */
    public static final class zza extends zzcg.zzc<zzgc, zza> implements zzdq {
        private zza() {
            super(zzgc.zzsg);
        }

        public /* synthetic */ zza(zzgd zzgdVar) {
            this();
        }
    }

    static {
        zzgc zzgcVar = new zzgc();
        zzsg = zzgcVar;
        zzcg.zza(zzgc.class, zzgcVar);
    }

    private zzgc() {
    }

    public static zzgc zzer() {
        return zzsg;
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgc>, com.google.android.gms.internal.clearcut.zzcg$zzb] */
    @Override // com.google.android.gms.internal.clearcut.zzcg
    public final Object zza(int i, Object obj, Object obj2) {
        zzdz<zzgc> zzdzVar;
        switch (zzgd.zzba[i - 1]) {
            case 1:
                return new zzgc();
            case 2:
                return new zza(null);
            case 3:
                return zzcg.zza(zzsg, "\u0003��", (Object[]) null);
            case 4:
                return zzsg;
            case 5:
                zzdz<zzgc> zzdzVar2 = zzbg;
                zzdz<zzgc> zzdzVar3 = zzdzVar2;
                if (zzdzVar2 == null) {
                    synchronized (zzgc.class) {
                        try {
                            zzdz<zzgc> zzdzVar4 = zzbg;
                            zzdzVar = zzdzVar4;
                            if (zzdzVar4 == null) {
                                ?? zzbVar = new zzcg.zzb(zzsg);
                                zzbg = zzbVar;
                                zzdzVar = zzbVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    zzdzVar3 = zzdzVar;
                }
                return zzdzVar3 == 1 ? 1 : 0;
            case 6:
                return Byte.valueOf(this.zzsf);
            case 7:
                int i2 = 1;
                if (obj == null) {
                    i2 = 0;
                }
                this.zzsf = (byte) i2;
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
