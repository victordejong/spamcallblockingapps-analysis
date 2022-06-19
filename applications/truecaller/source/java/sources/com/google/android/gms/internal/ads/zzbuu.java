package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbuu.class */
public final class zzbuu extends zzcgy {
    private final zzbut zza;

    public zzbuu(zzbut zzbutVar, String str) {
        super(str);
        this.zza = zzbutVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgy, com.google.android.gms.internal.ads.zzcgl
    public final void zza(String str) {
        String valueOf = String.valueOf(str);
        zzcgt.zzd(valueOf.length() != 0 ? "LeibnizHttpUrlPinger pinging URL: ".concat(valueOf) : new String("LeibnizHttpUrlPinger pinging URL: "));
        if ("oda".equals(Uri.parse(str).getScheme())) {
            return;
        }
        zzcgt.zzd("URL does not match oda:// scheme, falling back on HttpUrlPinger");
        super.zza(str);
    }
}
