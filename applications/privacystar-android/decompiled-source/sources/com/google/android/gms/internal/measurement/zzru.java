package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzru.class */
public final class zzru {
    private final zzp zzbfg;
    private final Map<String, zzp> zzbon;

    private zzru(Map<String, zzp> map, zzp zzpVar) {
        this.zzbon = map;
        this.zzbfg = zzpVar;
    }

    public static zzrv zzsp() {
        return new zzrv();
    }

    public final String toString() {
        String valueOf = String.valueOf(Collections.unmodifiableMap(this.zzbon));
        String valueOf2 = String.valueOf(this.zzbfg);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32 + String.valueOf(valueOf2).length());
        sb.append("Properties: ");
        sb.append(valueOf);
        sb.append(" pushAfterEvaluate: ");
        sb.append(valueOf2);
        return sb.toString();
    }

    public final void zza(String str, zzp zzpVar) {
        this.zzbon.put(str, zzpVar);
    }

    public final zzp zzpm() {
        return this.zzbfg;
    }

    public final Map<String, zzp> zzry() {
        return Collections.unmodifiableMap(this.zzbon);
    }
}
