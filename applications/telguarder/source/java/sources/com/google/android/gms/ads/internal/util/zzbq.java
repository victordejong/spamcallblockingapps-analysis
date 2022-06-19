package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzazo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbq.class */
public final class zzbq extends zza {
    private final String url;
    private final zzazo zzegt;

    public zzbq(Context context, String str, String str2) {
        this(str2, zzr.zzkr().zzq(context, str));
    }

    private zzbq(String str, String str2) {
        this.zzegt = new zzazo(str2);
        this.url = str;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwe() {
        this.zzegt.zzel(this.url);
    }
}
