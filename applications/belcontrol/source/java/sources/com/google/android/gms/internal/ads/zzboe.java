package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboe.class */
public final class zzboe {
    private final Executor executor;
    private volatile boolean zzafd = true;
    private final ScheduledExecutorService zzfri;
    private final zzdzw<zzbnz> zzfwn;

    public zzboe(Executor executor, ScheduledExecutorService scheduledExecutorService, zzdzw<zzbnz> zzdzwVar) {
        this.executor = executor;
        this.zzfri = scheduledExecutorService;
        this.zzfwn = zzdzwVar;
    }

    public final void zza(List<? extends zzdzw<? extends zzbnt>> list, zzdzl<zzbnt> zzdzlVar) {
        if (list == null || list.isEmpty()) {
            this.executor.execute(new Runnable(zzdzlVar) { // from class: com.google.android.gms.internal.ads.zzbod
                private final zzdzl zzfwm;

                {
                    this.zzfwm = zzdzlVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfwm.zzb(new zzcmb(zzdom.NO_FILL));
                }
            });
            return;
        }
        zzdzw zzag = zzdzk.zzag((Object) null);
        Iterator<? extends zzdzw<? extends zzbnt>> it = list.iterator();
        zzdzw zzdzwVar = zzag;
        while (true) {
            zzdzw zzdzwVar2 = zzdzwVar;
            if (!it.hasNext()) {
                zzdzk.zza(zzdzwVar2, new zzbok(this, zzdzlVar), this.executor);
                return;
            } else {
                zzdzwVar = zzdzk.zzb(zzdzk.zzb(zzdzwVar2, Throwable.class, new zzbog(zzdzlVar), this.executor), new zzbof(this, zzdzlVar, it.next()), this.executor);
            }
        }
    }

    public final void zzaku() {
        zzazp.zzeig.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzboi
            private final zzboe zzfwo;

            {
                this.zzfwo = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfwo.zzakv();
            }
        });
    }

    public final boolean isLoading() {
        return this.zzafd;
    }

    public final /* synthetic */ zzdzw zza(zzdzl zzdzlVar, zzdzw zzdzwVar, zzbnt zzbntVar) {
        if (zzbntVar != null) {
            zzdzlVar.onSuccess(zzbntVar);
        }
        return zzdzk.zza(zzdzwVar, zzadv.zzdfb.get().longValue(), TimeUnit.MILLISECONDS, this.zzfri);
    }

    public final void zza(zzdzl<zzbnt> zzdzlVar) {
        zzdzk.zza(this.zzfwn, new zzboh(this, zzdzlVar), this.executor);
    }

    public final /* synthetic */ void zzakv() {
        this.zzafd = false;
    }
}
