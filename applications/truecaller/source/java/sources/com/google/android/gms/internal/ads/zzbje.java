package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbje.class */
public final class zzbje {
    private final Collection<zzbjd<?>> zza = new ArrayList();
    private final Collection<zzbjd<String>> zzb = new ArrayList();
    private final Collection<zzbjd<String>> zzc = new ArrayList();

    public final void zza(zzbjd zzbjdVar) {
        this.zza.add(zzbjdVar);
    }

    public final void zzb(zzbjd<String> zzbjdVar) {
        this.zzb.add(zzbjdVar);
    }

    public final void zzc(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzbjd<?> zzbjdVar : this.zza) {
            if (zzbjdVar.zzm() == 1) {
                zzbjdVar.zzb(editor, zzbjdVar.zzc(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzcgt.zzf("Flag Json is null.");
        }
    }

    public final List<String> zzd() {
        ArrayList arrayList = new ArrayList();
        for (zzbjd<String> zzbjdVar : this.zzb) {
            String str = (String) zzbet.zzc().zzc(zzbjdVar);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(zzbjm.zza());
        return arrayList;
    }

    public final List<String> zze() {
        List<String> zzd = zzd();
        for (zzbjd<String> zzbjdVar : this.zzc) {
            String str = (String) zzbet.zzc().zzc(zzbjdVar);
            if (!TextUtils.isEmpty(str)) {
                zzd.add(str);
            }
        }
        zzd.addAll(zzbjm.zzb());
        return zzd;
    }
}
