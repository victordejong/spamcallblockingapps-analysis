package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nonnull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasr.class */
public final class zzasr {
    @Nonnull
    private View zzaat;
    private final Map<String, WeakReference<View>> zzdto = new HashMap();

    public final zzasr zzh(Map<String, View> map) {
        this.zzdto.clear();
        for (Map.Entry<String, View> entry : map.entrySet()) {
            View value = entry.getValue();
            if (value != null) {
                this.zzdto.put(entry.getKey(), new WeakReference<>(value));
            }
        }
        return this;
    }

    public final zzasr zzk(View view) {
        this.zzaat = view;
        return this;
    }
}
