package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.List;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzrw.class */
public final class zzrw {
    private final String version;
    private final List<zzry> zzbol;
    private final Map<String, List<zzru>> zzbom;
    private final int zzph;

    private zzrw(List<zzry> list, Map<String, List<zzru>> map, String str, int i) {
        this.zzbol = Collections.unmodifiableList(list);
        this.zzbom = Collections.unmodifiableMap(map);
        this.version = str;
        this.zzph = i;
    }

    public static zzrx zzsr() {
        return new zzrx();
    }

    public final String getVersion() {
        return this.version;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzbol);
        String valueOf2 = String.valueOf(this.zzbom);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 17 + String.valueOf(valueOf2).length());
        sb.append("Rules: ");
        sb.append(valueOf);
        sb.append("  Macros: ");
        sb.append(valueOf2);
        return sb.toString();
    }

    public final List<zzry> zzrw() {
        return this.zzbol;
    }

    public final Map<String, List<zzru>> zzss() {
        return this.zzbom;
    }
}
