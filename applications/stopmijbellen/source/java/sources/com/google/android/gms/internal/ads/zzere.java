package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzere.class */
public final class zzere implements zzevn<zzerf> {
    private final AppSetIdClient zza;

    public zzere(Context context) {
        this.zza = AppSet.getClient(context);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzerf> zzb() {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbU)).booleanValue()) {
            Task<AppSetIdInfo> appSetIdInfo = this.zza.getAppSetIdInfo();
            final zzfxi zza = zzfxi.zza();
            appSetIdInfo.addOnCompleteListener(zzfxh.zzb(), new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzfpk
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    zzfxi zzfxiVar = zzfxi.this;
                    if (task.isCanceled()) {
                        zzfxiVar.cancel(false);
                    } else if (task.isSuccessful()) {
                        zzfxiVar.zzs(task.getResult());
                    } else {
                        Exception exception = task.getException();
                        if (exception == null) {
                            throw new IllegalStateException();
                        }
                        zzfxiVar.zzt(exception);
                    }
                }
            });
            return zzfwq.zzm(zza, zzerd.zza, zzcjm.zzf);
        }
        return zzfwq.zzi(new zzerf(null, -1));
    }
}
