package com.google.firebase.perf.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.core.app.C0439e;
import com.google.android.gms.internal.firebase-perf.zzan;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.android.gms.internal.firebase-perf.zzbj;
import com.google.android.gms.internal.firebase-perf.zzcp;
import com.google.android.gms.internal.firebase_perf.zzao;
import com.google.android.gms.internal.firebase_perf.zzap;
import com.google.android.gms.internal.firebase_perf.zzbd;
import com.google.firebase.perf.metrics.Trace;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zza.class */
public class zza implements Application.ActivityLifecycleCallbacks {
    private static volatile zza zzaw;
    private final zzan zzay;
    private zzaz zzbb;
    private zzaz zzbc;
    private boolean zzbh;
    private C0439e zzbi;
    private boolean mRegistered = false;
    private boolean zzaz = true;
    private final WeakHashMap<Activity, Boolean> zzba = new WeakHashMap<>();
    private final Map<String, Long> zzbd = new HashMap();
    private AtomicInteger zzbe = new AtomicInteger(0);
    private zzbj zzbf = com.google.android.gms.internal.firebase_perf.zzbj.zzik;
    private Set<WeakReference<AbstractC3163zza>> zzbg = new HashSet();
    private final WeakHashMap<Activity, Trace> zzbj = new WeakHashMap<>();
    private zzf zzax = null;

    /* renamed from: com.google.firebase.perf.internal.zza$zza */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zza$zza.class */
    public interface AbstractC3163zza {
        void zzb(zzbj zzbjVar);
    }

    private zza(zzf zzfVar, zzan zzanVar) {
        this.zzbh = false;
        this.zzay = zzanVar;
        this.zzbh = zzu();
        if (this.zzbh) {
            this.zzbi = new C0439e();
        }
    }

    private static zza zza(zzf zzfVar) {
        if (zzaw == null) {
            synchronized (zza.class) {
                try {
                    if (zzaw == null) {
                        zzaw = new zza(null, new com.google.android.gms.internal.firebase_perf.zzan());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzaw;
    }

    private final void zza(zzbj zzbjVar) {
        this.zzbf = zzbjVar;
        synchronized (this.zzbg) {
            Iterator<WeakReference<AbstractC3163zza>> it = this.zzbg.iterator();
            while (it.hasNext()) {
                AbstractC3163zza abstractC3163zza = it.next().get();
                if (abstractC3163zza != null) {
                    abstractC3163zza.zzb(this.zzbf);
                } else {
                    it.remove();
                }
            }
        }
    }

    private final void zza(String str, zzaz zzazVar, zzaz zzazVar2) {
        zzt();
        zzcp.zza zzb = com.google.android.gms.internal.firebase_perf.zzcp.zzez().zzac(str).zzai(zzazVar.zzbx()).zzaj(zzazVar.zzk(zzazVar2)).zzb(SessionManager.zzbl().zzbm().zzay());
        int andSet = this.zzbe.getAndSet(0);
        synchronized (this.zzbd) {
            zzb.zzd(this.zzbd);
            if (andSet != 0) {
                zzb.zzc(zzap.zzgx.toString(), andSet);
            }
            this.zzbd.clear();
        }
        zzf zzfVar = this.zzax;
        if (zzfVar != null) {
            zzfVar.zza((zzcp) ((com.google.android.gms.internal.firebase_perf.zzcp) zzb.zzgm()), com.google.android.gms.internal.firebase_perf.zzbj.zzil);
        }
    }

    private final void zza(boolean z) {
        zzt();
        zzf zzfVar = this.zzax;
        if (zzfVar != null) {
            zzfVar.zzb(z);
        }
    }

    private final boolean zza(Activity activity) {
        return (!this.zzbh || activity.getWindow() == null || (activity.getWindow().getAttributes().flags & 16777216) == 0) ? false : true;
    }

    private static String zzb(Activity activity) {
        String valueOf = String.valueOf(activity.getClass().getSimpleName());
        return valueOf.length() != 0 ? "_st_".concat(valueOf) : new String("_st_");
    }

    public static zza zzq() {
        return zzaw != null ? zzaw : zza((zzf) null);
    }

    private final void zzt() {
        if (this.zzax == null) {
            this.zzax = zzf.zzal();
        }
    }

    private static boolean zzu() {
        try {
            Class.forName("androidx.core.app.e");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        synchronized (this) {
            if (!this.zzba.isEmpty()) {
                this.zzba.put(activity, true);
                return;
            }
            this.zzbc = new com.google.android.gms.internal.firebase_perf.zzaz();
            this.zzba.put(activity, true);
            if (this.zzaz) {
                zza(com.google.android.gms.internal.firebase_perf.zzbj.zzij);
                zza(true);
                this.zzaz = false;
                return;
            }
            zza(com.google.android.gms.internal.firebase_perf.zzbj.zzij);
            zza(true);
            zza(zzao.zzgt.toString(), this.zzbb, this.zzbc);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        synchronized (this) {
            if (zza(activity)) {
                this.zzbi.m6659a(activity);
                zzt();
                Trace trace = new Trace(zzb(activity), this.zzax, this.zzay, this);
                trace.start();
                this.zzbj.put(activity, trace);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Trace trace;
        int i;
        int i2;
        int i3;
        SparseIntArray sparseIntArray;
        synchronized (this) {
            if (zza(activity) && this.zzbj.containsKey(activity) && (trace = this.zzbj.get(activity)) != null) {
                this.zzbj.remove(activity);
                SparseIntArray[] m6658b = this.zzbi.m6658b(activity);
                if (m6658b != null && (sparseIntArray = m6658b[0]) != null) {
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    int i7 = 0;
                    while (true) {
                        int i8 = i7;
                        i3 = i5;
                        i2 = i6;
                        i = i8;
                        if (i4 >= sparseIntArray.size()) {
                            break;
                        }
                        int keyAt = sparseIntArray.keyAt(i4);
                        int valueAt = sparseIntArray.valueAt(i4);
                        i5 += valueAt;
                        int i9 = i8;
                        if (keyAt > 700) {
                            i9 = i8 + valueAt;
                        }
                        int i10 = i6;
                        if (keyAt > 16) {
                            i10 = i6 + valueAt;
                        }
                        i4++;
                        i6 = i10;
                        i7 = i9;
                    }
                } else {
                    i3 = 0;
                    i = 0;
                    i2 = 0;
                }
                if (i3 > 0) {
                    trace.putMetric(zzap.zzgy.toString(), i3);
                }
                if (i2 > 0) {
                    trace.putMetric(zzap.zzgz.toString(), i2);
                }
                if (i > 0) {
                    trace.putMetric(zzap.zzha.toString(), i);
                }
                if (zzbd.zzg(activity.getApplicationContext())) {
                    String zzb = zzb(activity);
                    StringBuilder sb = new StringBuilder(String.valueOf(zzb).length() + 81);
                    sb.append("sendScreenTrace name:");
                    sb.append(zzb);
                    sb.append(" _fr_tot:");
                    sb.append(i3);
                    sb.append(" _fr_slo:");
                    sb.append(i2);
                    sb.append(" _fr_fzn:");
                    sb.append(i);
                    Log.d("FirebasePerformance", sb.toString());
                }
                trace.stop();
            }
            if (this.zzba.containsKey(activity)) {
                this.zzba.remove(activity);
                if (this.zzba.isEmpty()) {
                    this.zzbb = new com.google.android.gms.internal.firebase_perf.zzaz();
                    zza(com.google.android.gms.internal.firebase_perf.zzbj.zzik);
                    zza(false);
                    zza(zzao.zzgs.toString(), this.zzbc, this.zzbb);
                }
            }
        }
    }

    public final void zza(String str, long j) {
        synchronized (this.zzbd) {
            Long l = this.zzbd.get(str);
            if (l == null) {
                this.zzbd.put(str, 1L);
            } else {
                this.zzbd.put(str, Long.valueOf(l.longValue() + 1));
            }
        }
    }

    public final void zza(WeakReference<AbstractC3163zza> weakReference) {
        synchronized (this.zzbg) {
            this.zzbg.add(weakReference);
        }
    }

    public final void zzb(int i) {
        this.zzbe.addAndGet(1);
    }

    public final void zzb(WeakReference<AbstractC3163zza> weakReference) {
        synchronized (this.zzbg) {
            this.zzbg.remove(weakReference);
        }
    }

    public final void zzc(Context context) {
        synchronized (this) {
            if (this.mRegistered) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof Application) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                this.mRegistered = true;
            }
        }
    }

    public final boolean zzr() {
        return this.zzaz;
    }

    public final zzbj zzs() {
        return this.zzbf;
    }
}
