package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.gl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gl.class */
public final class C12583gl implements AbstractC12607hi<Object> {

    /* renamed from: a */
    private final AbstractC12586go f49307a;

    public C12583gl(AbstractC12586go abstractC12586go) {
        this.f49307a = abstractC12586go;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        if (this.f49307a == null) {
            return;
        }
        String str = map.get("name");
        String str2 = str;
        if (str == null) {
            zzd.zzey("Ad metadata with no name parameter.");
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
            zzd.zzex("Failed to convert ad metadata to Bundle.");
        } else {
            this.f49307a.mo14637a(str2, bundle);
        }
    }
}
