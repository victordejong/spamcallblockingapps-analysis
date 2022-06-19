package com.facebook.appevents.suggestedevents;

import android.app.Activity;
import com.facebook.FacebookSdk;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.p009ml.ModelManager;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/suggestedevents/SuggestedEventsManager.class */
public final class SuggestedEventsManager {
    private static final String ELIGIBLE_EVENTS_KEY = "eligible_for_prediction_events";
    private static final String PRODUCTION_EVENTS_KEY = "production_events";
    private static final AtomicBoolean enabled = new AtomicBoolean(false);
    private static final Set<String> productionEvents = new HashSet();
    private static final Set<String> eligibleEvents = new HashSet();

    static /* synthetic */ AtomicBoolean access$000() {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return null;
        }
        try {
            return enabled;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
            return null;
        }
    }

    static /* synthetic */ void access$100() {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return;
        }
        try {
            initialize();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
        }
    }

    public static void enable() {
        synchronized (SuggestedEventsManager.class) {
            try {
                if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
                    return;
                }
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.suggestedevents.SuggestedEventsManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CrashShieldHandler.isObjectCrashing(this)) {
                            return;
                        }
                        try {
                            if (SuggestedEventsManager.access$000().get()) {
                                return;
                            }
                            SuggestedEventsManager.access$000().set(true);
                            SuggestedEventsManager.access$100();
                        } catch (Throwable th) {
                            CrashShieldHandler.handleThrowable(th, this);
                        }
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void initialize() {
        String suggestedEventsSetting;
        File ruleFile;
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return;
        }
        try {
            FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(FacebookSdk.getApplicationId(), false);
            if (queryAppSettings == null || (suggestedEventsSetting = queryAppSettings.getSuggestedEventsSetting()) == null) {
                return;
            }
            populateEventsFromRawJsonString(suggestedEventsSetting);
            if ((productionEvents.isEmpty() && eligibleEvents.isEmpty()) || (ruleFile = ModelManager.getRuleFile(ModelManager.Task.MTML_APP_EVENT_PREDICTION)) == null) {
                return;
            }
            FeatureExtractor.initialize(ruleFile);
            Activity currentActivity = ActivityLifecycleTracker.getCurrentActivity();
            if (currentActivity == null) {
                return;
            }
            trackActivity(currentActivity);
        } catch (Exception e) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
        }
    }

    public static boolean isEligibleEvents(String str) {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return false;
        }
        try {
            return eligibleEvents.contains(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
            return false;
        }
    }

    public static boolean isEnabled() {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return false;
        }
        try {
            return enabled.get();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
            return false;
        }
    }

    public static boolean isProductionEvents(String str) {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return false;
        }
        try {
            return productionEvents.contains(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
            return false;
        }
    }

    protected static void populateEventsFromRawJsonString(String str) {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has(PRODUCTION_EVENTS_KEY)) {
                JSONArray jSONArray = jSONObject.getJSONArray(PRODUCTION_EVENTS_KEY);
                for (int i = 0; i < jSONArray.length(); i++) {
                    productionEvents.add(jSONArray.getString(i));
                }
            }
            if (!jSONObject.has(ELIGIBLE_EVENTS_KEY)) {
                return;
            }
            JSONArray jSONArray2 = jSONObject.getJSONArray(ELIGIBLE_EVENTS_KEY);
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                eligibleEvents.add(jSONArray2.getString(i2));
            }
        } catch (Exception e) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
        }
    }

    public static void trackActivity(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return;
        }
        try {
            if (!enabled.get() || !FeatureExtractor.isInitialized() || (productionEvents.isEmpty() && eligibleEvents.isEmpty())) {
                ViewObserver.stopTrackingActivity(activity);
            } else {
                ViewObserver.startTrackingActivity(activity);
            }
        } catch (Exception e) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
        }
    }
}
