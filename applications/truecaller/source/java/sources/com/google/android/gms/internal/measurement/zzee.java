package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Pair;
import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzgr;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzic;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzee.class */
public final class zzee {
    private static volatile zzee zzc;
    public final Clock zza;
    public final ExecutorService zzb;
    private final String zzd;
    private final AppMeasurementSdk zze;
    private final List zzf;
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
        this.zza = DefaultClock.f6131a;
        zzbx.zza();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzdi(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.zzb = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.zze = new AppMeasurementSdk(this);
        this.zzf = new ArrayList();
        try {
            if (zzic.m38561b(context, "google_app_id", C26232y.m2311q2(context)) != null && !zzR()) {
                this.zzi = null;
                this.zzh = true;
                return;
            }
        } catch (IllegalStateException e) {
        }
        if (!zzV(str2, str3)) {
            this.zzi = "fa";
            if (str2 == null || str3 == null) {
                if (str2 == null) {
                }
                if (str3 == null) {
                }
            }
        } else {
            this.zzi = str2;
        }
        zzU(new zzcx(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new zzed(this));
    }

    public static final boolean zzR() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public final void zzS(Exception exc, boolean z, boolean z2) {
        this.zzh |= z;
        if (!z && z2) {
            zzA(5, "Error with data collection. Data lost.", exc, null, null);
        }
    }

    private final void zzT(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        zzU(new zzdr(this, l, str, str2, bundle, z, z2));
    }

    public final void zzU(zzdt zzdtVar) {
        this.zzb.execute(zzdtVar);
    }

    public static final boolean zzV(String str, String str2) {
        return (str2 == null || str == null || zzR()) ? false : true;
    }

    public static zzee zzg(Context context, String str, String str2, String str3, Bundle bundle) {
        Objects.requireNonNull(context, "null reference");
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

    public final void zzA(int i, String str, Object obj, Object obj2, Object obj3) {
        zzU(new zzdg(this, false, 5, str, obj, null, null));
    }

    public final void zzB(zzgs zzgsVar) {
        Objects.requireNonNull(zzgsVar, "null reference");
        synchronized (this.zzf) {
            for (int i = 0; i < this.zzf.size(); i++) {
                if (zzgsVar.equals(((Pair) this.zzf.get(i)).first)) {
                    return;
                }
            }
            zzdv zzdvVar = new zzdv(zzgsVar);
            this.zzf.add(new Pair(zzgsVar, zzdvVar));
            if (this.zzj != null) {
                try {
                    this.zzj.registerOnMeasurementEventListener(zzdvVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                }
            }
            zzU(new zzdp(this, zzdvVar));
        }
    }

    public final void zzC() {
        zzU(new zzcv(this));
    }

    public final void zzD(Bundle bundle) {
        zzU(new zzcn(this, bundle));
    }

    public final void zzE(Bundle bundle) {
        zzU(new zzct(this, bundle));
    }

    public final void zzF(Bundle bundle) {
        zzU(new zzcu(this, bundle));
    }

    public final void zzG(Activity activity, String str, String str2) {
        zzU(new zzcr(this, activity, str, str2));
    }

    public final void zzH(boolean z) {
        zzU(new zzdm(this, z));
    }

    public final void zzI(Bundle bundle) {
        zzU(new zzdn(this, bundle));
    }

    public final void zzJ(zzgr zzgrVar) {
        zzdu zzduVar = new zzdu(zzgrVar);
        if (this.zzj != null) {
            try {
                this.zzj.setEventInterceptor(zzduVar);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
            }
        }
        zzU(new zzdo(this, zzduVar));
    }

    public final void zzK(Boolean bool) {
        zzU(new zzcs(this, bool));
    }

    public final void zzL(long j) {
        zzU(new zzcw(this, j));
    }

    public final void zzM(String str) {
        zzU(new zzcq(this, str));
    }

    public final void zzN(String str, String str2, Object obj, boolean z) {
        zzU(new zzds(this, str, str2, obj, z));
    }

    public final void zzO(zzgs zzgsVar) {
        Pair pair;
        Objects.requireNonNull(zzgsVar, "null reference");
        synchronized (this.zzf) {
            int i = 0;
            while (true) {
                if (i >= this.zzf.size()) {
                    pair = null;
                    break;
                } else if (zzgsVar.equals(((Pair) this.zzf.get(i)).first)) {
                    pair = (Pair) this.zzf.get(i);
                    break;
                } else {
                    i++;
                }
            }
            if (pair == null) {
                return;
            }
            this.zzf.remove(pair);
            zzdv zzdvVar = (zzdv) pair.second;
            if (this.zzj != null) {
                try {
                    this.zzj.unregisterOnMeasurementEventListener(zzdvVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                }
            }
            zzU(new zzdq(this, zzdvVar));
        }
    }

    public final int zza(String str) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdj(this, str, zzbzVar));
        Integer num = (Integer) zzbz.zze(zzbzVar.zzb(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public final long zzb() {
        char c;
        zzbz zzbzVar = new zzbz();
        zzU(new zzdc(this, zzbzVar));
        Long l = (Long) zzbz.zze(zzbzVar.zzb(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.zza.mo38787c()).nextLong();
            int i = this.zzg + 1;
            this.zzg = i;
            c = nextLong + i;
        } else {
            c = l.longValue();
        }
        return c;
    }

    public final Bundle zzc(Bundle bundle, boolean z) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdh(this, bundle, zzbzVar));
        if (z) {
            return zzbzVar.zzb(5000L);
        }
        return null;
    }

    public final AppMeasurementSdk zzd() {
        return this.zze;
    }

    public final zzcc zzf(Context context, boolean z) {
        try {
            return zzcb.asInterface(DynamiteModule.m38737d(context, DynamiteModule.f6177c, ModuleDescriptor.MODULE_ID).m38738c("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            zzS(e, true, false);
            return null;
        }
    }

    public final Object zzh(int i) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdl(this, zzbzVar, i));
        return zzbz.zze(zzbzVar.zzb(DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD), Object.class);
    }

    public final String zzj() {
        return this.zzi;
    }

    public final String zzk() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdk(this, zzbzVar));
        return zzbzVar.zzc(120000L);
    }

    public final String zzl() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdb(this, zzbzVar));
        return zzbzVar.zzc(50L);
    }

    public final String zzm() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzde(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final String zzn() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdd(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final String zzo() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzda(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final List zzp(String str, String str2) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzcp(this, str, str2, zzbzVar));
        List list = (List) zzbz.zze(zzbzVar.zzb(5000L), List.class);
        List list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    public final Map zzq(String str, String str2, boolean z) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdf(this, str, str2, z, zzbzVar));
        Bundle zzb = zzbzVar.zzb(5000L);
        if (zzb == null || zzb.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(zzb.size());
        for (String str3 : zzb.keySet()) {
            Object obj = zzb.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    public final void zzu(String str) {
        zzU(new zzcy(this, str));
    }

    public final void zzv(String str, String str2, Bundle bundle) {
        zzU(new zzco(this, str, str2, bundle));
    }

    public final void zzw(String str) {
        zzU(new zzcz(this, str));
    }

    public final void zzx(String str, Bundle bundle) {
        zzT(null, str, bundle, false, true, null);
    }

    public final void zzy(String str, String str2, Bundle bundle) {
        zzT(str, str2, bundle, true, true, null);
    }

    public final void zzz(String str, String str2, Bundle bundle, long j) {
        zzT(str, str2, bundle, true, false, Long.valueOf(j));
    }
}
