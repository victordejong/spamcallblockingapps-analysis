package com.google.android.gms.internal.firebase_remote_config;

import android.util.Log;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzei.class */
public final class zzei {
    private static final Map<String, zzei> zzkg = new HashMap();
    private static final Executor zzkk = zzem.zzko;
    private final ExecutorService zzkh;
    private final zzex zzki;
    private Task<zzen> zzkj = null;

    private zzei(ExecutorService executorService, zzex zzexVar) {
        this.zzkh = executorService;
        this.zzki = zzexVar;
    }

    public static zzei zza(ExecutorService executorService, zzex zzexVar) {
        zzei zzeiVar;
        synchronized (zzei.class) {
            try {
                String fileName = zzexVar.getFileName();
                if (!zzkg.containsKey(fileName)) {
                    zzkg.put(fileName, new zzei(executorService, zzexVar));
                }
                zzeiVar = zzkg.get(fileName);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzeiVar;
    }

    private final void zzd(zzen zzenVar) {
        synchronized (this) {
            this.zzkj = Tasks.forResult(zzenVar);
        }
    }

    public final void clear() {
        synchronized (this) {
            this.zzkj = Tasks.forResult(null);
        }
        this.zzki.zzdc();
    }

    public final Task<zzen> zza(zzen zzenVar, boolean z) {
        return Tasks.call(this.zzkh, new Callable(this, zzenVar) { // from class: com.google.android.gms.internal.firebase_remote_config.zzeh
            private final zzei zzke;
            private final zzen zzkf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzke = this;
                this.zzkf = zzenVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzke.zze(this.zzkf);
            }
        }).onSuccessTask(this.zzkh, new SuccessContinuation(this, z, zzenVar) { // from class: com.google.android.gms.internal.firebase_remote_config.zzek
            private final zzei zzke;
            private final boolean zzkm;
            private final zzen zzkn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzke = this;
                this.zzkm = z;
                this.zzkn = zzenVar;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.zzke.zza(this.zzkm, this.zzkn, (Void) obj);
            }
        });
    }

    public final /* synthetic */ Task zza(boolean z, zzen zzenVar, Void r6) {
        if (z) {
            zzd(zzenVar);
        }
        return Tasks.forResult(zzenVar);
    }

    public final zzen zzb(long j) {
        synchronized (this) {
            if (this.zzkj != null && this.zzkj.isSuccessful()) {
                return this.zzkj.getResult();
            }
            try {
                Task<zzen> zzcp = zzcp();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                zzeo zzeoVar = new zzeo();
                zzcp.addOnSuccessListener(zzkk, zzeoVar);
                zzcp.addOnFailureListener(zzkk, zzeoVar);
                zzcp.addOnCanceledListener(zzkk, zzeoVar);
                if (!zzeoVar.await(5L, timeUnit)) {
                    throw new TimeoutException("Task await timed out.");
                }
                if (!zzcp.isSuccessful()) {
                    throw new ExecutionException(zzcp.getException());
                }
                return zzcp.getResult();
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                Log.d("ConfigCacheClient", "Reading from storage file failed.", e);
                return null;
            }
        }
    }

    public final Task<zzen> zzb(zzen zzenVar) {
        zzd(zzenVar);
        return zza(zzenVar, false);
    }

    public final Task<zzen> zzc(zzen zzenVar) {
        return zza(zzenVar, true);
    }

    public final zzen zzco() {
        return zzb(5L);
    }

    public final Task<zzen> zzcp() {
        Task<zzen> task;
        synchronized (this) {
            if (this.zzkj == null || (this.zzkj.isComplete() && !this.zzkj.isSuccessful())) {
                ExecutorService executorService = this.zzkh;
                zzex zzexVar = this.zzki;
                zzexVar.getClass();
                this.zzkj = Tasks.call(executorService, zzej.zza(zzexVar));
            }
            task = this.zzkj;
        }
        return task;
    }

    public final /* synthetic */ Void zze(zzen zzenVar) {
        return this.zzki.zzh(zzenVar);
    }
}
