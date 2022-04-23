package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zc;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbq.class */
public final class zzbq extends zza {
    private final String url;
    private final zc zzeiw;

    public zzbq(Context context, String str, String str2) {
        this(str2, zzr.zzkv().zzq(context, str));
    }

    private zzbq(String str, String str2) {
        this.zzeiw = new zc(str2);
        this.url = str;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        this.zzeiw.zzen(this.url);
    }
}
