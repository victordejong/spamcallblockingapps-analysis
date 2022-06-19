package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeov.class */
public final class zzeov implements zzery<zzeow> {
    private final Context zza;
    private final zzfsn zzb;

    public zzeov(Context context, zzfsn zzfsnVar) {
        this.zza = context;
        this.zzb = zzfsnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeow> zza() {
        return this.zzb.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeou
            private final zzeov zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bundle bundle;
                String str;
                String str2;
                String str3;
                zzt.zzc();
                zzaxc zzb = zzt.zzg().zzp().zzb();
                if (zzb == null) {
                    bundle = null;
                } else if (!zzt.zzg().zzp().zzd() || !zzt.zzg().zzp().zzh()) {
                    if (zzb.zzh()) {
                        zzb.zzf();
                    }
                    zzaws zze = zzb.zze();
                    if (zze != null) {
                        String zzb2 = zze.zzb();
                        String zzc = zze.zzc();
                        String zzd = zze.zzd();
                        if (zzb2 != null) {
                            zzt.zzg().zzp().zze(zzb2);
                        }
                        str2 = zzd;
                        str = zzb2;
                        str3 = zzc;
                        if (zzd != null) {
                            zzt.zzg().zzp().zzi(zzd);
                            str2 = zzd;
                            str = zzb2;
                            str3 = zzc;
                        }
                    } else {
                        str = zzt.zzg().zzp().zzf();
                        str2 = zzt.zzg().zzp().zzj();
                        str3 = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!zzt.zzg().zzp().zzh()) {
                        if (str2 == null || TextUtils.isEmpty(str2)) {
                            bundle2.putString("v_fp_vertical", "no_hash");
                        } else {
                            bundle2.putString("v_fp_vertical", str2);
                        }
                    }
                    if (str != null && !zzt.zzg().zzp().zzd()) {
                        bundle2.putString("fingerprint", str);
                        if (!str.equals(str3)) {
                            bundle2.putString("v_fp", str3);
                        }
                    }
                    bundle = null;
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                } else {
                    bundle = null;
                }
                return new zzeow(bundle);
            }
        });
    }
}
