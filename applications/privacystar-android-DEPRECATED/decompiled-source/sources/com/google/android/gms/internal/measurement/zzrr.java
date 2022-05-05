package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzrr.class */
public final class zzrr {
    private String zzbam;
    @VisibleForTesting
    private Map<String, Object> zzbnk;
    private final Map<String, Object> zzbnl;
    private final zzsb zzbpu;
    private final Context zzri;
    private final Clock zzrz;

    public zzrr(Context context) {
        this(context, new HashMap(), new zzsb(context), DefaultClock.getInstance());
    }

    @VisibleForTesting
    private zzrr(Context context, Map<String, Object> map, zzsb zzsbVar, Clock clock) {
        this.zzbam = null;
        this.zzbnk = new HashMap();
        this.zzri = context;
        this.zzrz = clock;
        this.zzbpu = zzsbVar;
        this.zzbnl = map;
    }

    public final void zzfd(String str) {
        this.zzbam = str;
    }
}
