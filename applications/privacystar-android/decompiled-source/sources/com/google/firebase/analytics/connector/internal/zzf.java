package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/zzf.class */
public final class zzf implements zza {
    private AppMeasurement zzbsg;
    private AnalyticsConnector.AnalyticsConnectorListener zzbst;
    private zzg zzbsw = new zzg(this);

    public zzf(AppMeasurement appMeasurement, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        this.zzbst = analyticsConnectorListener;
        this.zzbsg = appMeasurement;
        this.zzbsg.registerOnMeasurementEventListener(this.zzbsw);
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void registerEventNames(Set<String> set) {
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void unregisterEventNames() {
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final AnalyticsConnector.AnalyticsConnectorListener zztl() {
        return this.zzbst;
    }
}
