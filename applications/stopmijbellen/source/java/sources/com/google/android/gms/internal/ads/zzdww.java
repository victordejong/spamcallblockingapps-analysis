package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdww.class */
public final class zzdww {
    private final zzdwt zza;
    private final AtomicReference<zzbxh> zzb = new AtomicReference<>();

    public zzdww(zzdwt zzdwtVar) {
        this.zza = zzdwtVar;
    }

    private final zzbxh zze() throws RemoteException {
        zzbxh zzbxhVar = this.zzb.get();
        if (zzbxhVar != null) {
            return zzbxhVar;
        }
        zzciz.zzj("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final zzbzo zza(String str) throws RemoteException {
        zzbzo zzc = zze().zzc(str);
        this.zza.zzd(str, zzc);
        return zzc;
    }

    public final zzfev zzb(String str, JSONObject jSONObject) throws zzfek {
        zzbyg zzbygVar;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzbygVar = new zzbyg(new AdMobAdapter());
            } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                zzbygVar = new zzbyg(new AdUrlAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzbygVar = new zzbyg(new zzcaf());
            } else {
                zzbxh zze = zze();
                if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        zzbygVar = zze.zzf(string) ? zze.zzb("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : zze.zze(string) ? zze.zzb(string) : zze.zzb("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e) {
                        zzciz.zzh("Invalid custom event.", e);
                    }
                }
                zzbygVar = zze.zzb(str);
            }
            zzfev zzfevVar = new zzfev(zzbygVar);
            this.zza.zzc(str, zzfevVar);
            return zzfevVar;
        } catch (Throwable th) {
            throw new zzfek(th);
        }
    }

    public final void zzc(zzbxh zzbxhVar) {
        this.zzb.compareAndSet(null, zzbxhVar);
    }

    public final boolean zzd() {
        return this.zzb.get() != null;
    }
}
