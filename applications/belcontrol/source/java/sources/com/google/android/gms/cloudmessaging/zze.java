package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zza;
import com.google.android.gms.internal.cloudmessaging.zzf;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zze.class */
public final class zze {
    @GuardedBy("MessengerIpcClient.class")
    private static zze zza;
    private final Context zzb;
    private final ScheduledExecutorService zzc;
    @GuardedBy("this")
    private zzf zzd = new zzf(this);
    @GuardedBy("this")
    private int zze = 1;

    private zze(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = scheduledExecutorService;
        this.zzb = context.getApplicationContext();
    }

    private final int zza() {
        int i;
        synchronized (this) {
            i = this.zze;
            this.zze = i + 1;
        }
        return i;
    }

    public static zze zza(Context context) {
        zze zzeVar;
        synchronized (zze.class) {
            try {
                if (zza == null) {
                    zza = new zze(context, zza.zza().zza(1, new NamedThreadFactory("MessengerIpcClient"), zzf.zzb));
                }
                zzeVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzeVar;
    }

    private final <T> Task<T> zza(zzq<T> zzqVar) {
        Task<T> task;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(zzqVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.zzd.zza((zzq<?>) zzqVar)) {
                zzf zzfVar = new zzf(this);
                this.zzd = zzfVar;
                zzfVar.zza((zzq<?>) zzqVar);
            }
            task = zzqVar.zzb.getTask();
        }
        return task;
    }

    public final Task<Void> zza(int i, Bundle bundle) {
        return zza((zzq) new zzn(zza(), 2, bundle));
    }

    public final Task<Bundle> zzb(int i, Bundle bundle) {
        return zza((zzq) new zzs(zza(), 1, bundle));
    }
}
