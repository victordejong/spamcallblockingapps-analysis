package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtf.class */
public final class zzdtf {
    private final zzdtc zza;
    private final AtomicReference<zzbvg> zzb = new AtomicReference<>();

    public zzdtf(zzdtc zzdtcVar) {
        this.zza = zzdtcVar;
    }

    private final zzbvg zze() throws RemoteException {
        zzbvg zzbvgVar = this.zzb.get();
        if (zzbvgVar != null) {
            return zzbvgVar;
        }
        zzcgt.zzi("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final void zza(zzbvg zzbvgVar) {
        this.zzb.compareAndSet(null, zzbvgVar);
    }

    public final zzfbi zzb(String str, JSONObject jSONObject) throws zzfaw {
        zzbwf zzbwfVar;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzbwfVar = new zzbwf(new AdMobAdapter());
            } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                zzbwfVar = new zzbwf(new AdUrlAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzbwfVar = new zzbwf(new zzbye());
            } else {
                zzbvg zze = zze();
                if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        zzbwfVar = zze.zzc(string) ? zze.zzb("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : zze.zzd(string) ? zze.zzb(string) : zze.zzb("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e) {
                        zzcgt.zzg("Invalid custom event.", e);
                    }
                }
                zzbwfVar = zze.zzb(str);
            }
            zzfbi zzfbiVar = new zzfbi(zzbwfVar);
            this.zza.zza(str, zzfbiVar);
            return zzfbiVar;
        } catch (Throwable th) {
            throw new zzfaw(th);
        }
    }

    public final zzbxn zzc(String str) throws RemoteException {
        zzbxn zzf = zze().zzf(str);
        this.zza.zzb(str, zzf);
        return zzf;
    }

    public final boolean zzd() {
        return this.zzb.get() != null;
    }
}
