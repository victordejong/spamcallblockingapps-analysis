package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabg.class */
public final class zzabg {
    private final Collection<zzaba<?>> zzclw = new ArrayList();
    private final Collection<zzaba<String>> zzclx = new ArrayList();
    private final Collection<zzaba<String>> zzcly = new ArrayList();

    public final void zza(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzaba<?> zzabaVar : this.zzclw) {
            if (zzabaVar.getSource() == 1) {
                zzabaVar.zza(editor, zzabaVar.zzb(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzazk.zzev("Flag Json is null.");
        }
    }

    public final void zza(zzaba zzabaVar) {
        this.zzclw.add(zzabaVar);
    }

    public final void zzb(zzaba<String> zzabaVar) {
        this.zzclx.add(zzabaVar);
    }

    public final void zzc(zzaba<String> zzabaVar) {
        this.zzcly.add(zzabaVar);
    }

    public final List<String> zzsc() {
        ArrayList arrayList = new ArrayList();
        for (zzaba<String> zzabaVar : this.zzclx) {
            String str = (String) zzwr.zzqr().zzd(zzabaVar);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(zzabq.zzsg());
        return arrayList;
    }

    public final List<String> zzsd() {
        List<String> zzsc = zzsc();
        for (zzaba<String> zzabaVar : this.zzcly) {
            String str = (String) zzwr.zzqr().zzd(zzabaVar);
            if (!TextUtils.isEmpty(str)) {
                zzsc.add(str);
            }
        }
        zzsc.addAll(zzabq.zzsh());
        return zzsc;
    }
}
