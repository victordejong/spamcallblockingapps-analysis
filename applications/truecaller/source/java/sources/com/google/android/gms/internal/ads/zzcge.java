package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcge.class */
public final class zzcge {
    private final zzj zzb;
    private final zzcgi zzc;
    private Context zze;
    private zzcgz zzf;
    private zzfsm<ArrayList<String>> zzl;
    private final Object zza = new Object();
    private boolean zzd = false;
    private zzbjq zzg = null;
    private Boolean zzh = null;
    private final AtomicInteger zzi = new AtomicInteger(0);
    private final zzcgc zzj = new zzcgc(null);
    private final Object zzk = new Object();

    public zzcge() {
        zzj zzjVar = new zzj();
        this.zzb = zzjVar;
        this.zzc = new zzcgi(zzber.zzc(), zzjVar);
    }

    public final zzbjq zze() {
        zzbjq zzbjqVar;
        synchronized (this.zza) {
            zzbjqVar = this.zzg;
        }
        return zzbjqVar;
    }

    public final void zzf(Boolean bool) {
        synchronized (this.zza) {
            this.zzh = bool;
        }
    }

    public final Boolean zzg() {
        Boolean bool;
        synchronized (this.zza) {
            bool = this.zzh;
        }
        return bool;
    }

    public final void zzh() {
        this.zzj.zza();
    }

    public final void zzi(Context context, zzcgz zzcgzVar) {
        zzbjq zzbjqVar;
        synchronized (this.zza) {
            if (!this.zzd) {
                this.zze = context.getApplicationContext();
                this.zzf = zzcgzVar;
                zzt.zzf().zzb(this.zzc);
                this.zzb.zza(this.zze);
                zzcar.zzb(this.zze, this.zzf);
                zzt.zzl();
                if (!zzbkt.zzc.zze().booleanValue()) {
                    zze.zza("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    zzbjqVar = null;
                } else {
                    zzbjqVar = new zzbjq();
                }
                this.zzg = zzbjqVar;
                if (zzbjqVar != null) {
                    zzchj.zza(new zzcgb(this).zzc(), "AppState.registerCsiReporter");
                }
                this.zzd = true;
                zzr();
            }
        }
        zzt.zzc().zzi(context, zzcgzVar.zza);
    }

    public final Resources zzj() {
        if (this.zzf.zzd) {
            return this.zze.getResources();
        }
        try {
            zzcgx.zzb(this.zze).getResources();
            return null;
        } catch (zzcgw e) {
            zzcgt.zzj("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final void zzk(Throwable th, String str) {
        zzcar.zzb(this.zze, this.zzf).zzd(th, str);
    }

    public final void zzl(Throwable th, String str) {
        zzcar.zzb(this.zze, this.zzf).zze(th, str, zzblf.zzg.zze().floatValue());
    }

    public final void zzm() {
        this.zzi.incrementAndGet();
    }

    public final void zzn() {
        this.zzi.decrementAndGet();
    }

    public final int zzo() {
        return this.zzi.get();
    }

    public final zzg zzp() {
        zzj zzjVar;
        synchronized (this.zza) {
            zzjVar = this.zzb;
        }
        return zzjVar;
    }

    public final Context zzq() {
        return this.zze;
    }

    public final zzfsm<ArrayList<String>> zzr() {
        if (this.zze != null) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzbN)).booleanValue()) {
                synchronized (this.zzk) {
                    zzfsm<ArrayList<String>> zzfsmVar = this.zzl;
                    if (zzfsmVar != null) {
                        return zzfsmVar;
                    }
                    zzfsm<ArrayList<String>> zzb = zzchg.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcga
                        private final zzcge zza;

                        {
                            this.zza = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.zza.zzt();
                        }
                    });
                    this.zzl = zzb;
                    return zzb;
                }
            }
        }
        return zzfsd.zza(new ArrayList());
    }

    public final zzcgi zzs() {
        return this.zzc;
    }

    public final /* synthetic */ ArrayList zzt() throws Exception {
        Context zza = zzcbx.zza(this.zze);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo m38766c = Wrappers.m38764a(zza).m38766c(zza.getApplicationInfo().packageName, 4096);
            if (m38766c.requestedPermissions != null && m38766c.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = m38766c.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((m38766c.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(strArr[i]);
                    }
                    i++;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return arrayList;
    }
}
