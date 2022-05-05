package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.IntentFilter;
import com.google.android.gms.common.util.VisibleForTesting;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfn.class */
public final class zzfn extends zzfm {
    private static final Object zzbfn = new Object();
    private static zzfn zzbfy;
    private Context zzbfo;
    private zzcb zzbfp;
    private volatile zzby zzbfq;
    private zzfq zzbfv;
    private zzdn zzbfw;
    private int zzbfr = 1800000;
    private boolean zzbfs = true;
    private boolean zzbft = false;
    private boolean connected = true;
    private boolean zzbfu = true;
    private zzcc zzbdh = new zzfo(this);
    private boolean zzbfx = false;

    private zzfn() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isPowerSaveMode() {
        return this.zzbfx || !this.connected || this.zzbfr <= 0;
    }

    public static zzfn zzpu() {
        if (zzbfy == null) {
            zzbfy = new zzfn();
        }
        return zzbfy;
    }

    @Override // com.google.android.gms.tagmanager.zzfm
    public final void dispatch() {
        synchronized (this) {
            if (!this.zzbft) {
                zzdi.m328v("Dispatch call queued. Dispatch will run once initialization is complete.");
                this.zzbfs = true;
                return;
            }
            this.zzbfq.zzh(new zzfp(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(Context context, zzby zzbyVar) {
        synchronized (this) {
            if (this.zzbfo == null) {
                this.zzbfo = context.getApplicationContext();
                if (this.zzbfq == null) {
                    this.zzbfq = zzbyVar;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zza(boolean z, boolean z2) {
        synchronized (this) {
            boolean isPowerSaveMode = isPowerSaveMode();
            this.zzbfx = z;
            this.connected = z2;
            if (isPowerSaveMode() != isPowerSaveMode) {
                if (isPowerSaveMode()) {
                    this.zzbfv.cancel();
                    zzdi.m328v("PowerSaveMode initiated.");
                    return;
                }
                this.zzbfv.zzh(this.zzbfr);
                zzdi.m328v("PowerSaveMode terminated.");
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzfm
    public final void zzpt() {
        synchronized (this) {
            if (!isPowerSaveMode()) {
                this.zzbfv.zzpx();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzcb zzpv() {
        zzcb zzcbVar;
        synchronized (this) {
            if (this.zzbfp == null) {
                if (this.zzbfo == null) {
                    throw new IllegalStateException("Cant get a store unless we have a context");
                }
                this.zzbfp = new zzeb(this.zzbdh, this.zzbfo);
            }
            if (this.zzbfv == null) {
                this.zzbfv = new zzfr(this, null);
                if (this.zzbfr > 0) {
                    this.zzbfv.zzh(this.zzbfr);
                }
            }
            this.zzbft = true;
            if (this.zzbfs) {
                dispatch();
                this.zzbfs = false;
            }
            if (this.zzbfw == null && this.zzbfu) {
                this.zzbfw = new zzdn(this);
                zzdn zzdnVar = this.zzbfw;
                Context context = this.zzbfo;
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.registerReceiver(zzdnVar, intentFilter);
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("com.google.analytics.RADIO_POWERED");
                intentFilter2.addCategory(context.getPackageName());
                context.registerReceiver(zzdnVar, intentFilter2);
            }
            zzcbVar = this.zzbfp;
        }
        return zzcbVar;
    }

    @Override // com.google.android.gms.tagmanager.zzfm
    public final void zzr(boolean z) {
        synchronized (this) {
            zza(this.zzbfx, z);
        }
    }
}
