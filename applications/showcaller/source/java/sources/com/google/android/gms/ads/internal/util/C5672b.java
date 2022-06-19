package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.C5667s;
@TargetApi(26)
/* renamed from: com.google.android.gms.ads.internal.util.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/b.class */
public class C5672b extends C5707j2 {
    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: p */
    public final int mo18044p(Context context, TelephonyManager telephonyManager) {
        C5667s.m18160d();
        return (!C5679c2.m18073e(context, "android.permission.ACCESS_NETWORK_STATE") || !telephonyManager.isDataEnabled()) ? 1 : 2;
    }
}
