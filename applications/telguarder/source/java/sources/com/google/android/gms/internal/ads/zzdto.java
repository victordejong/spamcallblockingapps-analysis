package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdto.class */
public final class zzdto {
    private final Context context;
    private final Executor executor;
    private final zzdtu zzhtb;
    private final zzdtu zzhtc;
    private Task<zzcf.zza> zzhtd;
    private Task<zzcf.zza> zzhte;
    private final zzdsy zzvs;
    private final zzdtc zzyn;

    private zzdto(Context context, Executor executor, zzdsy zzdsyVar, zzdtc zzdtcVar, zzdts zzdtsVar, zzdtr zzdtrVar) {
        this.context = context;
        this.executor = executor;
        this.zzvs = zzdsyVar;
        this.zzyn = zzdtcVar;
        this.zzhtb = zzdtsVar;
        this.zzhtc = zzdtrVar;
    }

    private static zzcf.zza zza(Task<zzcf.zza> task, zzcf.zza zzaVar) {
        return !task.isSuccessful() ? zzaVar : task.getResult();
    }

    public static zzdto zza(Context context, Executor executor, zzdsy zzdsyVar, zzdtc zzdtcVar) {
        zzdto zzdtoVar = new zzdto(context, executor, zzdsyVar, zzdtcVar, new zzdts(), new zzdtr());
        if (zzdtoVar.zzyn.zzaxq()) {
            zzdtoVar.zzhtd = zzdtoVar.zzd(new Callable(zzdtoVar) { // from class: com.google.android.gms.internal.ads.zzdtn
                private final zzdto zzhta;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzhta = zzdtoVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zzhta.zzaxy();
                }
            });
        } else {
            zzdtoVar.zzhtd = Tasks.forResult(zzdtoVar.zzhtb.zzaxz());
        }
        zzdtoVar.zzhte = zzdtoVar.zzd(new Callable(zzdtoVar) { // from class: com.google.android.gms.internal.ads.zzdtq
            private final zzdto zzhta;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhta = zzdtoVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhta.zzaxx();
            }
        });
        return zzdtoVar;
    }

    private final Task<zzcf.zza> zzd(Callable<zzcf.zza> callable) {
        return Tasks.call(this.executor, callable).addOnFailureListener(this.executor, new OnFailureListener(this) { // from class: com.google.android.gms.internal.ads.zzdtp
            private final zzdto zzhta;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhta = this;
            }

            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.zzhta.zzc(exc);
            }
        });
    }

    public final zzcf.zza zzaxw() {
        return zza(this.zzhtd, this.zzhtb.zzaxz());
    }

    public final /* synthetic */ zzcf.zza zzaxx() throws Exception {
        return this.zzhtc.zzck(this.context);
    }

    public final /* synthetic */ zzcf.zza zzaxy() throws Exception {
        return this.zzhtb.zzck(this.context);
    }

    public final /* synthetic */ void zzc(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.zzvs.zza(2025, -1L, exc);
    }

    public final zzcf.zza zzco() {
        return zza(this.zzhte, this.zzhtc.zzaxz());
    }
}
