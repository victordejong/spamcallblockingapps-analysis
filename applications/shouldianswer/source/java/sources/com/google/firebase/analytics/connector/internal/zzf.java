package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.connector.AnalyticsConnector;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/zzf.class */
public final class zzf implements AppMeasurement.OnEventListener {
    private final /* synthetic */ zzc zza;

    public zzf(zzc zzcVar) {
        this.zza = zzcVar;
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.OnEventListener, com.google.android.gms.measurement.internal.zzgz
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener;
        if (!this.zza.zza.contains(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("events", zzd.zze(str2));
        analyticsConnectorListener = this.zza.zzb;
        analyticsConnectorListener.onMessageTriggered(2, bundle2);
    }
}
