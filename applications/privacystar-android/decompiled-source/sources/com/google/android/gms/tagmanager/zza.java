package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import androidx.work.PeriodicWorkRequest;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.privacystar.core.util.DateUtil;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zza.class */
public final class zza {
    private static Object zzayt = new Object();
    private static zza zzayu;
    private volatile boolean closed;
    private volatile long zzaym;
    private volatile long zzayn;
    private volatile long zzayo;
    private volatile long zzayp;
    private final Thread zzayq;
    private final Object zzayr;
    private zzd zzays;
    private final Context zzri;
    private final Clock zzrz;
    private volatile AdvertisingIdClient.Info zzvl;

    private zza(Context context) {
        this(context, null, DefaultClock.getInstance());
    }

    @VisibleForTesting
    private zza(Context context, zzd zzdVar, Clock clock) {
        this.zzaym = PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS;
        this.zzayn = 30000L;
        this.closed = false;
        this.zzayr = new Object();
        this.zzays = new zzb(this);
        this.zzrz = clock;
        if (context != null) {
            this.zzri = context.getApplicationContext();
        } else {
            this.zzri = context;
        }
        this.zzayo = this.zzrz.currentTimeMillis();
        this.zzayq = new Thread(new zzc(this));
    }

    private final void zzmw() {
        synchronized (this) {
            try {
                if (!this.closed) {
                    zzmx();
                    wait(500L);
                }
            } catch (InterruptedException e) {
            }
        }
    }

    private final void zzmx() {
        if (this.zzrz.currentTimeMillis() - this.zzayo > this.zzayn) {
            synchronized (this.zzayr) {
                this.zzayr.notify();
            }
            this.zzayo = this.zzrz.currentTimeMillis();
        }
    }

    private final void zzmy() {
        if (this.zzrz.currentTimeMillis() - this.zzayp > DateUtil.HOUR_IN_MILLIS) {
            this.zzvl = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzmz() {
        Process.setThreadPriority(10);
        while (!this.closed) {
            AdvertisingIdClient.Info zzna = this.zzays.zzna();
            if (zzna != null) {
                this.zzvl = zzna;
                this.zzayp = this.zzrz.currentTimeMillis();
                zzdi.zzdi("Obtained fresh AdvertisingId info from GmsCore.");
            }
            synchronized (this) {
                notifyAll();
            }
            try {
                synchronized (this.zzayr) {
                    this.zzayr.wait(this.zzaym);
                }
            } catch (InterruptedException e) {
                zzdi.zzdi("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    public static zza zzn(Context context) {
        if (zzayu == null) {
            synchronized (zzayt) {
                if (zzayu == null) {
                    zza zzaVar = new zza(context);
                    zzayu = zzaVar;
                    zzaVar.zzayq.start();
                }
            }
        }
        return zzayu;
    }

    @VisibleForTesting
    public final void close() {
        this.closed = true;
        this.zzayq.interrupt();
    }

    public final boolean isLimitAdTrackingEnabled() {
        if (this.zzvl == null) {
            zzmw();
        } else {
            zzmx();
        }
        zzmy();
        if (this.zzvl == null) {
            return true;
        }
        return this.zzvl.isLimitAdTrackingEnabled();
    }

    public final String zzmv() {
        if (this.zzvl == null) {
            zzmw();
        } else {
            zzmx();
        }
        zzmy();
        if (this.zzvl == null) {
            return null;
        }
        return this.zzvl.getId();
    }
}
