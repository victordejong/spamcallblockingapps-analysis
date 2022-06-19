package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/zzr.class */
public final class zzr implements AppSetIdClient {
    private final AppSetIdClient zza;
    private final AppSetIdClient zzb;

    public zzr(Context context) {
        this.zza = new zzp(context, GoogleApiAvailabilityLight.f5675b);
        this.zzb = zzl.zzc(context);
    }

    public static Task zza(zzr zzrVar, Task task) {
        Task<AppSetIdInfo> task2 = task;
        if (!task.m38519s()) {
            if (task.m38521q()) {
                task2 = task;
            } else {
                Exception m38524n = task.m38524n();
                task2 = task;
                if (m38524n instanceof ApiException) {
                    int i = ((ApiException) m38524n).f5693a.f5728b;
                    if (i == 43001 || i == 43002 || i == 43003 || i == 17) {
                        task2 = zzrVar.zzb.getAppSetIdInfo();
                    } else if (i == 43000) {
                        task2 = Tasks.m38510e(new Exception("Failed to get app set ID due to an internal error. Please try again later."));
                    } else if (i == 15) {
                        return Tasks.m38510e(new Exception("The operation to get app set ID timed out. Please try again later."));
                    } else {
                        task2 = task;
                    }
                }
            }
        }
        return task2;
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> getAppSetIdInfo() {
        return this.zza.getAppSetIdInfo().m38526l(new Continuation() { // from class: com.google.android.gms.internal.appset.zzq
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return zzr.zza(zzr.this, task);
            }
        });
    }
}
