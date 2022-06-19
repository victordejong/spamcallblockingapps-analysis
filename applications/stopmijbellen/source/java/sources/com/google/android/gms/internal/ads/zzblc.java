package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblc.class */
public final class zzblc {
    private final Collection<zzblb<?>> zza = new ArrayList();
    private final Collection<zzblb<String>> zzb = new ArrayList();
    private final Collection<zzblb<String>> zzc = new ArrayList();

    public final List<String> zza() {
        ArrayList arrayList = new ArrayList();
        for (zzblb<String> zzblbVar : this.zzb) {
            String str = (String) zzbgq.zzc().zzb(zzblbVar);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(zzblk.zza());
        return arrayList;
    }

    public final List<String> zzb() {
        List<String> zza = zza();
        for (zzblb<String> zzblbVar : this.zzc) {
            String str = (String) zzbgq.zzc().zzb(zzblbVar);
            if (!TextUtils.isEmpty(str)) {
                zza.add(str);
            }
        }
        zza.addAll(zzblk.zzb());
        return zza;
    }

    public final void zzc(zzblb<String> zzblbVar) {
        this.zzb.add(zzblbVar);
    }

    public final void zzd(zzblb zzblbVar) {
        this.zza.add(zzblbVar);
    }

    public final void zze(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzblb<?> zzblbVar : this.zza) {
            if (zzblbVar.zze() == 1) {
                zzblbVar.zzd(editor, zzblbVar.zza(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzciz.zzg("Flag Json is null.");
        }
    }
}
