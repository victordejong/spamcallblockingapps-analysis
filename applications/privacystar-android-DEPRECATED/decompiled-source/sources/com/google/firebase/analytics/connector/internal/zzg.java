package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.connector.AnalyticsConnector;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/zzg.class */
public final class zzg implements AppMeasurement.OnEventListener {
    private final /* synthetic */ zzf zzbsx;

    public zzg(zzf zzfVar) {
        this.zzbsx = zzfVar;
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.OnEventListener
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener;
        if (str != null && !str.equals(AppMeasurement.CRASH_ORIGIN) && zzc.zzfp(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("name", str2);
            bundle2.putLong("timestampInMillis", j);
            bundle2.putBundle("params", bundle);
            analyticsConnectorListener = this.zzbsx.zzbst;
            analyticsConnectorListener.onMessageTriggered(3, bundle2);
        }
    }
}
