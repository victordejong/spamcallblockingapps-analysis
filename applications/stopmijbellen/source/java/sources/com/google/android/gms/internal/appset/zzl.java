package com.google.android.gms.internal.appset;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/appset/zzl.class */
public final class zzl implements AppSetIdClient {
    private static AppSetIdClient zza;
    private final Context zzb;
    private boolean zzc;
    private final ScheduledExecutorService zzd;
    private final ExecutorService zze = Executors.newSingleThreadExecutor();

    public zzl(Context context) {
        this.zzc = false;
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.zzd = newSingleThreadScheduledExecutor;
        this.zzb = context;
        if (!this.zzc) {
            newSingleThreadScheduledExecutor.scheduleAtFixedRate(new zzj(this, null), 0L, 86400L, TimeUnit.SECONDS);
            this.zzc = true;
        }
    }

    public static AppSetIdClient zzc(Context context) {
        AppSetIdClient appSetIdClient;
        synchronized (zzl.class) {
            try {
                Preconditions.checkNotNull(context, "Context must not be null");
                if (zza == null) {
                    zza = new zzl(context.getApplicationContext());
                }
                appSetIdClient = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return appSetIdClient;
    }

    public static final void zze(Context context) {
        if (!zzf(context).edit().remove("app_set_id").commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            if (valueOf.length() != 0) {
                "Failed to clear app set ID generated for App ".concat(valueOf);
            }
        }
        if (!zzf(context).edit().remove("app_set_id_last_used_time").commit()) {
            String valueOf2 = String.valueOf(context.getPackageName());
            if (valueOf2.length() == 0) {
                return;
            }
            "Failed to clear app set ID last used time for App ".concat(valueOf2);
        }
    }

    private static final SharedPreferences zzf(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    private static final void zzg(Context context) throws zzk {
        SharedPreferences zzf = zzf(context);
        if (!zzf.edit().putLong("app_set_id_last_used_time", DefaultClock.getInstance().currentTimeMillis()).commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            if (valueOf.length() != 0) {
                "Failed to store app set ID last used time for App ".concat(valueOf);
            }
            throw new zzk("Failed to store the app set ID last used time.");
        }
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> getAppSetIdInfo() {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.appset.zzh
            @Override // java.lang.Runnable
            public final void run() {
                zzl.this.zzd(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    public final long zza() {
        long j = zzf(this.zzb).getLong("app_set_id_last_used_time", -1L);
        if (j != -1) {
            return j + 33696000000L;
        }
        return -1L;
    }

    public final /* synthetic */ void zzd(TaskCompletionSource taskCompletionSource) {
        String string = zzf(this.zzb).getString("app_set_id", null);
        long zza2 = zza();
        if (string == null || DefaultClock.getInstance().currentTimeMillis() > zza2) {
            string = UUID.randomUUID().toString();
            try {
                Context context = this.zzb;
                if (!zzf(context).edit().putString("app_set_id", string).commit()) {
                    String valueOf = String.valueOf(context.getPackageName());
                    if (valueOf.length() != 0) {
                        "Failed to store app set ID generated for App ".concat(valueOf);
                    }
                    throw new zzk("Failed to store the app set ID.");
                }
                zzg(context);
                Context context2 = this.zzb;
                SharedPreferences zzf = zzf(context2);
                if (!zzf.edit().putLong("app_set_id_creation_time", DefaultClock.getInstance().currentTimeMillis()).commit()) {
                    String valueOf2 = String.valueOf(context2.getPackageName());
                    if (valueOf2.length() != 0) {
                        "Failed to store app set ID creation time for App ".concat(valueOf2);
                    }
                    throw new zzk("Failed to store the app set ID creation time.");
                }
            } catch (zzk e) {
                taskCompletionSource.setException(e);
                return;
            }
        } else {
            try {
                zzg(this.zzb);
            } catch (zzk e2) {
                taskCompletionSource.setException(e2);
                return;
            }
        }
        taskCompletionSource.setResult(new AppSetIdInfo(string, 1));
    }
}
