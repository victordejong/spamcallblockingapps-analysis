package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzmb.class */
public final class zzmb implements zzli {
    private final zzlk zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzmb(zzlk zzlkVar, String str, Object[] objArr) {
        this.zza = zzlkVar;
        this.zzb = str;
        this.zzc = objArr;
        int charAt = str.charAt(0);
        if (charAt < 55296) {
            this.zzd = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.zzd = i | (charAt2 << i2);
                return;
            }
            i |= (charAt2 & 8191) << i2;
            i3++;
            i2 += 13;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzli
    public final int zza() {
        return (this.zzd & 1) == 1 ? zzlw.zza : zzlw.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzli
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzli
    public final zzlk zzc() {
        return this.zza;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
