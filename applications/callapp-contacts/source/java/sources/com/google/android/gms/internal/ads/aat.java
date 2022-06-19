package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aat.class */
public final class aat extends aal {
    @Override // com.google.android.gms.internal.ads.aal
    /* renamed from: a */
    public final zzbbz mo18946a(Context context, abb abbVar, int i, boolean z, C12241bi c12241bi, aay aayVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!(applicationInfo == null || applicationInfo.targetSdkVersion >= 11)) {
            return null;
        }
        return i == 2 ? new zzbcv(context, new aba(context, abbVar.mo13739k(), abbVar.mo13744g(), c12241bi, abbVar.mo13754c()), abbVar, z, m18950a(abbVar), aayVar) : new zzbbq(context, abbVar, z, m18950a(abbVar), aayVar, new aba(context, abbVar.mo13739k(), abbVar.mo13744g(), c12241bi, abbVar.mo13754c()));
    }
}
