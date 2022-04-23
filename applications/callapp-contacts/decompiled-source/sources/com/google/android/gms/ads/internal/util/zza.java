package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.dbt;
import com.google.android.gms.internal.ads.zd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zza.class */
public abstract class zza {
    private volatile Thread thread;
    private final Runnable zzefm = new zzc(this);
    private boolean zzefn = false;

    public abstract void zzwp();

    public final dbt<?> zzyx() {
        return zd.f28573a.a(this.zzefm);
    }
}
