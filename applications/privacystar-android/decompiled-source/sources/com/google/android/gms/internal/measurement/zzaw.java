package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
@SuppressLint({"StaticFieldLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaw.class */
public class zzaw {
    private static volatile zzaw zzwb;
    private final Context zzri;
    private final Context zzwc;
    private final zzcp zzwe;
    private final zzk zzwf;
    private final zzal zzwg;
    private final zzcc zzwh;
    private final zzdh zzwi;
    private final zzct zzwj;
    private final GoogleAnalytics zzwk;
    private final zzbo zzwl;
    private final zzak zzwm;
    private final zzbh zzwn;
    private final zzcb zzwo;
    private final Clock zzrz = DefaultClock.getInstance();
    private final zzbx zzwd = new zzbx(this);

    private zzaw(zzay zzayVar) {
        Context applicationContext = zzayVar.getApplicationContext();
        Preconditions.checkNotNull(applicationContext, "Application context can't be null");
        Context zzcm = zzayVar.zzcm();
        Preconditions.checkNotNull(zzcm);
        this.zzri = applicationContext;
        this.zzwc = zzcm;
        zzcp zzcpVar = new zzcp(this);
        zzcpVar.zzq();
        this.zzwe = zzcpVar;
        zzcp zzby = zzby();
        String str = zzav.VERSION;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 134);
        sb.append("Google Analytics ");
        sb.append(str);
        sb.append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4");
        zzby.zzs(sb.toString());
        zzct zzctVar = new zzct(this);
        zzctVar.zzq();
        this.zzwj = zzctVar;
        zzdh zzdhVar = new zzdh(this);
        zzdhVar.zzq();
        this.zzwi = zzdhVar;
        zzal zzalVar = new zzal(this, zzayVar);
        zzbo zzboVar = new zzbo(this);
        zzak zzakVar = new zzak(this);
        zzbh zzbhVar = new zzbh(this);
        zzcb zzcbVar = new zzcb(this);
        zzk zzb = zzk.zzb(applicationContext);
        zzb.zza(new zzax(this));
        this.zzwf = zzb;
        GoogleAnalytics googleAnalytics = new GoogleAnalytics(this);
        zzboVar.zzq();
        this.zzwl = zzboVar;
        zzakVar.zzq();
        this.zzwm = zzakVar;
        zzbhVar.zzq();
        this.zzwn = zzbhVar;
        zzcbVar.zzq();
        this.zzwo = zzcbVar;
        zzcc zzccVar = new zzcc(this);
        zzccVar.zzq();
        this.zzwh = zzccVar;
        zzalVar.zzq();
        this.zzwg = zzalVar;
        googleAnalytics.zzq();
        this.zzwk = googleAnalytics;
        zzalVar.start();
    }

    private static void zza(zzau zzauVar) {
        Preconditions.checkNotNull(zzauVar, "Analytics service not created/initialized");
        Preconditions.checkArgument(zzauVar.isInitialized(), "Analytics service not initialized");
    }

    public static zzaw zzc(Context context) {
        Preconditions.checkNotNull(context);
        if (zzwb == null) {
            synchronized (zzaw.class) {
                try {
                    if (zzwb == null) {
                        Clock instance = DefaultClock.getInstance();
                        long elapsedRealtime = instance.elapsedRealtime();
                        zzaw zzawVar = new zzaw(new zzay(context));
                        zzwb = zzawVar;
                        GoogleAnalytics.zzr();
                        long elapsedRealtime2 = instance.elapsedRealtime() - elapsedRealtime;
                        long longValue = zzcf.zzaal.get().longValue();
                        if (elapsedRealtime2 > longValue) {
                            zzawVar.zzby().zzc("Slow initialization (ms)", Long.valueOf(elapsedRealtime2), Long.valueOf(longValue));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzwb;
    }

    public final Context getContext() {
        return this.zzri;
    }

    public final Clock zzbx() {
        return this.zzrz;
    }

    public final zzcp zzby() {
        zza(this.zzwe);
        return this.zzwe;
    }

    public final zzbx zzbz() {
        return this.zzwd;
    }

    public final zzk zzca() {
        Preconditions.checkNotNull(this.zzwf);
        return this.zzwf;
    }

    public final zzal zzcc() {
        zza(this.zzwg);
        return this.zzwg;
    }

    public final zzcc zzcd() {
        zza(this.zzwh);
        return this.zzwh;
    }

    public final zzdh zzce() {
        zza(this.zzwi);
        return this.zzwi;
    }

    public final zzct zzcf() {
        zza(this.zzwj);
        return this.zzwj;
    }

    public final zzbh zzci() {
        zza(this.zzwn);
        return this.zzwn;
    }

    public final zzcb zzcj() {
        return this.zzwo;
    }

    public final Context zzcm() {
        return this.zzwc;
    }

    public final zzcp zzcn() {
        return this.zzwe;
    }

    public final GoogleAnalytics zzco() {
        Preconditions.checkNotNull(this.zzwk);
        Preconditions.checkArgument(this.zzwk.isInitialized(), "Analytics instance not initialized");
        return this.zzwk;
    }

    public final zzct zzcp() {
        if (this.zzwj == null || !this.zzwj.isInitialized()) {
            return null;
        }
        return this.zzwj;
    }

    public final zzak zzcq() {
        zza(this.zzwm);
        return this.zzwm;
    }

    public final zzbo zzcr() {
        zza(this.zzwl);
        return this.zzwl;
    }
}
