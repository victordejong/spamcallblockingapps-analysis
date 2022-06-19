package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzfm;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzic;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzee.class */
public final class zzee {
    private static volatile zzee zzc;
    public final Clock zza;
    public final ExecutorService zzb;
    private final String zzd;
    private final AppMeasurementSdk zze;
    private final List<Pair<zzgv, zzdv>> zzf;
    private int zzg;
    private boolean zzh;
    private final String zzi;
    private volatile zzcc zzj;

    public zzee(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !zzV(str2, str3)) {
            this.zzd = "FA";
        } else {
            this.zzd = str;
        }
        this.zza = DefaultClock.getInstance();
        boolean z = true;
        this.zzb = zzbx.zza().zzb(new zzdi(this), 1);
        this.zze = new AppMeasurementSdk(this);
        this.zzf = new ArrayList();
        try {
            if (zzic.zza(context, "google_app_id", zzfm.zza(context)) != null && !zzR()) {
                this.zzi = null;
                this.zzh = true;
                Log.w(this.zzd, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException e) {
        }
        if (!zzV(str2, str3)) {
            this.zzi = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 != null ? false : z)) {
                    Log.w(this.zzd, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            }
        } else {
            this.zzi = str2;
        }
        zzS(new zzcx(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.zzd, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new zzed(this));
        }
    }

    public static final boolean zzR() {
        return true;
    }

    public final void zzS(zzdt zzdtVar) {
        this.zzb.execute(zzdtVar);
    }

    public final void zzT(Exception exc, boolean z, boolean z2) {
        this.zzh |= z;
        if (z) {
            Log.w(this.zzd, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            zzC(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.zzd, "Error with data collection. Data lost.", exc);
    }

    private final void zzU(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        zzS(new zzdr(this, l, str, str2, bundle, z, z2));
    }

    public static final boolean zzV(String str, String str2) {
        return (str2 == null || str == null || zzR()) ? false : true;
    }

    public static zzee zza(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotNull(context);
        if (zzc == null) {
            synchronized (zzee.class) {
                try {
                    if (zzc == null) {
                        zzc = new zzee(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzc;
    }

    public final String zzA() {
        zzbz zzbzVar = new zzbz();
        zzS(new zzde(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final Map<String, Object> zzB(String str, String str2, boolean z) {
        zzbz zzbzVar = new zzbz();
        zzS(new zzdf(this, str, str2, z, zzbzVar));
        Bundle zzd = zzbzVar.zzd(5000L);
        if (zzd == null || zzd.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(zzd.size());
        for (String str3 : zzd.keySet()) {
            Object obj = zzd.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    public final void zzC(int i, String str, Object obj, Object obj2, Object obj3) {
        zzS(new zzdg(this, false, 5, str, obj, null, null));
    }

    public final Bundle zzD(Bundle bundle, boolean z) {
        zzbz zzbzVar = new zzbz();
        zzS(new zzdh(this, bundle, zzbzVar));
        if (z) {
            return zzbzVar.zzd(5000L);
        }
        return null;
    }

    public final int zzE(String str) {
        zzbz zzbzVar = new zzbz();
        zzS(new zzdj(this, str, zzbzVar));
        Integer num = (Integer) zzbz.zze(zzbzVar.zzd(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final String zzF() {
        zzbz zzbzVar = new zzbz();
        zzS(new zzdk(this, zzbzVar));
        return zzbzVar.zzc(120000L);
    }

    public final String zzG() {
        return this.zzi;
    }

    public final Object zzH(int i) {
        zzbz zzbzVar = new zzbz();
        zzS(new zzdl(this, zzbzVar, i));
        return zzbz.zze(zzbzVar.zzd(15000L), Object.class);
    }

    public final void zzI(boolean z) {
        zzS(new zzdm(this, z));
    }

    public final void zzJ(Bundle bundle) {
        zzS(new zzdn(this, bundle));
    }

    public final AppMeasurementSdk zzb() {
        return this.zze;
    }

    public final zzcc zzc(Context context, boolean z) {
        try {
            return zzcb.asInterface(DynamiteModule.load(context, DynamiteModule.PREFER_HIGHEST_OR_REMOTE_VERSION, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            zzT(e, true, false);
            return null;
        }
    }

    public final void zzd(zzgu zzguVar) {
        zzdu zzduVar = new zzdu(zzguVar);
        if (this.zzj != null) {
            try {
                this.zzj.setEventInterceptor(zzduVar);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                Log.w(this.zzd, "Failed to set event interceptor on calling thread. Trying again on the dynamite thread.");
            }
        }
        zzS(new zzdo(this, zzduVar));
    }

    public final void zze(zzgv zzgvVar) {
        Preconditions.checkNotNull(zzgvVar);
        synchronized (this.zzf) {
            for (int i = 0; i < this.zzf.size(); i++) {
                if (zzgvVar.equals(this.zzf.get(i).first)) {
                    Log.w(this.zzd, "OnEventListener already registered.");
                    return;
                }
            }
            zzdv zzdvVar = new zzdv(zzgvVar);
            this.zzf.add(new Pair<>(zzgvVar, zzdvVar));
            if (this.zzj != null) {
                try {
                    this.zzj.registerOnMeasurementEventListener(zzdvVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                    Log.w(this.zzd, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            zzS(new zzdp(this, zzdvVar));
        }
    }

    public final void zzf(zzgv zzgvVar) {
        Pair<zzgv, zzdv> pair;
        Preconditions.checkNotNull(zzgvVar);
        synchronized (this.zzf) {
            int i = 0;
            while (true) {
                if (i >= this.zzf.size()) {
                    pair = null;
                    break;
                } else if (zzgvVar.equals(this.zzf.get(i).first)) {
                    pair = this.zzf.get(i);
                    break;
                } else {
                    i++;
                }
            }
            if (pair == null) {
                Log.w(this.zzd, "OnEventListener had not been registered.");
                return;
            }
            this.zzf.remove(pair);
            zzdv zzdvVar = (zzdv) pair.second;
            if (this.zzj != null) {
                try {
                    this.zzj.unregisterOnMeasurementEventListener(zzdvVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                    Log.w(this.zzd, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            zzS(new zzdq(this, zzdvVar));
        }
    }

    public final void zzg(String str, Bundle bundle) {
        zzU(null, str, bundle, false, true, null);
    }

    public final void zzh(String str, String str2, Bundle bundle) {
        zzU(str, str2, bundle, true, true, null);
    }

    public final void zzi(String str, String str2, Bundle bundle, long j) {
        zzU(str, str2, bundle, true, false, Long.valueOf(j));
    }

    public final void zzj(String str, String str2, Object obj, boolean z) {
        zzS(new zzds(this, str, str2, obj, z));
    }

    public final void zzk(Bundle bundle) {
        zzS(new zzcn(this, bundle));
    }

    public final void zzl(String str, String str2, Bundle bundle) {
        zzS(new zzco(this, str, str2, bundle));
    }

    public final List<Bundle> zzm(String str, String str2) {
        zzbz zzbzVar = new zzbz();
        zzS(new zzcp(this, str, str2, zzbzVar));
        List<Bundle> list = (List) zzbz.zze(zzbzVar.zzd(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    public final void zzn(String str) {
        zzS(new zzcq(this, str));
    }

    public final void zzo(Activity activity, String str, String str2) {
        zzS(new zzcr(this, activity, str, str2));
    }

    public final void zzp(Boolean bool) {
        zzS(new zzcs(this, bool));
    }

    public final void zzq(Bundle bundle) {
        zzS(new zzct(this, bundle));
    }

    public final void zzr(Bundle bundle) {
        zzS(new zzcu(this, bundle));
    }

    public final void zzs() {
        zzS(new zzcv(this));
    }

    public final void zzt(long j) {
        zzS(new zzcw(this, j));
    }

    public final void zzu(String str) {
        zzS(new zzcy(this, str));
    }

    public final void zzv(String str) {
        zzS(new zzcz(this, str));
    }

    public final String zzw() {
        zzbz zzbzVar = new zzbz();
        zzS(new zzda(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final String zzx() {
        zzbz zzbzVar = new zzbz();
        zzS(new zzdb(this, zzbzVar));
        return zzbzVar.zzc(50L);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public final long zzy() {
        char c;
        zzbz zzbzVar = new zzbz();
        zzS(new zzdc(this, zzbzVar));
        Long l = (Long) zzbz.zze(zzbzVar.zzd(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.zza.currentTimeMillis()).nextLong();
            int i = this.zzg + 1;
            this.zzg = i;
            c = nextLong + i;
        } else {
            c = l.longValue();
        }
        return c;
    }

    public final String zzz() {
        zzbz zzbzVar = new zzbz();
        zzS(new zzdd(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }
}
