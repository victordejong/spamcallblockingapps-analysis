package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.AbstractC12627ib;
import com.google.android.gms.internal.ads.zzap;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzba.class */
public final class zzba implements AbstractC12627ib {
    private final /* synthetic */ String zzeik;
    private final /* synthetic */ zzbb zzeil;

    public zzba(zzay zzayVar, String str, zzbb zzbbVar) {
        this.zzeik = str;
        this.zzeil = zzbbVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12627ib
    public final void zzd(zzap zzapVar) {
        String str = this.zzeik;
        String zzapVar2 = zzapVar.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(zzapVar2).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append(StringUtils.f67179LF);
        sb.append(zzapVar2);
        zzd.zzez(sb.toString());
        this.zzeil.zzb(null);
    }
}
