package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import com.huawei.hms.push.constant.RemoteMessageConst;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxk.class */
public final class zzdxk {
    private final Context zzf;
    private final WeakReference<Context> zzg;
    private final zzdtf zzh;
    private final Executor zzi;
    private final Executor zzj;
    private final ScheduledExecutorService zzk;
    private final zzdvr zzl;
    private final zzcgz zzm;
    private final zzdht zzo;
    private boolean zza = false;
    private boolean zzb = false;
    private boolean zzc = false;
    private final zzchl<Boolean> zze = new zzchl<>();
    private final Map<String, zzbrl> zzn = new ConcurrentHashMap();
    private boolean zzp = true;
    private final long zzd = zzt.zzj().mo38789a();

    public zzdxk(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, zzdtf zzdtfVar, ScheduledExecutorService scheduledExecutorService, zzdvr zzdvrVar, zzcgz zzcgzVar, zzdht zzdhtVar) {
        this.zzh = zzdtfVar;
        this.zzf = context;
        this.zzg = weakReference;
        this.zzi = executor2;
        this.zzk = scheduledExecutorService;
        this.zzj = executor;
        this.zzl = zzdvrVar;
        this.zzm = zzcgzVar;
        this.zzo = zzdhtVar;
        zzu("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    public static /* synthetic */ void zzk(zzdxk zzdxkVar, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject(DTBMetricsConfiguration.CONFIG_DIR);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = new Object();
                zzchl zzchlVar = new zzchl();
                zzfsm zzh = zzfsd.zzh(zzchlVar, ((Long) zzbet.zzc().zzc(zzbjl.zzbj)).longValue(), TimeUnit.SECONDS, zzdxkVar.zzk);
                zzdxkVar.zzl.zza(next);
                zzdxkVar.zzo.zza(next);
                long mo38789a = zzt.zzj().mo38789a();
                zzh.zze(new Runnable(zzdxkVar, obj, zzchlVar, next, mo38789a) { // from class: com.google.android.gms.internal.ads.zzdxd
                    private final zzdxk zza;
                    private final Object zzb;
                    private final zzchl zzc;
                    private final String zzd;
                    private final long zze;

                    {
                        this.zza = zzdxkVar;
                        this.zzb = obj;
                        this.zzc = zzchlVar;
                        this.zzd = next;
                        this.zze = mo38789a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzp(this.zzb, this.zzc, this.zzd, this.zze);
                    }
                }, zzdxkVar.zzi);
                arrayList.add(zzh);
                zzdxj zzdxjVar = new zzdxj(zzdxkVar, obj, next, mo38789a, zzchlVar);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray(RemoteMessageConst.DATA);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString("format", "");
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject(RemoteMessageConst.DATA);
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                }
                            }
                            arrayList2.add(new zzbrv(optString, bundle));
                        }
                    } catch (JSONException e) {
                    }
                }
                zzdxkVar.zzu(next, false, "", 0);
                try {
                    zzdxkVar.zzj.execute(new Runnable(zzdxkVar, zzdxkVar.zzh.zzb(next, new JSONObject()), zzdxjVar, arrayList2, next) { // from class: com.google.android.gms.internal.ads.zzdxf
                        private final zzdxk zza;
                        private final zzfbi zzb;
                        private final zzbrp zzc;
                        private final List zzd;
                        private final String zze;

                        {
                            this.zza = zzdxkVar;
                            this.zzb = zzb;
                            this.zzc = zzdxjVar;
                            this.zzd = arrayList2;
                            this.zze = next;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzn(this.zzb, this.zzc, this.zzd, this.zze);
                        }
                    });
                } catch (zzfaw e2) {
                    try {
                        zzdxjVar.zzf("Failed to create Adapter.");
                    } catch (RemoteException e3) {
                        zzcgt.zzg("", e3);
                    }
                }
            }
            zzfsd.zzm(arrayList).zza(new Callable(zzdxkVar) { // from class: com.google.android.gms.internal.ads.zzdxe
                private final zzdxk zza;

                {
                    this.zza = zzdxkVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    this.zza.zzo();
                    return null;
                }
            }, zzdxkVar.zzi);
        } catch (JSONException e4) {
            zze.zzb("Malformed CLD response", e4);
        }
    }

    private final zzfsm<String> zzt() {
        synchronized (this) {
            String zzd = zzt.zzg().zzp().zzn().zzd();
            if (!TextUtils.isEmpty(zzd)) {
                return zzfsd.zza(zzd);
            }
            zzchl zzchlVar = new zzchl();
            zzt.zzg().zzp().zzp(new Runnable(this, zzchlVar) { // from class: com.google.android.gms.internal.ads.zzdxb
                private final zzdxk zza;
                private final zzchl zzb;

                {
                    this.zza = this;
                    this.zzb = zzchlVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzr(this.zzb);
                }
            });
            return zzchlVar;
        }
    }

    public final void zzu(String str, boolean z, String str2, int i) {
        this.zzn.put(str, new zzbrl(str, z, i, str2));
    }

    public final void zzg() {
        this.zzp = false;
    }

    public final void zzh(zzbrs zzbrsVar) {
        this.zze.zze(new Runnable(this, zzbrsVar) { // from class: com.google.android.gms.internal.ads.zzdwz
            private final zzdxk zza;
            private final zzbrs zzb;

            {
                this.zza = this;
                this.zzb = zzbrsVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzdxk zzdxkVar = this.zza;
                try {
                    this.zzb.zzb(zzdxkVar.zzj());
                } catch (RemoteException e) {
                    zzcgt.zzg("", e);
                }
            }
        }, this.zzj);
    }

    public final void zzi() {
        if (!zzblc.zza.zze().booleanValue()) {
            if (this.zzm.zzc >= ((Integer) zzbet.zzc().zzc(zzbjl.zzbi)).intValue() && this.zzp) {
                if (this.zza) {
                    return;
                }
                synchronized (this) {
                    if (this.zza) {
                        return;
                    }
                    this.zzl.zzd();
                    this.zzo.zzd();
                    this.zze.zze(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdxa
                        private final zzdxk zza;

                        {
                            this.zza = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzs();
                        }
                    }, this.zzi);
                    this.zza = true;
                    zzfsm<String> zzt = zzt();
                    this.zzk.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdxc
                        private final zzdxk zza;

                        {
                            this.zza = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzq();
                        }
                    }, ((Long) zzbet.zzc().zzc(zzbjl.zzbk)).longValue(), TimeUnit.SECONDS);
                    zzfsd.zzp(zzt, new zzdxi(this), this.zzi);
                    return;
                }
            }
        }
        if (!this.zza) {
            zzu("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.zze.zzc(Boolean.FALSE);
            this.zza = true;
            this.zzb = true;
        }
    }

    public final List<zzbrl> zzj() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzn.keySet()) {
            zzbrl zzbrlVar = this.zzn.get(str);
            arrayList.add(new zzbrl(str, zzbrlVar.zzb, zzbrlVar.zzc, zzbrlVar.zzd));
        }
        return arrayList;
    }

    public final boolean zzm() {
        return this.zzb;
    }

    public final /* synthetic */ void zzn(zzfbi zzfbiVar, zzbrp zzbrpVar, List list, String str) {
        try {
            Context context = this.zzg.get();
            if (context == null) {
                context = this.zzf;
            }
            zzfbiVar.zzy(context, zzbrpVar, list);
        } catch (zzfaw e) {
            try {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74);
                sb.append("Failed to initialize adapter. ");
                sb.append(str);
                sb.append(" does not implement the initialize() method.");
                zzbrpVar.zzf(sb.toString());
            } catch (RemoteException e2) {
                zzcgt.zzg("", e2);
            }
        }
    }

    public final /* synthetic */ Object zzo() throws Exception {
        this.zze.zzc(Boolean.TRUE);
        return null;
    }

    public final /* synthetic */ void zzp(Object obj, zzchl zzchlVar, String str, long j) {
        synchronized (obj) {
            if (!zzchlVar.isDone()) {
                zzu(str, false, "Timeout.", (int) (zzt.zzj().mo38789a() - j));
                this.zzl.zzc(str, "timeout");
                this.zzo.zzc(str, "timeout");
                zzchlVar.zzc(Boolean.FALSE);
            }
        }
    }

    public final /* synthetic */ void zzq() {
        synchronized (this) {
            if (this.zzc) {
                return;
            }
            zzu("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (zzt.zzj().mo38789a() - this.zzd));
            this.zze.zzd(new Exception());
        }
    }

    public final /* synthetic */ void zzr(zzchl zzchlVar) {
        this.zzi.execute(new Runnable(this, zzchlVar) { // from class: com.google.android.gms.internal.ads.zzdxg
            private final zzdxk zza;
            private final zzchl zzb;

            {
                this.zza = this;
                this.zzb = zzchlVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzchl zzchlVar2 = this.zzb;
                String zzd = zzt.zzg().zzp().zzn().zzd();
                if (!TextUtils.isEmpty(zzd)) {
                    zzchlVar2.zzc(zzd);
                } else {
                    zzchlVar2.zzd(new Exception());
                }
            }
        });
    }

    public final /* synthetic */ void zzs() {
        this.zzl.zze();
        this.zzo.zze();
        this.zzb = true;
    }
}
