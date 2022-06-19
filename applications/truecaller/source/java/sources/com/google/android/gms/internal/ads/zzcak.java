package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcak.class */
public final class zzcak {
    private View zza;
    private final Map<String, WeakReference<View>> zzb = new HashMap();

    public final zzcak zzc(View view) {
        this.zza = view;
        return this;
    }

    public final zzcak zzd(Map<String, View> map) {
        this.zzb.clear();
        for (Map.Entry<String, View> entry : map.entrySet()) {
            View value = entry.getValue();
            if (value != null) {
                this.zzb.put(entry.getKey(), new WeakReference<>(value));
            }
        }
        return this;
    }
}
