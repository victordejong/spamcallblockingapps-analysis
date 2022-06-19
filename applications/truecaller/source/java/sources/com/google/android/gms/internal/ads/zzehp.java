package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehp.class */
public final class zzehp {
    private final Clock zza;
    private final zzehq zzb;
    private final List<String> zzc = Collections.synchronizedList(new ArrayList());
    private final boolean zzd = ((Boolean) zzbet.zzc().zzc(zzbjl.zzfd)).booleanValue();
    private final zzeeh zze;

    public zzehp(Clock clock, zzehq zzehqVar, zzeeh zzeehVar) {
        this.zza = clock;
        this.zzb = zzehqVar;
        this.zze = zzeehVar;
    }

    public static /* synthetic */ void zzf(zzehp zzehpVar, String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 33);
        sb.append(str);
        sb.append(StringConstant.DOT);
        sb.append(i);
        sb.append(StringConstant.DOT);
        sb.append(j);
        String sb2 = sb.toString();
        String str3 = sb2;
        if (!TextUtils.isEmpty(str2)) {
            str3 = C22128a.m8610j(new StringBuilder(sb2.length() + 1 + String.valueOf(str2).length()), sb2, StringConstant.DOT, str2);
        }
        zzehpVar.zzc.add(str3);
    }

    public final <T> zzfsm<T> zze(zzfac zzfacVar, zzezz zzezzVar, zzfsm<T> zzfsmVar) {
        long mo38789a = this.zza.mo38789a();
        String str = zzezzVar.zzw;
        if (str != null) {
            zzfsd.zzp(zzfsmVar, new zzeho(this, mo38789a, str, zzezzVar, zzfacVar), zzchg.zzf);
        }
        return zzfsmVar;
    }

    public final String zzg() {
        return TextUtils.join(AnalyticsConstants.DELIMITER_MAIN, this.zzc);
    }
}
