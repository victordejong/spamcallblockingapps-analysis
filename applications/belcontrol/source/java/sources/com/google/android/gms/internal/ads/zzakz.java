package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakz.class */
public final class zzakz {
    private final Context context;
    private final Object lock;
    private int status;
    private final zzazn zzbpn;
    private final String zzdjn;
    private zzar<zzakm> zzdjo;
    private zzar<zzakm> zzdjp;
    private zzalq zzdjq;

    private zzakz(Context context, zzazn zzaznVar, String str) {
        this.lock = new Object();
        this.status = 1;
        this.zzdjn = str;
        this.context = context.getApplicationContext();
        this.zzbpn = zzaznVar;
        this.zzdjo = new zzaln();
        this.zzdjp = new zzaln();
    }

    public zzakz(Context context, zzazn zzaznVar, String str, zzar<zzakm> zzarVar, zzar<zzakm> zzarVar2) {
        this(context, zzaznVar, str);
        this.zzdjo = zzarVar;
        this.zzdjp = zzarVar2;
    }

    public final zzalq zza(zzei zzeiVar) {
        zzalq zzalqVar = new zzalq(this.zzdjp);
        zzazp.zzeig.execute(new Runnable(this, zzeiVar, zzalqVar) { // from class: com.google.android.gms.internal.ads.zzaky
            private final zzakz zzdjk;
            private final zzei zzdjl;
            private final zzalq zzdjm;

            {
                this.zzdjk = this;
                this.zzdjl = zzeiVar;
                this.zzdjm = zzalqVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdjk.zza(this.zzdjl, this.zzdjm);
            }
        });
        zzalqVar.zza(new zzali(this, zzalqVar), new zzall(this, zzalqVar));
        return zzalqVar;
    }

    public final /* synthetic */ void zza(zzakm zzakmVar) {
        if (zzakmVar.isDestroyed()) {
            this.status = 1;
        }
    }

    public final /* synthetic */ void zza(zzalq zzalqVar, zzakm zzakmVar) {
        synchronized (this.lock) {
            if (zzalqVar.getStatus() != -1 && zzalqVar.getStatus() != 1) {
                zzalqVar.reject();
                zzdzv zzdzvVar = zzazp.zzeig;
                zzakmVar.getClass();
                zzdzvVar.execute(zzalf.zzb(zzakmVar));
                zzd.zzeb("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }

    public final /* synthetic */ void zza(zzei zzeiVar, zzalq zzalqVar) {
        try {
            zzako zzakoVar = new zzako(this.context, this.zzbpn, zzeiVar, (zzb) null);
            zzakoVar.zza(new zzald(this, zzalqVar, zzakoVar));
            zzakoVar.zza("/jsLoaded", new zzale(this, zzalqVar, zzakoVar));
            zzbs zzbsVar = new zzbs();
            zzalh zzalhVar = new zzalh(this, zzeiVar, zzakoVar, zzbsVar);
            zzbsVar.set(zzalhVar);
            zzakoVar.zza("/requestReload", zzalhVar);
            if (this.zzdjn.endsWith(".js")) {
                zzakoVar.zzcw(this.zzdjn);
            } else if (this.zzdjn.startsWith("<html>")) {
                zzakoVar.zzcy(this.zzdjn);
            } else {
                zzakoVar.zzcx(this.zzdjn);
            }
            zzj.zzeen.postDelayed(new zzalg(this, zzalqVar, zzakoVar), zzalk.zzdkb);
        } catch (Throwable th) {
            zzazk.zzc("Error creating webview.", th);
            zzr.zzkv().zza(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzalqVar.reject();
        }
    }

    public final zzalm zzb(zzei zzeiVar) {
        synchronized (this.lock) {
            synchronized (this.lock) {
                zzalq zzalqVar = this.zzdjq;
                if (zzalqVar != null && this.status == 0) {
                    zzalqVar.zza(new zzalb(this), zzala.zzdjr);
                }
            }
            zzalq zzalqVar2 = this.zzdjq;
            if (zzalqVar2 != null && zzalqVar2.getStatus() != -1) {
                int i = this.status;
                if (i == 0) {
                    return this.zzdjq.zzum();
                } else if (i == 1) {
                    this.status = 2;
                    zza((zzei) null);
                    return this.zzdjq.zzum();
                } else if (i == 2) {
                    return this.zzdjq.zzum();
                } else {
                    return this.zzdjq.zzum();
                }
            }
            this.status = 2;
            zzalq zza = zza((zzei) null);
            this.zzdjq = zza;
            return zza.zzum();
        }
    }
}
