package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.C2341q;
@TargetApi(26)
/* renamed from: com.google.android.gms.internal.ads.vr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vr.class */
public class C3580vr extends C3581vs {
    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final dxf mo6923a(Context context, TelephonyManager telephonyManager) {
        C2341q.m14744c();
        return C3567ve.m7005a(context, "android.permission.ACCESS_NETWORK_STATE") ? telephonyManager.isDataEnabled() ? dxf.ENUM_TRUE : dxf.ENUM_FALSE : dxf.ENUM_FALSE;
    }
}
