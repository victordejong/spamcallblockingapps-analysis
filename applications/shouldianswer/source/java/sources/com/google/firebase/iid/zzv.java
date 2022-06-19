package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.firebase_messaging.zza;
import com.google.android.gms.internal.firebase_messaging.zzf;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzv.class */
public final class zzv {
    private static zzv zza;
    private final Context zzb;
    private final ScheduledExecutorService zzc;
    private zzw zzd = new zzw(this);
    private int zze = 1;

    private zzv(Context context, ScheduledExecutorService scheduledExecutorService) {
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

    private final <T> Task<T> zza(zzah<T> zzahVar) {
        Task<T> task;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(zzahVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.zzd.zza((zzah<?>) zzahVar)) {
                this.zzd = new zzw(this);
                this.zzd.zza((zzah<?>) zzahVar);
            }
            task = zzahVar.zzb.getTask();
        }
        return task;
    }

    public static zzv zza(Context context) {
        zzv zzvVar;
        synchronized (zzv.class) {
            try {
                if (zza == null) {
                    zza = new zzv(context, zza.zza().zza(1, new NamedThreadFactory("MessengerIpcClient"), zzf.zza));
                }
                zzvVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzvVar;
    }

    public final Task<Void> zza(int i, Bundle bundle) {
        return zza(new zzae(zza(), 2, bundle));
    }

    public final Task<Bundle> zzb(int i, Bundle bundle) {
        return zza(new zzaj(zza(), 1, bundle));
    }
}
