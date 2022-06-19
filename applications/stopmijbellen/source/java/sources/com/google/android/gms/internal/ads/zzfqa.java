package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqa.class */
public final class zzfqa {
    private final String zza;
    private final zzfpy zzb;
    private zzfpy zzc;

    public /* synthetic */ zzfqa(String str, zzfpz zzfpzVar) {
        zzfpy zzfpyVar = new zzfpy(null);
        this.zzb = zzfpyVar;
        this.zzc = zzfpyVar;
        Objects.requireNonNull(str);
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzfpy zzfpyVar = this.zzb.zzb;
        String str = "";
        while (true) {
            String str2 = str;
            if (zzfpyVar == null) {
                sb.append('}');
                return sb.toString();
            }
            Object obj = zzfpyVar.zza;
            sb.append(str2);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            zzfpyVar = zzfpyVar.zzb;
            str = ", ";
        }
    }

    public final zzfqa zza(@CheckForNull Object obj) {
        zzfpy zzfpyVar = new zzfpy(null);
        this.zzc.zzb = zzfpyVar;
        this.zzc = zzfpyVar;
        zzfpyVar.zza = obj;
        return this;
    }
}
