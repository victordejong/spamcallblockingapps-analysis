package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gl.class */
public final class gl implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final go f28017a;

    public gl(go goVar) {
        this.f28017a = goVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        if (this.f28017a != null) {
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
                this.f28017a.a(str2, bundle);
            }
        }
    }
}
