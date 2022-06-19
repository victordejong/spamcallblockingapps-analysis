package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahl.class */
public final class zzahl implements zzaif<Object> {
    private final zzahk zzdha;

    public zzahl(zzahk zzahkVar) {
        this.zzdha = zzahkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            zzd.zzex("App event with no name parameter.");
        } else {
            this.zzdha.onAppEvent(str, map.get("info"));
        }
    }
}
