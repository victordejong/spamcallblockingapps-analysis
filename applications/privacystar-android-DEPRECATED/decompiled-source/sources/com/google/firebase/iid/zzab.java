package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzab.class */
public final class zzab {
    @GuardedBy("MessengerIpcClient.class")
    private static zzab zzbt;
    private final ScheduledExecutorService zzbu;
    @GuardedBy("this")
    private zzad zzbv = new zzad(this, null);
    @GuardedBy("this")
    private int zzbw = 1;
    private final Context zzx;

    @VisibleForTesting
    private zzab(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzbu = scheduledExecutorService;
        this.zzx = context.getApplicationContext();
    }

    private final <T> Task<T> zza(zzak<T> zzakVar) {
        Task<T> task;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(zzakVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.zzbv.zzb(zzakVar)) {
                this.zzbv = new zzad(this, null);
                this.zzbv.zzb(zzakVar);
            }
            task = zzakVar.zzcg.getTask();
        }
        return task;
    }

    public static zzab zzc(Context context) {
        zzab zzabVar;
        synchronized (zzab.class) {
            try {
                if (zzbt == null) {
                    zzbt = new zzab(context, Executors.newSingleThreadScheduledExecutor(new NamedThreadFactory("MessengerIpcClient")));
                }
                zzabVar = zzbt;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzabVar;
    }

    private final int zzx() {
        int i;
        synchronized (this) {
            i = this.zzbw;
            this.zzbw = i + 1;
        }
        return i;
    }

    public final Task<Void> zza(int i, Bundle bundle) {
        return zza(new zzaj(zzx(), 2, bundle));
    }

    public final Task<Bundle> zzb(int i, Bundle bundle) {
        return zza(new zzam(zzx(), 1, bundle));
    }
}
