package com.google.android.gms.internal.ads;

import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyDisplayInfo;
/* renamed from: com.google.android.gms.internal.ads.ia */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ia.class */
final class C6582ia extends PhoneStateListener {

    /* renamed from: a */
    final /* synthetic */ C6620ja f24178a;

    public /* synthetic */ C6582ia(C6620ja c6620ja, C6508ga c6508ga) {
        this.f24178a = c6620ja;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
        C6620ja.m14147d(this.f24178a, true != (overrideNetworkType == 3 || overrideNetworkType == 4) ? 5 : 10);
    }

    @Override // android.telephony.PhoneStateListener
    public final void onServiceStateChanged(ServiceState serviceState) {
        String serviceState2 = serviceState == null ? "" : serviceState.toString();
        C6620ja.m14147d(this.f24178a, true != (serviceState2.contains("nrState=CONNECTED") || serviceState2.contains("nrState=NOT_RESTRICTED")) ? 5 : 10);
    }
}
