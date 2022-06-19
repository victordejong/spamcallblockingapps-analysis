package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzj.class */
public final class zzj {
    public final Map zza = new HashMap();

    public final void zza(String str, Callable callable) {
        this.zza.put(str, callable);
    }
}
