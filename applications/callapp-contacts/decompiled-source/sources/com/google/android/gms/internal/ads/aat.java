package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aat.class */
public final class aat extends aal {
    @Override // com.google.android.gms.internal.ads.aal
    public final zzbbz a(Context context, abb abbVar, int i, boolean z, bi biVar, aay aayVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!(applicationInfo == null || applicationInfo.targetSdkVersion >= 11)) {
            return null;
        }
        return i == 2 ? new zzbcv(context, new aba(context, abbVar.k(), abbVar.g(), biVar, abbVar.c()), abbVar, z, a(abbVar), aayVar) : new zzbbq(context, abbVar, z, a(abbVar), aayVar, new aba(context, abbVar.k(), abbVar.g(), biVar, abbVar.c()));
    }
}
