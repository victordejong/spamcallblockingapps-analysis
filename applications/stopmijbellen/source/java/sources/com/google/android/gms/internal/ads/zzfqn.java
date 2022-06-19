package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqn.class */
abstract class zzfqn extends zzfpm<String> {
    public final CharSequence zzb;
    public final zzfps zzc;
    public int zzd = 0;
    public int zze = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    public zzfqn(zzfqp zzfqpVar, CharSequence charSequence) {
        zzfps zzfpsVar;
        zzfpsVar = zzfqpVar.zza;
        this.zzc = zzfpsVar;
        this.zzb = charSequence;
    }

    @Override // com.google.android.gms.internal.ads.zzfpm
    @CheckForNull
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
            int zzd = zzd(i3);
            if (zzd == -1) {
                zzd = this.zzb.length();
                this.zzd = -1;
                i = -1;
            } else {
                i = zzc(zzd);
                this.zzd = i;
            }
            if (i == i2) {
                int i4 = i + 1;
                this.zzd = i4;
                if (i4 > this.zzb.length()) {
                    this.zzd = -1;
                }
            } else {
                if (i2 < zzd) {
                    this.zzb.charAt(i2);
                }
                if (i2 < zzd) {
                    this.zzb.charAt(zzd - 1);
                }
                int i5 = this.zze;
                if (i5 == 1) {
                    int length = this.zzb.length();
                    this.zzd = -1;
                    zzd = length;
                    if (length > i2) {
                        this.zzb.charAt(length - 1);
                        zzd = length;
                    }
                } else {
                    this.zze = i5 - 1;
                }
                str = this.zzb.subSequence(i2, zzd).toString();
            }
        }
        return str;
    }

    public abstract int zzc(int i);

    public abstract int zzd(int i);
}
