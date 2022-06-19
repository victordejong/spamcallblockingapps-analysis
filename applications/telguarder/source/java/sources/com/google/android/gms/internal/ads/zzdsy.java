package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsy.class */
public final class zzdsy {
    private static volatile zzbw.zza.zzc zzhsm = zzbw.zza.zzc.UNKNOWN;
    private final Context context;
    private final Executor executor;
    private final Task<zztz> zzhsl;

    private zzdsy(Context context, Executor executor, Task<zztz> task) {
        this.context = context;
        this.executor = executor;
        this.zzhsl = task;
    }

    public static zzdsy zza(Context context, Executor executor) {
        return new zzdsy(context, executor, Tasks.call(executor, new Callable(context) { // from class: com.google.android.gms.internal.ads.zzdta
            private final Context zzcmi;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcmi = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdsy.zzcj(this.zzcmi);
            }
        }));
    }

    private final Task<Boolean> zza(int i, long j, Exception exc, String str, Map<String, String> map, String str2) {
        zzbw.zza.zzb zzd = zzbw.zza.zzs().zzo(this.context.getPackageName()).zzd(j);
        zzd.zzb(zzhsm);
        if (exc != null) {
            zzd.zzp(zzdwv.zza(exc)).zzq(exc.getClass().getName());
        }
        if (str2 != null) {
            zzd.zzr(str2);
        }
        if (str != null) {
            zzd.zzs(str);
        }
        return this.zzhsl.continueWith(this.executor, new Continuation(zzd, i) { // from class: com.google.android.gms.internal.ads.zzdsz
            private final int zzefe;
            private final zzbw.zza.zzb zzhsn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhsn = zzd;
                this.zzefe = i;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return zzdsy.zza(this.zzhsn, this.zzefe, task);
            }
        });
    }

    public static final /* synthetic */ Boolean zza(zzbw.zza.zzb zzbVar, int i, Task task) throws Exception {
        if (task.isSuccessful()) {
            zzud zzf = ((zztz) task.getResult()).zzf(((zzbw.zza) ((zzelb) zzbVar.zzbiw())).toByteArray());
            zzf.zzbv(i);
            zzf.log();
            return true;
        }
        return false;
    }

    public static void zza(zzbw.zza.zzc zzcVar) {
        zzhsm = zzcVar;
    }

    public static final /* synthetic */ zztz zzcj(Context context) throws Exception {
        return new zztz(context, "GLAS", null);
    }

    public final Task<Boolean> zza(int i, long j, Exception exc) {
        return zza(i, j, exc, null, null, null);
    }

    public final Task<Boolean> zza(int i, long j, String str, Map<String, String> map) {
        return zza(i, j, null, str, null, null);
    }

    public final Task<Boolean> zzb(int i, long j, String str) {
        return zza(i, j, null, null, null, str);
    }

    public final Task<Boolean> zzg(int i, String str) {
        return zza(i, 0L, null, null, null, str);
    }

    public final Task<Boolean> zzh(int i, long j) {
        return zza(i, j, null, null, null, null);
    }
}
