package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.analytics.connector.internal.zza;
import com.google.firebase.analytics.connector.internal.zzc;
import com.google.firebase.analytics.connector.internal.zzd;
import com.google.firebase.analytics.connector.internal.zze;
import com.google.firebase.events.Event;
import com.google.firebase.events.Subscriber;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/AnalyticsConnectorImpl.class */
public class AnalyticsConnectorImpl implements AnalyticsConnector {
    private static volatile AnalyticsConnector zzb;
    final Map<String, zza> zza = new ConcurrentHashMap();
    private final AppMeasurement zzc;

    private AnalyticsConnectorImpl(AppMeasurement appMeasurement) {
        Preconditions.checkNotNull(appMeasurement);
        this.zzc = appMeasurement;
    }

    public static AnalyticsConnector getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    public static AnalyticsConnector getInstance(FirebaseApp firebaseApp) {
        return (AnalyticsConnector) firebaseApp.get(AnalyticsConnector.class);
    }

    public static AnalyticsConnector getInstance(FirebaseApp firebaseApp, Context context, Subscriber subscriber) {
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(subscriber);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (AnalyticsConnectorImpl.class) {
                try {
                    if (zzb == null) {
                        Bundle bundle = new Bundle(1);
                        if (firebaseApp.isDefaultApp()) {
                            subscriber.subscribe(DataCollectionDefaultChange.class, zzb.zza, zza.zza);
                            bundle.putBoolean("dataCollectionDefaultEnabled", firebaseApp.isDataCollectionDefaultEnabled());
                        }
                        zzb = new AnalyticsConnectorImpl(AppMeasurement.zza(context, bundle));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzb;
    }

    public static final /* synthetic */ void zza(Event event) {
        boolean z = ((DataCollectionDefaultChange) event.getPayload()).enabled;
        synchronized (AnalyticsConnectorImpl.class) {
            try {
                ((AnalyticsConnectorImpl) zzb).zzc.zza(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zza(String str) {
        return !str.isEmpty() && this.zza.containsKey(str) && this.zza.get(str) != null;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (str2 == null || zzd.zza(str2, bundle)) {
            this.zzc.clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public List<AnalyticsConnector.ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (AppMeasurement.ConditionalUserProperty conditionalUserProperty : this.zzc.getConditionalUserProperties(str, str2)) {
            arrayList.add(zzd.zza(conditionalUserProperty));
        }
        return arrayList;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public int getMaxUserProperties(String str) {
        return this.zzc.getMaxUserProperties(str);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public Map<String, Object> getUserProperties(boolean z) {
        return this.zzc.getUserProperties(z);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void logEvent(String str, String str2, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        if (zzd.zza(str) && zzd.zza(str2, bundle2) && zzd.zza(str, str2, bundle2)) {
            this.zzc.logEventInternal(str, str2, bundle2);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public AnalyticsConnector.AnalyticsConnectorHandle registerAnalyticsConnectorListener(final String str, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        Preconditions.checkNotNull(analyticsConnectorListener);
        if (zzd.zza(str) && !zza(str)) {
            AppMeasurement appMeasurement = this.zzc;
            zzc zzcVar = "fiam".equals(str) ? new zzc(appMeasurement, analyticsConnectorListener) : "crash".equals(str) ? new zze(appMeasurement, analyticsConnectorListener) : null;
            if (zzcVar == null) {
                return null;
            }
            this.zza.put(str, zzcVar);
            return new AnalyticsConnector.AnalyticsConnectorHandle() { // from class: com.google.firebase.analytics.connector.AnalyticsConnectorImpl.1
                @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
                public void registerEventNames(Set<String> set) {
                    if (!AnalyticsConnectorImpl.this.zza(str) || !str.equals("fiam") || set == null || set.isEmpty()) {
                        return;
                    }
                    AnalyticsConnectorImpl.this.zza.get(str).zza(set);
                }

                @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
                public void unregister() {
                    if (!AnalyticsConnectorImpl.this.zza(str)) {
                        return;
                    }
                    AnalyticsConnector.AnalyticsConnectorListener zza = AnalyticsConnectorImpl.this.zza.get(str).zza();
                    if (zza != null) {
                        zza.onMessageTriggered(0, null);
                    }
                    AnalyticsConnectorImpl.this.zza.remove(str);
                }

                @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
                public void unregisterEventNames() {
                    if (!AnalyticsConnectorImpl.this.zza(str) || !str.equals("fiam")) {
                        return;
                    }
                    AnalyticsConnectorImpl.this.zza.get(str).zzb();
                }
            };
        }
        return null;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void setConditionalUserProperty(AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        if (!zzd.zza(conditionalUserProperty)) {
            return;
        }
        this.zzc.setConditionalUserProperty(zzd.zzb(conditionalUserProperty));
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void setUserProperty(String str, String str2, Object obj) {
        if (zzd.zza(str) && zzd.zza(str, str2)) {
            this.zzc.setUserPropertyInternal(str, str2, obj);
        }
    }
}
