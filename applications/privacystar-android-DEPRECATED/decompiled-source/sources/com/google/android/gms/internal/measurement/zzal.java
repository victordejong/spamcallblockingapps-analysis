package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzal.class */
public final class zzal extends zzau {
    private final zzbi zzvq;

    public zzal(zzaw zzawVar, zzay zzayVar) {
        super(zzawVar);
        Preconditions.checkNotNull(zzayVar);
        this.zzvq = new zzbi(zzawVar, zzayVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void onServiceConnected() {
        zzk.zzaf();
        this.zzvq.onServiceConnected();
    }

    public final void setLocalDispatchPeriod(int i) {
        zzcl();
        zzb("setLocalDispatchPeriod (sec)", Integer.valueOf(i));
        zzca().zza(new zzam(this, i));
    }

    public final void start() {
        this.zzvq.start();
    }

    public final long zza(zzaz zzazVar) {
        zzcl();
        Preconditions.checkNotNull(zzazVar);
        zzk.zzaf();
        long zza = this.zzvq.zza(zzazVar, true);
        if (zza == 0) {
            this.zzvq.zzb(zzazVar);
        }
        return zza;
    }

    public final void zza(zzcd zzcdVar) {
        zzcl();
        zzca().zza(new zzar(this, zzcdVar));
    }

    public final void zza(zzck zzckVar) {
        Preconditions.checkNotNull(zzckVar);
        zzcl();
        zzb("Hit delivery requested", zzckVar);
        zzca().zza(new zzap(this, zzckVar));
    }

    public final void zza(String str, Runnable runnable) {
        Preconditions.checkNotEmpty(str, "campaign param can't be empty");
        zzca().zza(new zzao(this, str, runnable));
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
        this.zzvq.zzq();
    }

    public final void zzbr() {
        zzcl();
        zzca().zza(new zzaq(this));
    }

    public final void zzbs() {
        zzcl();
        Context context = getContext();
        if (!zzcw.zza(context) || !zzcx.zze(context)) {
            zza((zzcd) null);
            return;
        }
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
        context.startService(intent);
    }

    public final boolean zzbt() {
        zzcl();
        try {
            zzca().zza(new zzas(this)).get(4L, TimeUnit.SECONDS);
            return true;
        } catch (InterruptedException e) {
            zzd("syncDispatchLocalHits interrupted", e);
            return false;
        } catch (ExecutionException e2) {
            zze("syncDispatchLocalHits failed", e2);
            return false;
        } catch (TimeoutException e3) {
            zzd("syncDispatchLocalHits timed out", e3);
            return false;
        }
    }

    public final void zzbu() {
        zzcl();
        zzk.zzaf();
        zzbi zzbiVar = this.zzvq;
        zzk.zzaf();
        zzbiVar.zzcl();
        zzbiVar.zzq("Service disconnected");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzbv() {
        zzk.zzaf();
        this.zzvq.zzbv();
    }
}
