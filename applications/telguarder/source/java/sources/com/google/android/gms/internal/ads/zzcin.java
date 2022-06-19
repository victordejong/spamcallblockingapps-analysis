package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcin.class */
public final class zzcin {
    private final zzcim zzgkk;
    private final AtomicReference<zzane> zzgkl = new AtomicReference<>();

    public zzcin(zzcim zzcimVar) {
        this.zzgkk = zzcimVar;
    }

    private final zzane zzapu() throws RemoteException {
        zzane zzaneVar = this.zzgkl.get();
        if (zzaneVar != null) {
            return zzaneVar;
        }
        zzd.zzex("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    private final zzanj zze(String str, JSONObject jSONObject) throws RemoteException {
        zzane zzapu = zzapu();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                return zzapu.zzde(jSONObject.getString("class_name")) ? zzapu.zzdd("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : zzapu.zzdd("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e) {
                zzd.zzc("Invalid custom event.", e);
            }
        }
        return zzapu.zzdd(str);
    }

    public final boolean zzapt() {
        return this.zzgkl.get() != null;
    }

    public final void zzb(zzane zzaneVar) {
        this.zzgkl.compareAndSet(null, zzaneVar);
    }

    public final zzdog zzd(String str, JSONObject jSONObject) throws zzdnt {
        try {
            zzdog zzdogVar = new zzdog("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? new zzaoa(new AdMobAdapter()) : "com.google.ads.mediation.AdUrlAdapter".equals(str) ? new zzaoa(new AdUrlAdapter()) : "com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str) ? new zzaoa(new zzaqa()) : zze(str, jSONObject));
            this.zzgkk.zza(str, zzdogVar);
            return zzdogVar;
        } catch (Throwable th) {
            throw new zzdnt(th);
        }
    }

    public final zzapk zzdf(String str) throws RemoteException {
        zzapk zzdf = zzapu().zzdf(str);
        this.zzgkk.zza(str, zzdf);
        return zzdf;
    }
}
