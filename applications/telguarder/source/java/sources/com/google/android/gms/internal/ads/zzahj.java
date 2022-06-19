package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahj.class */
public final class zzahj implements zzaif<Object> {
    private final zzahi zzdgz;

    public zzahj(zzahi zzahiVar) {
        this.zzdgz = zzahiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zzdgz == null) {
            return;
        }
        String str = map.get("name");
        String str2 = str;
        if (str == null) {
            zzd.zzew("Ad metadata with no name parameter.");
            str2 = "";
        }
        Bundle bundle = null;
        if (map.containsKey("info")) {
            try {
                bundle = zzbh.zzh(new JSONObject(map.get("info")));
            } catch (JSONException e) {
                zzd.zzc("Failed to convert ad metadata to JSON.", e);
                bundle = null;
            }
        }
        if (bundle == null) {
            zzd.zzev("Failed to convert ad metadata to Bundle.");
        } else {
            this.zzdgz.zza(str2, bundle);
        }
    }
}
