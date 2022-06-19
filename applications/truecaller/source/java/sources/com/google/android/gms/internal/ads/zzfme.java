package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfme.class */
public abstract class zzfme extends zzfle<String> {
    public final CharSequence zzb;
    public final zzflk zzc;
    public int zzd = 0;
    public int zze = Integer.MAX_VALUE;

    public zzfme(zzfmg zzfmgVar, CharSequence charSequence) {
        zzflk zzflkVar;
        zzflkVar = zzfmgVar.zza;
        this.zzc = zzflkVar;
        this.zzb = charSequence;
    }

    @Override // com.google.android.gms.internal.ads.zzfle
    public final /* bridge */ /* synthetic */ String zza() {
        String str;
        int i;
        int i2 = this.zzd;
        while (true) {
            int i3 = this.zzd;
            if (i3 == -1) {
                zzb();
                str = null;
                break;
            }
            int zzc = zzc(i3);
            if (zzc == -1) {
                zzc = this.zzb.length();
                this.zzd = -1;
                i = -1;
            } else {
                i = zzd(zzc);
                this.zzd = i;
            }
            if (i == i2) {
                int i4 = i + 1;
                this.zzd = i4;
                if (i4 > this.zzb.length()) {
                    this.zzd = -1;
                }
            } else {
                if (i2 < zzc) {
                    this.zzb.charAt(i2);
                }
                if (i2 < zzc) {
                    this.zzb.charAt(zzc - 1);
                }
                int i5 = this.zze;
                if (i5 == 1) {
                    int length = this.zzb.length();
                    this.zzd = -1;
                    zzc = length;
                    if (length > i2) {
                        this.zzb.charAt(length - 1);
                        zzc = length;
                    }
                } else {
                    this.zze = i5 - 1;
                }
                str = this.zzb.subSequence(i2, zzc).toString();
            }
        }
        return str;
    }

    public abstract int zzc(int i);

    public abstract int zzd(int i);
}
