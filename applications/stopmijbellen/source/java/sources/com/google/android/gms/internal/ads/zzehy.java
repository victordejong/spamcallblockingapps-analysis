package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehy.class */
public final class zzehy {
    private zzfdq zzc = null;
    private zzfdn zzd = null;
    private final Map<String, zzbfm> zzb = Collections.synchronizedMap(new HashMap());
    private final List<zzbfm> zza = Collections.synchronizedList(new ArrayList());

    public final zzdek zza() {
        return new zzdek(this.zzd, "", this, this.zzc);
    }

    public final List<zzbfm> zzb() {
        return this.zza;
    }

    public final void zzc(zzfdn zzfdnVar) {
        String str = zzfdnVar.zzx;
        if (this.zzb.containsKey(str)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = zzfdnVar.zzw.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, zzfdnVar.zzw.getString(next));
            } catch (JSONException e) {
            }
        }
        zzbfm zzbfmVar = new zzbfm(zzfdnVar.zzF, 0L, null, bundle);
        this.zza.add(zzbfmVar);
        this.zzb.put(str, zzbfmVar);
    }

    public final void zzd(zzfdn zzfdnVar, long j, zzbew zzbewVar) {
        String str = zzfdnVar.zzx;
        if (!this.zzb.containsKey(str)) {
            return;
        }
        if (this.zzd == null) {
            this.zzd = zzfdnVar;
        }
        zzbfm zzbfmVar = this.zzb.get(str);
        zzbfmVar.zzb = j;
        zzbfmVar.zzc = zzbewVar;
    }

    public final void zze(zzfdq zzfdqVar) {
        this.zzc = zzfdqVar;
    }
}
