package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmb.class */
public final class zzfmb extends zzfme {
    public final /* synthetic */ zzfmc zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfmb(zzfmc zzfmcVar, zzfmg zzfmgVar, CharSequence charSequence) {
        super(zzfmgVar, charSequence);
        this.zza = zzfmcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfme
    public final int zzc(int i) {
        int i2 = i + 4000;
        if (i2 < ((zzfme) this).zzb.length()) {
            return i2;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzfme
    public final int zzd(int i) {
        return i;
    }
}
