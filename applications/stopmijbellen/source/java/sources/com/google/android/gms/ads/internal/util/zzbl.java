package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzagw;
import com.google.android.gms.internal.ads.zzahb;
import com.google.android.gms.internal.ads.zzciz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbl.class */
public final class zzbl implements zzagw {
    public final /* synthetic */ String zza;
    public final /* synthetic */ zzbp zzb;

    public zzbl(zzbs zzbsVar, String str, zzbp zzbpVar) {
        this.zza = str;
        this.zzb = zzbpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzagw
    public final void zza(zzahb zzahbVar) {
        String str = this.zza;
        String exc = zzahbVar.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(exc).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(exc);
        zzciz.zzj(sb.toString());
        this.zzb.zza((zzbp) null);
    }
}
