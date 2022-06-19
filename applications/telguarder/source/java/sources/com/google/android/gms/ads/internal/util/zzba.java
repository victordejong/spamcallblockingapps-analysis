package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzaj;
import com.google.android.gms.internal.ads.zzap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzba.class */
public final class zzba implements zzaj {
    private final /* synthetic */ String zzegh;
    private final /* synthetic */ zzbb zzegi;

    public zzba(zzay zzayVar, String str, zzbb zzbbVar) {
        this.zzegh = str;
        this.zzegi = zzbbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzd(zzap zzapVar) {
        String str = this.zzegh;
        String zzapVar2 = zzapVar.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(zzapVar2).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(zzapVar2);
        zzd.zzex(sb.toString());
        this.zzegi.zzb(null);
    }
}
