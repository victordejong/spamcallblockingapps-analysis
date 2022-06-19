package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.analytics.connector.internal.zza;
import com.google.firebase.analytics.connector.internal.zzc;
import com.google.firebase.analytics.connector.internal.zze;
import com.google.firebase.analytics.connector.internal.zzg;
import com.google.firebase.events.Event;
import com.google.firebase.events.Subscriber;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/connector/AnalyticsConnectorImpl.class */
public class AnalyticsConnectorImpl implements AnalyticsConnector {
    private static volatile AnalyticsConnector zzc;
    final AppMeasurementSdk zza;
    final Map<String, zza> zzb = new ConcurrentHashMap();

    AnalyticsConnectorImpl(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.checkNotNull(appMeasurementSdk);
        this.zza = appMeasurementSdk;
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
        if (zzc == null) {
            synchronized (AnalyticsConnectorImpl.class) {
                try {
                    if (zzc == null) {
                        Bundle bundle = new Bundle(1);
                        if (firebaseApp.isDefaultApp()) {
                            subscriber.subscribe(DataCollectionDefaultChange.class, zza.zza, zzb.zza);
                            bundle.putBoolean("dataCollectionDefaultEnabled", firebaseApp.isDataCollectionDefaultEnabled());
                        }
                        zzc = new AnalyticsConnectorImpl(zzbr.zza(context, null, null, null, bundle).zzb());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzc;
    }

    public static final /* synthetic */ void zza(Event event) {
        boolean z = ((DataCollectionDefaultChange) event.getPayload()).enabled;
        synchronized (AnalyticsConnectorImpl.class) {
            try {
                ((AnalyticsConnectorImpl) Preconditions.checkNotNull(zzc)).zza.zza(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc(String str) {
        return !str.isEmpty() && this.zzb.containsKey(str) && this.zzb.get(str) != null;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (str2 == null || zzc.zzb(str2, bundle)) {
            this.zza.clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public List<AnalyticsConnector.ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.zza.getConditionalUserProperties(str, str2)) {
            arrayList.add(zzc.zzh(bundle));
        }
        return arrayList;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public int getMaxUserProperties(String str) {
        return this.zza.getMaxUserProperties(str);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public Map<String, Object> getUserProperties(boolean z) {
        return this.zza.getUserProperties(null, null, z);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void logEvent(String str, String str2, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        if (zzc.zza(str) && zzc.zzb(str2, bundle2) && zzc.zzf(str, str2, bundle2)) {
            zzc.zzm(str, str2, bundle2);
            this.zza.logEvent(str, str2, bundle2);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public AnalyticsConnector.AnalyticsConnectorHandle registerAnalyticsConnectorListener(final String str, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        Preconditions.checkNotNull(analyticsConnectorListener);
        if (zzc.zza(str) && !zzc(str)) {
            AppMeasurementSdk appMeasurementSdk = this.zza;
            zze zzeVar = AppMeasurement.FIAM_ORIGIN.equals(str) ? new zze(appMeasurementSdk, analyticsConnectorListener) : (AppMeasurement.CRASH_ORIGIN.equals(str) || "clx".equals(str)) ? new zzg(appMeasurementSdk, analyticsConnectorListener) : null;
            if (zzeVar == null) {
                return null;
            }
            this.zzb.put(str, zzeVar);
            return new AnalyticsConnector.AnalyticsConnectorHandle() { // from class: com.google.firebase.analytics.connector.AnalyticsConnectorImpl.1
                @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
                public void registerEventNames(Set<String> set) {
                    if (!AnalyticsConnectorImpl.this.zzc(str) || !str.equals(AppMeasurement.FIAM_ORIGIN) || set == null || set.isEmpty()) {
                        return;
                    }
                    AnalyticsConnectorImpl.this.zzb.get(str).zzb(set);
                }

                @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
                public final void unregister() {
                    if (!AnalyticsConnectorImpl.this.zzc(str)) {
                        return;
                    }
                    AnalyticsConnector.AnalyticsConnectorListener zza = AnalyticsConnectorImpl.this.zzb.get(str).zza();
                    if (zza != null) {
                        zza.onMessageTriggered(0, null);
                    }
                    AnalyticsConnectorImpl.this.zzb.remove(str);
                }

                @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
                public void unregisterEventNames() {
                    if (!AnalyticsConnectorImpl.this.zzc(str) || !str.equals(AppMeasurement.FIAM_ORIGIN)) {
                        return;
                    }
                    AnalyticsConnectorImpl.this.zzb.get(str).zzc();
                }
            };
        }
        return null;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void setConditionalUserProperty(AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        if (!zzc.zze(conditionalUserProperty)) {
            return;
        }
        this.zza.setConditionalUserProperty(zzc.zzg(conditionalUserProperty));
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void setUserProperty(String str, String str2, Object obj) {
        if (zzc.zza(str) && zzc.zzd(str, str2)) {
            this.zza.setUserProperty(str, str2, obj);
        }
    }
}
