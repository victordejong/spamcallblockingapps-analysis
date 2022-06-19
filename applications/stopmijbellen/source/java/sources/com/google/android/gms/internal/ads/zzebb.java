package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebb.class */
public final class zzebb {
    private final Context zzf;
    private final WeakReference<Context> zzg;
    private final zzdww zzh;
    private final Executor zzi;
    private final Executor zzj;
    private final ScheduledExecutorService zzk;
    private final zzdzi zzl;
    private final zzcjf zzm;
    private final zzdli zzo;
    private boolean zza = false;
    private boolean zzb = false;
    private boolean zzc = false;
    private final zzcjr<Boolean> zze = new zzcjr<>();
    private final Map<String, zzbtn> zzn = new ConcurrentHashMap();
    private boolean zzp = true;
    private final long zzd = zzt.zzA().elapsedRealtime();

    public zzebb(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, zzdww zzdwwVar, ScheduledExecutorService scheduledExecutorService, zzdzi zzdziVar, zzcjf zzcjfVar, zzdli zzdliVar) {
        this.zzh = zzdwwVar;
        this.zzf = context;
        this.zzg = weakReference;
        this.zzi = executor2;
        this.zzk = scheduledExecutorService;
        this.zzj = executor;
        this.zzl = zzdziVar;
        this.zzm = zzcjfVar;
        this.zzo = zzdliVar;
        zzu("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    public static /* bridge */ /* synthetic */ void zzi(zzebb zzebbVar, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                final String next = keys.next();
                final Object obj = new Object();
                final zzcjr zzcjrVar = new zzcjr();
                zzfxa zzo = zzfwq.zzo(zzcjrVar, ((Long) zzbgq.zzc().zzb(zzblj.zzbp)).longValue(), TimeUnit.SECONDS, zzebbVar.zzk);
                zzebbVar.zzl.zzb(next);
                zzebbVar.zzo.zzb(next);
                final long elapsedRealtime = zzt.zzA().elapsedRealtime();
                zzo.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeaw
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzebb.this.zzp(obj, zzcjrVar, next, elapsedRealtime);
                    }
                }, zzebbVar.zzi);
                arrayList.add(zzo);
                final zzeba zzebaVar = new zzeba(zzebbVar, obj, next, elapsedRealtime, zzcjrVar);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray("data");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString("format", "");
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                }
                            }
                            arrayList2.add(new zzbtx(optString, bundle));
                        }
                    } catch (JSONException e) {
                    }
                }
                zzebbVar.zzu(next, false, "", 0);
                try {
                    final zzfev zzb = zzebbVar.zzh.zzb(next, new JSONObject());
                    zzebbVar.zzj.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeav
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzebb.this.zzm(zzb, zzebaVar, arrayList2, next);
                        }
                    });
                } catch (zzfek e2) {
                    try {
                        zzebaVar.zze("Failed to create Adapter.");
                    } catch (RemoteException e3) {
                        zzciz.zzh("", e3);
                    }
                }
            }
            zzfwq.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeax
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzebb.this.zze();
                    return null;
                }
            }, zzebbVar.zzi);
        } catch (JSONException e4) {
            zze.zzb("Malformed CLD response", e4);
        }
    }

    private final zzfxa<String> zzt() {
        synchronized (this) {
            String zzc = zzt.zzo().zzh().zzg().zzc();
            if (!TextUtils.isEmpty(zzc)) {
                return zzfwq.zzi(zzc);
            }
            final zzcjr zzcjrVar = new zzcjr();
            zzt.zzo().zzh().zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeau
                @Override // java.lang.Runnable
                public final void run() {
                    zzebb.this.zzn(zzcjrVar);
                }
            });
            return zzcjrVar;
        }
    }

    public final void zzu(String str, boolean z, String str2, int i) {
        this.zzn.put(str, new zzbtn(str, z, i, str2));
    }

    public final /* synthetic */ Object zze() throws Exception {
        this.zze.zzd(Boolean.TRUE);
        return null;
    }

    public final List<zzbtn> zzf() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzn.keySet()) {
            zzbtn zzbtnVar = this.zzn.get(str);
            arrayList.add(new zzbtn(str, zzbtnVar.zzb, zzbtnVar.zzc, zzbtnVar.zzd));
        }
        return arrayList;
    }

    public final void zzk() {
        this.zzp = false;
    }

    public final /* synthetic */ void zzl() {
        synchronized (this) {
            if (this.zzc) {
                return;
            }
            zzu("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (zzt.zzA().elapsedRealtime() - this.zzd));
            this.zze.zze(new Exception());
        }
    }

    public final /* synthetic */ void zzm(zzfev zzfevVar, zzbtr zzbtrVar, List list, String str) {
        try {
            Context context = this.zzg.get();
            if (context == null) {
                context = this.zzf;
            }
            zzfevVar.zzi(context, zzbtrVar, list);
        } catch (zzfek e) {
            try {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74);
                sb.append("Failed to initialize adapter. ");
                sb.append(str);
                sb.append(" does not implement the initialize() method.");
                zzbtrVar.zze(sb.toString());
            } catch (RemoteException e2) {
                zzciz.zzh("", e2);
            }
        }
    }

    public final /* synthetic */ void zzn(final zzcjr zzcjrVar) {
        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeat
            @Override // java.lang.Runnable
            public final void run() {
                zzcjr zzcjrVar2 = zzcjrVar;
                String zzc = zzt.zzo().zzh().zzg().zzc();
                if (!TextUtils.isEmpty(zzc)) {
                    zzcjrVar2.zzd(zzc);
                } else {
                    zzcjrVar2.zze(new Exception());
                }
            }
        });
    }

    public final /* synthetic */ void zzo() {
        this.zzl.zzd();
        this.zzo.zzd();
        this.zzb = true;
    }

    public final /* synthetic */ void zzp(Object obj, zzcjr zzcjrVar, String str, long j) {
        synchronized (obj) {
            if (!zzcjrVar.isDone()) {
                zzu(str, false, "Timeout.", (int) (zzt.zzA().elapsedRealtime() - j));
                this.zzl.zza(str, "timeout");
                this.zzo.zza(str, "timeout");
                zzcjrVar.zzd(Boolean.FALSE);
            }
        }
    }

    public final void zzq() {
        if (!zzbnb.zza.zze().booleanValue()) {
            if (this.zzm.zzc >= ((Integer) zzbgq.zzc().zzb(zzblj.zzbo)).intValue() && this.zzp) {
                if (this.zza) {
                    return;
                }
                synchronized (this) {
                    if (this.zza) {
                        return;
                    }
                    this.zzl.zze();
                    this.zzo.zze();
                    this.zze.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzear
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzebb.this.zzo();
                        }
                    }, this.zzi);
                    this.zza = true;
                    zzfxa<String> zzt = zzt();
                    this.zzk.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeaq
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzebb.this.zzl();
                        }
                    }, ((Long) zzbgq.zzc().zzb(zzblj.zzbq)).longValue(), TimeUnit.SECONDS);
                    zzfwq.zzr(zzt, new zzeaz(this), this.zzi);
                    return;
                }
            }
        }
        if (!this.zza) {
            zzu("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.zze.zzd(Boolean.FALSE);
            this.zza = true;
            this.zzb = true;
        }
    }

    public final void zzr(final zzbtu zzbtuVar) {
        this.zze.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeas
            @Override // java.lang.Runnable
            public final void run() {
                zzebb zzebbVar = zzebb.this;
                try {
                    zzbtuVar.zzb(zzebbVar.zzf());
                } catch (RemoteException e) {
                    zzciz.zzh("", e);
                }
            }
        }, this.zzj);
    }

    public final boolean zzs() {
        return this.zzb;
    }
}
