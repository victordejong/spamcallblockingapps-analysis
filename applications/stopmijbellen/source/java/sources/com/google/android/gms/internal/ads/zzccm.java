package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccm.class */
public final class zzccm {
    @Nonnull
    private View zza;
    private final Map<String, WeakReference<View>> zzb = new HashMap();

    public final zzccm zzb(View view) {
        this.zza = view;
        return this;
    }

    public final zzccm zzc(Map<String, View> map) {
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
