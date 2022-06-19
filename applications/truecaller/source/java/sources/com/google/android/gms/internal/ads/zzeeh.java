package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeeh.class */
public final class zzeeh {
    private zzfac zzc = null;
    private zzezz zzd = null;
    private final Map<String, zzbdp> zzb = Collections.synchronizedMap(new HashMap());
    private final List<zzbdp> zza = Collections.synchronizedList(new ArrayList());

    public final void zza(zzfac zzfacVar) {
        this.zzc = zzfacVar;
    }

    public final void zzb(zzezz zzezzVar) {
        String str = zzezzVar.zzw;
        if (this.zzb.containsKey(str)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = zzezzVar.zzv.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, zzezzVar.zzv.getString(next));
            } catch (JSONException e) {
            }
        }
        zzbdp zzbdpVar = new zzbdp(zzezzVar.zzE, 0L, null, bundle);
        this.zza.add(zzbdpVar);
        this.zzb.put(str, zzbdpVar);
    }

    public final void zzc(zzezz zzezzVar, long j, zzbcz zzbczVar) {
        String str = zzezzVar.zzw;
        if (!this.zzb.containsKey(str)) {
            return;
        }
        if (this.zzd == null) {
            this.zzd = zzezzVar;
        }
        zzbdp zzbdpVar = this.zzb.get(str);
        zzbdpVar.zzb = j;
        zzbdpVar.zzc = zzbczVar;
    }

    public final zzdav zzd() {
        return new zzdav(this.zzd, "", this, this.zzc);
    }

    public final List<zzbdp> zze() {
        return this.zza;
    }
}
