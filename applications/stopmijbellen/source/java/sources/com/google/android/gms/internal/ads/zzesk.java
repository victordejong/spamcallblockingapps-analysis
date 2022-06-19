package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesk.class */
public final class zzesk implements zzevn<zzesl> {
    private final Context zza;
    private final zzfxb zzb;

    public zzesk(Context context, zzfxb zzfxbVar) {
        this.zza = context;
        this.zzb = zzfxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzesl> zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bundle bundle;
                String str;
                String str2;
                String str3;
                zzt.zzp();
                zzayz zzf = zzt.zzo().zzh().zzf();
                if (zzf == null) {
                    bundle = null;
                } else if (!zzt.zzo().zzh().zzI() || !zzt.zzo().zzh().zzJ()) {
                    if (zzf.zzh()) {
                        zzf.zzg();
                    }
                    zzayp zza = zzf.zza();
                    if (zza != null) {
                        String zzd = zza.zzd();
                        String zze = zza.zze();
                        String zzf2 = zza.zzf();
                        if (zzd != null) {
                            zzt.zzo().zzh().zzu(zzd);
                        }
                        str2 = zzf2;
                        str = zzd;
                        str3 = zze;
                        if (zzf2 != null) {
                            zzt.zzo().zzh().zzw(zzf2);
                            str2 = zzf2;
                            str = zzd;
                            str3 = zze;
                        }
                    } else {
                        str = zzt.zzo().zzh().zzi();
                        str2 = zzt.zzo().zzh().zzj();
                        str3 = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!zzt.zzo().zzh().zzJ()) {
                        if (str2 == null || TextUtils.isEmpty(str2)) {
                            bundle2.putString("v_fp_vertical", "no_hash");
                        } else {
                            bundle2.putString("v_fp_vertical", str2);
                        }
                    }
                    if (str != null && !zzt.zzo().zzh().zzI()) {
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
                return new zzesl(bundle);
            }
        });
    }
}
