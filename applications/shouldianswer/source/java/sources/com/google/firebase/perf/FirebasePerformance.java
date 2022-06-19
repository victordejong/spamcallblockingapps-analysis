package com.google.firebase.perf;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzar;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.firebase.FirebaseApp;
import com.google.firebase.perf.internal.FeatureControl;
import com.google.firebase.perf.internal.GaugeManager;
import com.google.firebase.perf.internal.RemoteConfigManager;
import com.google.firebase.perf.internal.zzf;
import com.google.firebase.perf.metrics.HttpMetric;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/FirebasePerformance.class */
public class FirebasePerformance {
    public static final int MAX_TRACE_NAME_LENGTH = 100;
    private static volatile FirebasePerformance zzab;
    private final Map<String, String> zzac;
    private final zzar zzad;
    private Boolean zzae;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/firebase/perf/FirebasePerformance$HttpMethod.class */
    public @interface HttpMethod {
        public static final String CONNECT = "CONNECT";
        public static final String DELETE = "DELETE";
        public static final String GET = "GET";
        public static final String HEAD = "HEAD";
        public static final String OPTIONS = "OPTIONS";
        public static final String PATCH = "PATCH";
        public static final String POST = "POST";
        public static final String PUT = "PUT";
        public static final String TRACE = "TRACE";
    }

    public FirebasePerformance(FirebaseApp firebaseApp, FirebaseRemoteConfig firebaseRemoteConfig) {
        this(firebaseApp, firebaseRemoteConfig, RemoteConfigManager.zzbi(), FeatureControl.zzad(), GaugeManager.zzap());
    }

    private FirebasePerformance(FirebaseApp firebaseApp, FirebaseRemoteConfig firebaseRemoteConfig, RemoteConfigManager remoteConfigManager, FeatureControl featureControl, GaugeManager gaugeManager) {
        this.zzac = new ConcurrentHashMap();
        this.zzae = null;
        if (firebaseApp == null) {
            this.zzae = false;
            this.zzad = new com.google.android.gms.internal.firebase_perf.zzar(new Bundle());
            return;
        }
        Context applicationContext = firebaseApp.getApplicationContext();
        this.zzad = zzb(applicationContext);
        this.zzae = zza(applicationContext);
        remoteConfigManager.zza(firebaseRemoteConfig);
        featureControl.zza(this.zzad);
        gaugeManager.zzf(applicationContext);
    }

    public static FirebasePerformance getInstance() {
        if (zzab == null) {
            synchronized (FirebasePerformance.class) {
                try {
                    if (zzab == null) {
                        zzab = (FirebasePerformance) FirebaseApp.getInstance().get(FirebasePerformance.class);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzab;
    }

    public static Trace startTrace(String str) {
        Trace zzi = Trace.zzi(str);
        zzi.start();
        return zzi;
    }

    private final Boolean zza(Context context) {
        if (zzm()) {
            return false;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("FirebasePerfSharedPrefs", 0);
        try {
            if (sharedPreferences.contains("isEnabled")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("isEnabled", true));
            }
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.d("FirebasePerformance", valueOf.length() != 0 ? "Unable to access enable value: ".concat(valueOf) : new String("Unable to access enable value: "));
        }
        if (this.zzad.containsKey("firebase_performance_collection_enabled")) {
            return Boolean.valueOf(this.zzad.getBoolean("firebase_performance_collection_enabled", true));
        }
        Log.d("isEnabled", "No perf enable meta data found in manifest.");
        return null;
    }

    private static zzar zzb(Context context) {
        Bundle bundle;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.d("isEnabled", valueOf.length() != 0 ? "No perf enable meta data found ".concat(valueOf) : new String("No perf enable meta data found "));
            bundle = null;
        }
        return bundle != null ? new com.google.android.gms.internal.firebase_perf.zzar(bundle) : new com.google.android.gms.internal.firebase_perf.zzar();
    }

    private final boolean zzm() {
        return this.zzad.getBoolean("firebase_performance_collection_deactivated", false);
    }

    public final Map<String, String> getAttributes() {
        return new HashMap(this.zzac);
    }

    public boolean isPerformanceCollectionEnabled() {
        Boolean bool = this.zzae;
        return bool != null ? bool.booleanValue() : FirebaseApp.getInstance().isDataCollectionDefaultEnabled();
    }

    public HttpMetric newHttpMetric(String str, String str2) {
        return new HttpMetric(str, str2, zzf.zzal(), (zzaz) new com.google.android.gms.internal.firebase_perf.zzaz());
    }

    public HttpMetric newHttpMetric(URL url, String str) {
        return new HttpMetric(url, str, zzf.zzal(), (zzaz) new com.google.android.gms.internal.firebase_perf.zzaz());
    }

    public Trace newTrace(String str) {
        return Trace.zzi(str);
    }

    public void setPerformanceCollectionEnabled(boolean z) {
        try {
            FirebaseApp.getInstance();
            SharedPreferences sharedPreferences = FirebaseApp.getInstance().getApplicationContext().getSharedPreferences("FirebasePerfSharedPrefs", 0);
            if (zzm()) {
                Log.i("FirebasePerformance", "Firebase Performance is permanently disabled");
                return;
            }
            sharedPreferences.edit().putBoolean("isEnabled", z).apply();
            this.zzae = Boolean.valueOf(z);
            if (z) {
                Log.i("FirebasePerformance", "Firebase Performance is Enabled");
            } else {
                Log.i("FirebasePerformance", "Firebase Performance is Disabled");
            }
        } catch (IllegalStateException e) {
        }
    }
}
