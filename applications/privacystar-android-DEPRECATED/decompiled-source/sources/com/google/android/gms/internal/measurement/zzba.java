package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.os.RemoteException;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzba.class */
public final class zzba extends zzau {
    private final zzbc zzww = new zzbc(this);
    private zzcl zzwx;
    private final zzbz zzwy;
    private final zzdc zzwz;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzba(zzaw zzawVar) {
        super(zzawVar);
        this.zzwz = new zzdc(zzawVar.zzbx());
        this.zzwy = new zzbb(this, zzawVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onServiceDisconnected(ComponentName componentName) {
        zzk.zzaf();
        if (this.zzwx != null) {
            this.zzwx = null;
            zza("Disconnected from device AnalyticsService", componentName);
            zzcc().zzbu();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzcl zzclVar) {
        zzk.zzaf();
        this.zzwx = zzclVar;
        zzcy();
        zzcc().onServiceConnected();
    }

    private final void zzcy() {
        this.zzwz.start();
        this.zzwy.zzh(zzcf.zzaaf.get().longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzcz() {
        zzk.zzaf();
        if (isConnected()) {
            zzq("Inactivity, disconnecting from device AnalyticsService");
            disconnect();
        }
    }

    public final boolean connect() {
        zzk.zzaf();
        zzcl();
        if (this.zzwx != null) {
            return true;
        }
        zzcl zzda = this.zzww.zzda();
        if (zzda == null) {
            return false;
        }
        this.zzwx = zzda;
        zzcy();
        return true;
    }

    public final void disconnect() {
        zzk.zzaf();
        zzcl();
        try {
            ConnectionTracker.getInstance().unbindService(getContext(), this.zzww);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        if (this.zzwx != null) {
            this.zzwx = null;
            zzcc().zzbu();
        }
    }

    public final boolean isConnected() {
        zzk.zzaf();
        zzcl();
        return this.zzwx != null;
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
    }

    public final boolean zzb(zzck zzckVar) {
        Preconditions.checkNotNull(zzckVar);
        zzk.zzaf();
        zzcl();
        zzcl zzclVar = this.zzwx;
        if (zzclVar == null) {
            return false;
        }
        try {
            zzclVar.zza(zzckVar.zzcw(), zzckVar.zzer(), zzckVar.zzet() ? zzbx.zzed() : zzbx.zzee(), Collections.emptyList());
            zzcy();
            return true;
        } catch (RemoteException e) {
            zzq("Failed to send hits to AnalyticsService");
            return false;
        }
    }

    public final boolean zzcx() {
        zzk.zzaf();
        zzcl();
        zzcl zzclVar = this.zzwx;
        if (zzclVar == null) {
            return false;
        }
        try {
            zzclVar.zzbr();
            zzcy();
            return true;
        } catch (RemoteException e) {
            zzq("Failed to clear hits from AnalyticsService");
            return false;
        }
    }
}
