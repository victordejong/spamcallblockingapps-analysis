package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzrv.class */
public final class zzrv {
    private zzp zzbfg;
    private final Map<String, zzp> zzbon;

    private zzrv() {
        this.zzbon = new HashMap();
    }

    public final zzrv zzb(String str, zzp zzpVar) {
        this.zzbon.put(str, zzpVar);
        return this;
    }

    public final zzrv zzm(zzp zzpVar) {
        this.zzbfg = zzpVar;
        return this;
    }

    public final zzru zzsq() {
        return new zzru(this.zzbon, this.zzbfg);
    }
}
