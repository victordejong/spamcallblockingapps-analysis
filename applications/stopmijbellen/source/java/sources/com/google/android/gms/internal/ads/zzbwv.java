package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwv.class */
public final class zzbwv extends zzcje {
    private final zzbwu zza;

    public zzbwv(zzbwu zzbwuVar, String str) {
        super(str);
        this.zza = zzbwuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcje, com.google.android.gms.internal.ads.zzcir
    public final void zza(String str) {
        String valueOf = String.valueOf(str);
        zzciz.zze(valueOf.length() != 0 ? "LeibnizHttpUrlPinger pinging URL: ".concat(valueOf) : new String("LeibnizHttpUrlPinger pinging URL: "));
        if ("oda".equals(Uri.parse(str).getScheme())) {
            return;
        }
        zzciz.zze("URL does not match oda:// scheme, falling back on HttpUrlPinger");
        super.zza(str);
    }
}
