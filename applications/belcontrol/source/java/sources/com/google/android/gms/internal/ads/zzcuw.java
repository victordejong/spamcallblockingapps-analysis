package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcuw.class */
public final class zzcuw {
    private final Clock zzbqg;
    private final zzcrq zzfxh;
    private final zzcuy zzgvg;
    private final List<String> zzgvh = Collections.synchronizedList(new ArrayList());
    private final boolean zzgvi = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcza)).booleanValue();

    public zzcuw(Clock clock, zzcuy zzcuyVar, zzcrq zzcrqVar) {
        this.zzbqg = clock;
        this.zzgvg = zzcuyVar;
        this.zzfxh = zzcrqVar;
    }

    public final void zza(String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        String str3 = sb2;
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 1 + String.valueOf(str2).length());
            sb3.append(sb2);
            sb3.append(".");
            sb3.append(str2);
            str3 = sb3.toString();
        }
        this.zzgvh.add(str3);
    }

    public final <T> zzdzw<T> zza(zzdnb zzdnbVar, zzdmw zzdmwVar, zzdzw<T> zzdzwVar) {
        long elapsedRealtime = this.zzbqg.elapsedRealtime();
        String str = zzdmwVar.zzdlu;
        if (str != null) {
            zzdzk.zza(zzdzwVar, new zzcuv(this, elapsedRealtime, str, zzdmwVar, zzdnbVar), zzazp.zzeih);
        }
        return zzdzwVar;
    }

    public final String zzasc() {
        return TextUtils.join("_", this.zzgvh);
    }
}
