package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbru.class */
public final class zzbru implements zzbrt<Object> {
    private final zzebt zza;

    public zzbru(zzebt zzebtVar) {
        Preconditions.checkNotNull(zzebtVar, "The Inspector Manager must not be null");
        this.zza = zzebtVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r2v1 */
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        if (map == null || !map.containsKey("extras")) {
            return;
        }
        ?? r11 = true;
        if (map.containsKey("expires")) {
            try {
                r11 = Long.parseLong(map.get("expires"));
            } catch (NumberFormatException e) {
                r11 = true;
            }
        }
        this.zza.zzh(map.get("extras"), r11 == true ? 1L : 0L);
    }
}
