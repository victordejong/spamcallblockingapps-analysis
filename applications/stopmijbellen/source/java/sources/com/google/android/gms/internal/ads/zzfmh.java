package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfmh.class */
public final class zzfmh {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzf = 1;
    private final Context zzb;
    private final Executor zzc;
    private final Task<zzfoj> zzd;
    private final boolean zze;

    public zzfmh(Context context, Executor executor, Task<zzfoj> task, boolean z) {
        this.zzb = context;
        this.zzc = executor;
        this.zzd = task;
        this.zze = z;
    }

    public static zzfmh zza(final Context context, Executor executor, boolean z) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (z) {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfmf
                @Override // java.lang.Runnable
                public final void run() {
                    taskCompletionSource.setResult(zzfoj.zzb(context, "GLAS", null));
                }
            });
        } else {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfmg
                @Override // java.lang.Runnable
                public final void run() {
                    TaskCompletionSource.this.setResult(zzfoj.zzc());
                }
            });
        }
        return new zzfmh(context, executor, taskCompletionSource.getTask(), z);
    }

    public static void zzg(int i) {
        zzf = i;
    }

    private final Task<Boolean> zzh(final int i, long j, Exception exc, String str, Map<String, String> map, String str2) {
        if (!this.zze) {
            return this.zzd.continueWith(this.zzc, zzfme.zza);
        }
        final zzail zza2 = zzaip.zza();
        zza2.zza(this.zzb.getPackageName());
        zza2.zze(j);
        zza2.zzg(zzf);
        if (exc != null) {
            zza2.zzf(zzfqt.zza(exc));
            zza2.zzd(exc.getClass().getName());
        }
        if (str2 != null) {
            zza2.zzb(str2);
        }
        if (str != null) {
            zza2.zzc(str);
        }
        return this.zzd.continueWith(this.zzc, new Continuation() { // from class: com.google.android.gms.internal.ads.zzfmd
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Boolean bool;
                zzail zzailVar = zzail.this;
                int i2 = i;
                int i3 = zzfmh.zza;
                if (task.isSuccessful()) {
                    zzfoi zza3 = ((zzfoj) task.getResult()).zza(zzailVar.zzah().zzar());
                    zza3.zza(i2);
                    zza3.zzc();
                    bool = Boolean.TRUE;
                } else {
                    bool = Boolean.FALSE;
                }
                return bool;
            }
        });
    }

    public final Task<Boolean> zzb(int i, String str) {
        return zzh(i, 0L, null, null, null, str);
    }

    public final Task<Boolean> zzc(int i, long j, Exception exc) {
        return zzh(i, j, exc, null, null, null);
    }

    public final Task<Boolean> zzd(int i, long j) {
        return zzh(i, j, null, null, null, null);
    }

    public final Task<Boolean> zze(int i, long j, String str) {
        return zzh(i, j, null, null, null, str);
    }

    public final Task<Boolean> zzf(int i, long j, String str, Map<String, String> map) {
        return zzh(i, j, null, str, null, null);
    }
}
