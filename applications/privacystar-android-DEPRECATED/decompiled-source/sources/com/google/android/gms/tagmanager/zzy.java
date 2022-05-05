package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import androidx.work.PeriodicWorkRequest;
import com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzrq;
import com.google.android.gms.internal.measurement.zzrr;
import com.google.android.gms.internal.measurement.zzrw;
import com.google.android.gms.tagmanager.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzy.class */
public final class zzy extends BasePendingResult<ContainerHolder> {
    private final String zzazf;
    private long zzazk;
    private final Looper zzazn;
    private final TagManager zzazt;
    private final zzaf zzazw;
    private final zzej zzazx;
    private final int zzazy;
    private final zzai zzazz;
    private zzah zzbaa;
    private zzrr zzbab;
    private volatile zzv zzbac;
    private volatile boolean zzbad;
    private zzo zzbae;
    private String zzbaf;
    private zzag zzbag;
    private zzac zzbah;
    private final Context zzri;
    private final Clock zzrz;

    @VisibleForTesting
    private zzy(Context context, TagManager tagManager, Looper looper, String str, int i, zzah zzahVar, zzag zzagVar, zzrr zzrrVar, Clock clock, zzej zzejVar, zzai zzaiVar) {
        super(looper == null ? Looper.getMainLooper() : looper);
        this.zzri = context;
        this.zzazt = tagManager;
        this.zzazn = looper == null ? Looper.getMainLooper() : looper;
        this.zzazf = str;
        this.zzazy = i;
        this.zzbaa = zzahVar;
        this.zzbag = zzagVar;
        this.zzbab = zzrrVar;
        this.zzazw = new zzaf(this, null);
        this.zzbae = new zzo();
        this.zzrz = clock;
        this.zzazx = zzejVar;
        this.zzazz = zzaiVar;
        if (zznn()) {
            zzdb(zzeh.zzpc().zzpe());
        }
    }

    public zzy(Context context, TagManager tagManager, Looper looper, String str, int i, zzal zzalVar) {
        this(context, tagManager, looper, str, i, new zzex(context, str), new zzes(context, str, zzalVar), new zzrr(context), DefaultClock.getInstance(), new zzdg(1, 5, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS, HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS, "refreshing", DefaultClock.getInstance()), new zzai(context, str));
        this.zzbab.zzfd(zzalVar.zznv());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzo zzoVar) {
        synchronized (this) {
            if (this.zzbaa != null) {
                zzrq zzrqVar = new zzrq();
                zzrqVar.zzbps = this.zzazk;
                zzrqVar.zzqg = new zzl();
                zzrqVar.zzbpt = zzoVar;
                this.zzbaa.zza(zzrqVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzo zzoVar, long j, boolean z) {
        synchronized (this) {
            if (z) {
                boolean z2 = this.zzbad;
            }
            if (!isReady() || this.zzbac != null) {
                this.zzbae = zzoVar;
                this.zzazk = j;
                long zznq = this.zzazz.zznq();
                zzap(Math.max(0L, Math.min(zznq, (this.zzazk + zznq) - this.zzrz.currentTimeMillis())));
                Container container = new Container(this.zzri, this.zzazt.getDataLayer(), this.zzazf, j, zzoVar);
                if (this.zzbac == null) {
                    this.zzbac = new zzv(this.zzazt, this.zzazn, container, this.zzazw);
                } else {
                    this.zzbac.zza(container);
                }
                if (!isReady() && this.zzbah.zzb(container)) {
                    setResult(this.zzbac);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzap(long j) {
        synchronized (this) {
            if (this.zzbag == null) {
                zzdi.zzab("Refresh requested, but no network load scheduler.");
            } else {
                this.zzbag.zza(j, this.zzbae.zzqh);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zznn() {
        zzeh zzpc = zzeh.zzpc();
        return (zzpc.zzpd() == zzeh.zza.CONTAINER || zzpc.zzpd() == zzeh.zza.CONTAINER_DEBUG) && this.zzazf.equals(zzpc.getContainerId());
    }

    private final void zzp(boolean z) {
        this.zzbaa.zza(new zzad(this, null));
        this.zzbag.zza(new zzae(this, null));
        zzrw zzu = this.zzbaa.zzu(this.zzazy);
        if (zzu != null) {
            this.zzbac = new zzv(this.zzazt, this.zzazn, new Container(this.zzri, this.zzazt.getDataLayer(), this.zzazf, 0L, zzu), this.zzazw);
        }
        this.zzbah = new zzab(this, z);
        if (zznn()) {
            this.zzbag.zza(0L, "");
        } else {
            this.zzbaa.zznp();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a_ */
    public final ContainerHolder createFailedResult(Status status) {
        if (this.zzbac != null) {
            return this.zzbac;
        }
        if (status == Status.RESULT_TIMEOUT) {
            zzdi.m329e("timer expired: setting result to failure");
        }
        return new zzv(status);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzdb(String str) {
        synchronized (this) {
            this.zzbaf = str;
            if (this.zzbag != null) {
                this.zzbag.zzdc(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zznh() {
        String str;
        synchronized (this) {
            str = this.zzbaf;
        }
        return str;
    }

    public final void zznk() {
        zzrw zzu = this.zzbaa.zzu(this.zzazy);
        if (zzu != null) {
            setResult(new zzv(this.zzazt, this.zzazn, new Container(this.zzri, this.zzazt.getDataLayer(), this.zzazf, 0L, zzu), new zzaa(this)));
        } else {
            zzdi.m329e("Default was requested, but no default container was found");
            setResult(createFailedResult(new Status(10, "Default was requested, but no default container was found", null)));
        }
        this.zzbag = null;
        this.zzbaa = null;
    }

    public final void zznl() {
        zzp(false);
    }

    public final void zznm() {
        zzp(true);
    }
}
