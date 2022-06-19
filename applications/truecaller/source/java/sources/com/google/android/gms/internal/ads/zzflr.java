package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzflr.class */
public final class zzflr {
    private final String zza;
    private final zzflq zzb;
    private zzflq zzc;

    public /* synthetic */ zzflr(String str, zzflp zzflpVar) {
        zzflq zzflqVar = new zzflq(null);
        this.zzb = zzflqVar;
        this.zzc = zzflqVar;
        Objects.requireNonNull(str);
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzflq zzflqVar = this.zzb.zzb;
        String str = "";
        while (true) {
            String str2 = str;
            if (zzflqVar == null) {
                sb.append('}');
                return sb.toString();
            }
            Object obj = zzflqVar.zza;
            sb.append(str2);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            zzflqVar = zzflqVar.zzb;
            str = ", ";
        }
    }

    public final zzflr zza(Object obj) {
        zzflq zzflqVar = new zzflq(null);
        this.zzc.zzb = zzflqVar;
        this.zzc = zzflqVar;
        zzflqVar.zza = obj;
        return this;
    }
}
