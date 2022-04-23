package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagu.class */
public final class zzagu implements zzahq<Object> {

    /* renamed from: a */
    public final zzagt f24089a;

    public zzagu(zzagt zzagtVar) {
        this.f24089a = zzagtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        if (this.f24089a != null) {
            String str = map.get("name");
            String str2 = str;
            if (str == null) {
                zzbbq.m15854c("Ad metadata with no name parameter.");
                str2 = "";
            }
            Bundle bundle = null;
            if (map.containsKey("info")) {
                try {
                    bundle = zzbao.m15956a(new JSONObject(map.get("info")));
                } catch (JSONException e) {
                    zzbbq.m15855b("Failed to convert ad metadata to JSON.", e);
                    bundle = null;
                }
            }
            if (bundle == null) {
                zzbbq.m15856b("Failed to convert ad metadata to Bundle.");
            } else {
                this.f24089a.mo15013a(str2, bundle);
            }
        }
    }
}
