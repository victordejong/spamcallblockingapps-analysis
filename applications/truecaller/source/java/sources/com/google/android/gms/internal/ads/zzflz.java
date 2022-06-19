package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzflz.class */
public final class zzflz extends zzfme {
    public final /* synthetic */ zzfma zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzflz(zzfma zzfmaVar, zzfmg zzfmgVar, CharSequence charSequence) {
        super(zzfmgVar, charSequence);
        this.zza = zzfmaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfme
    public final int zzc(int i) {
        int i2;
        zzflk zzflkVar = this.zza.zza;
        CharSequence charSequence = ((zzfme) this).zzb;
        int length = charSequence.length();
        zzflx.zzf(i, length, "index");
        while (true) {
            if (i >= length) {
                i2 = -1;
                break;
            }
            i2 = i;
            if (zzflkVar.zza(charSequence.charAt(i))) {
                break;
            }
            i++;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfme
    public final int zzd(int i) {
        return i + 1;
    }
}
