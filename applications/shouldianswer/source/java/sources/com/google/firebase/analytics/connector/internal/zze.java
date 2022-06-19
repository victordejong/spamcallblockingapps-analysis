package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/zze.class */
public final class zze implements zza {
    private AnalyticsConnector.AnalyticsConnectorListener zza;
    private AppMeasurement zzb;
    private zzg zzc = new zzg(this);

    public zze(AppMeasurement appMeasurement, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        this.zza = analyticsConnectorListener;
        this.zzb = appMeasurement;
        this.zzb.registerOnMeasurementEventListener(this.zzc);
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final AnalyticsConnector.AnalyticsConnectorListener zza() {
        return this.zza;
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void zza(Set<String> set) {
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void zzb() {
    }
}
