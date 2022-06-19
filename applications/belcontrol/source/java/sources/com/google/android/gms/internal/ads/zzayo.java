package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.util.zzi;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayo.class */
public final class zzayo {
    private Context context;
    private zzazn zzbpn;
    private final zzayy zzebw;
    private final zzi zzece;
    private zzdzw<ArrayList<String>> zzeck;
    private final Object lock = new Object();
    private boolean zzzl = false;
    private zzabs zzecf = null;
    private Boolean zzecg = null;
    private final AtomicInteger zzech = new AtomicInteger(0);
    private final zzayt zzeci = new zzayt(null);
    private final Object zzecj = new Object();

    public zzayo() {
        zzi zziVar = new zzi();
        this.zzece = zziVar;
        this.zzebw = new zzayy(zzwr.zzqs(), zziVar);
    }

    @TargetApi(16)
    private static ArrayList<String> zzah(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(context.getApplicationInfo().packageName, 4096);
            if (packageInfo.requestedPermissions != null && packageInfo.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = packageInfo.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((packageInfo.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(strArr[i]);
                    }
                    i++;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return arrayList;
    }

    public final Context getApplicationContext() {
        return this.context;
    }

    public final Resources getResources() {
        if (this.zzbpn.zzeia) {
            return this.context.getResources();
        }
        try {
            zzazj.zzbt(this.context).getResources();
            return null;
        } catch (zzazl e) {
            zzazk.zzd("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final void zza(Boolean bool) {
        synchronized (this.lock) {
            this.zzecg = bool;
        }
    }

    public final void zza(Throwable th, String str) {
        zzass.zzc(this.context, this.zzbpn).zza(th, str);
    }

    public final void zzb(Throwable th, String str) {
        zzass.zzc(this.context, this.zzbpn).zza(th, str, zzadr.zzdew.get().floatValue());
    }

    @TargetApi(23)
    public final void zzd(Context context, zzazn zzaznVar) {
        zzabs zzabsVar;
        synchronized (this.lock) {
            if (!this.zzzl) {
                this.context = context.getApplicationContext();
                this.zzbpn = zzaznVar;
                zzr.zzku().zza(this.zzebw);
                this.zzece.initialize(this.context);
                zzass.zzc(this.context, this.zzbpn);
                zzr.zzla();
                if (!zzadf.zzddi.get().booleanValue()) {
                    zzd.zzeb("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    zzabsVar = null;
                } else {
                    zzabsVar = new zzabs();
                }
                this.zzecf = zzabsVar;
                if (zzabsVar != null) {
                    zzazw.zza(new zzayq(this).zzye(), "AppState.registerCsiReporter");
                }
                this.zzzl = true;
                zzxt();
            }
        }
        zzr.zzkr().zzq(context, zzaznVar.zzbrp);
    }

    public final zzabs zzxm() {
        zzabs zzabsVar;
        synchronized (this.lock) {
            zzabsVar = this.zzecf;
        }
        return zzabsVar;
    }

    public final Boolean zzxn() {
        Boolean bool;
        synchronized (this.lock) {
            bool = this.zzecg;
        }
        return bool;
    }

    public final void zzxo() {
        this.zzeci.zzxo();
    }

    public final void zzxp() {
        this.zzech.incrementAndGet();
    }

    public final void zzxq() {
        this.zzech.decrementAndGet();
    }

    public final int zzxr() {
        return this.zzech.get();
    }

    public final zzf zzxs() {
        zzi zziVar;
        synchronized (this.lock) {
            zziVar = this.zzece;
        }
        return zziVar;
    }

    public final zzdzw<ArrayList<String>> zzxt() {
        if (PlatformVersion.isAtLeastJellyBean() && this.context != null) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcse)).booleanValue()) {
                synchronized (this.zzecj) {
                    zzdzw<ArrayList<String>> zzdzwVar = this.zzeck;
                    if (zzdzwVar != null) {
                        return zzdzwVar;
                    }
                    zzdzw<ArrayList<String>> zze = zzazp.zzeic.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzayr
                        private final zzayo zzect;

                        {
                            this.zzect = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.zzect.zzxv();
                        }
                    });
                    this.zzeck = zze;
                    return zze;
                }
            }
        }
        return zzdzk.zzag(new ArrayList());
    }

    public final zzayy zzxu() {
        return this.zzebw;
    }

    public final /* synthetic */ ArrayList zzxv() {
        return zzah(zzaul.zzx(this.context));
    }
}
