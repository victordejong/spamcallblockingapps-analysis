package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzelg.class */
public final class zzelg {
    private final Clock zza;
    private final zzelh zzb;
    private final zzfjs zzc;
    private final List<String> zzd = Collections.synchronizedList(new ArrayList());
    private final boolean zze = ((Boolean) zzbgq.zzc().zzb(zzblj.zzfk)).booleanValue();
    private final zzehy zzf;

    public zzelg(Clock clock, zzelh zzelhVar, zzehy zzehyVar, zzfjs zzfjsVar) {
        this.zza = clock;
        this.zzb = zzelhVar;
        this.zzf = zzehyVar;
        this.zzc = zzfjsVar;
    }

    public static /* bridge */ /* synthetic */ void zzg(zzelg zzelgVar, String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        String str3 = sb2;
        if (!TextUtils.isEmpty(str2)) {
            str3 = C0608b.m7625j(new StringBuilder(C0033h.m8889h(sb2, 1, String.valueOf(str2).length())), sb2, ".", str2);
        }
        zzelgVar.zzd.add(str3);
    }

    public final <T> zzfxa<T> zze(zzfdz zzfdzVar, zzfdn zzfdnVar, zzfxa<T> zzfxaVar, zzfjp zzfjpVar) {
        zzfdq zzfdqVar = zzfdzVar.zzb.zzb;
        long elapsedRealtime = this.zza.elapsedRealtime();
        String str = zzfdnVar.zzx;
        if (str != null) {
            zzfwq.zzr(zzfxaVar, new zzelf(this, elapsedRealtime, str, zzfdnVar, zzfdqVar, zzfjpVar, zzfdzVar), zzcjm.zzf);
        }
        return zzfxaVar;
    }

    public final String zzf() {
        return TextUtils.join("_", this.zzd);
    }
}
