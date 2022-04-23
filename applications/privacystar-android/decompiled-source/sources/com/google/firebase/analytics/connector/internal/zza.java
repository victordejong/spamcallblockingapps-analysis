package com.google.firebase.analytics.connector.internal;

import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/zza.class */
public interface zza {
    void registerEventNames(Set<String> set);

    void unregisterEventNames();

    AnalyticsConnector.AnalyticsConnectorListener zztl();
}
