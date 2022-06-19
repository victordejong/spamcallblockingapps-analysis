package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcik.class */
public final class zzcik {
    private final zzj zzb;
    private final zzcio zzc;
    private Context zze;
    private zzcjf zzf;
    private zzfxa<ArrayList<String>> zzl;
    private final Object zza = new Object();
    private boolean zzd = false;
    private zzblo zzg = null;
    private Boolean zzh = null;
    private final AtomicInteger zzi = new AtomicInteger(0);
    private final zzcij zzj = new zzcij(null);
    private final Object zzk = new Object();

    public zzcik() {
        zzj zzjVar = new zzj();
        this.zzb = zzjVar;
        this.zzc = new zzcio(zzbgo.zzd(), zzjVar);
    }

    public final int zza() {
        return this.zzi.get();
    }

    public final Context zzc() {
        return this.zze;
    }

    public final Resources zzd() {
        if (this.zzf.zzd) {
            return this.zze.getResources();
        }
        try {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzho)).booleanValue()) {
                return zzcjd.zza(this.zze).getResources();
            }
            zzcjd.zza(this.zze).getResources();
            return null;
        } catch (zzcjc e) {
            zzciz.zzk("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final zzblo zzf() {
        zzblo zzbloVar;
        synchronized (this.zza) {
            zzbloVar = this.zzg;
        }
        return zzbloVar;
    }

    public final zzcio zzg() {
        return this.zzc;
    }

    public final zzg zzh() {
        zzj zzjVar;
        synchronized (this.zza) {
            zzjVar = this.zzb;
        }
        return zzjVar;
    }

    public final zzfxa<ArrayList<String>> zzj() {
        if (PlatformVersion.isAtLeastJellyBean() && this.zze != null) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzbT)).booleanValue()) {
                synchronized (this.zzk) {
                    zzfxa<ArrayList<String>> zzfxaVar = this.zzl;
                    if (zzfxaVar != null) {
                        return zzfxaVar;
                    }
                    zzfxa<ArrayList<String>> zzb = zzcjm.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzcig
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return zzcik.this.zzm();
                        }
                    });
                    this.zzl = zzb;
                    return zzb;
                }
            }
        }
        return zzfwq.zzi(new ArrayList());
    }

    public final Boolean zzk() {
        Boolean bool;
        synchronized (this.zza) {
            bool = this.zzh;
        }
        return bool;
    }

    public final /* synthetic */ ArrayList zzm() throws Exception {
        Context zza = zzcee.zza(this.zze);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo packageInfo = Wrappers.packageManager(zza).getPackageInfo(zza.getApplicationInfo().packageName, 4096);
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

    public final void zzn() {
        this.zzj.zza();
    }

    public final void zzo() {
        this.zzi.decrementAndGet();
    }

    public final void zzp() {
        this.zzi.incrementAndGet();
    }

    @TargetApi(23)
    public final void zzq(Context context, zzcjf zzcjfVar) {
        zzblo zzbloVar;
        synchronized (this.zza) {
            if (!this.zzd) {
                this.zze = context.getApplicationContext();
                this.zzf = zzcjfVar;
                zzt.zzb().zzc(this.zzc);
                this.zzb.zzp(this.zze);
                zzcct.zzb(this.zze, this.zzf);
                zzt.zze();
                if (!zzbms.zzc.zze().booleanValue()) {
                    zze.zza("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    zzbloVar = null;
                } else {
                    zzbloVar = new zzblo();
                }
                this.zzg = zzbloVar;
                if (zzbloVar != null) {
                    zzcjp.zza(new zzcih(this).zzb(), "AppState.registerCsiReporter");
                }
                this.zzd = true;
                zzj();
            }
        }
        zzt.zzp().zzd(context, zzcjfVar.zza);
    }

    public final void zzr(Throwable th, String str) {
        zzcct.zzb(this.zze, this.zzf).zze(th, str, zzbne.zzg.zze().floatValue());
    }

    public final void zzs(Throwable th, String str) {
        zzcct.zzb(this.zze, this.zzf).zzd(th, str);
    }

    public final void zzt(Boolean bool) {
        synchronized (this.zza) {
            this.zzh = bool;
        }
    }
}
