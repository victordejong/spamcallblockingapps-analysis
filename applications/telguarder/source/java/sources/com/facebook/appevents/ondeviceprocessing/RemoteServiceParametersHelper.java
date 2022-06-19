package com.facebook.appevents.ondeviceprocessing;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.ondeviceprocessing.RemoteServiceWrapper;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper.class */
public class RemoteServiceParametersHelper {
    private static final String TAG = RemoteServiceWrapper.class.getSimpleName();

    RemoteServiceParametersHelper() {
    }

    public static Bundle buildEventsBundle(RemoteServiceWrapper.EventType eventType, String str, List<AppEvent> list) {
        if (CrashShieldHandler.isObjectCrashing(RemoteServiceParametersHelper.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList(list);
            Bundle bundle = new Bundle();
            bundle.putString(NotificationCompat.CATEGORY_EVENT, eventType.toString());
            bundle.putString("app_id", str);
            if (RemoteServiceWrapper.EventType.CUSTOM_APP_EVENTS == eventType) {
                JSONArray buildEventsJson = buildEventsJson(arrayList, str);
                if (buildEventsJson.length() == 0) {
                    return null;
                }
                bundle.putString("custom_events", buildEventsJson.toString());
            }
            return bundle;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RemoteServiceParametersHelper.class);
            return null;
        }
    }

    private static JSONArray buildEventsJson(List<AppEvent> list, String str) {
        if (CrashShieldHandler.isObjectCrashing(RemoteServiceParametersHelper.class)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            EventDeactivationManager.processEvents(list);
            boolean includeImplicitEvents = includeImplicitEvents(str);
            for (AppEvent appEvent : list) {
                if (!appEvent.isChecksumValid()) {
                    String str2 = TAG;
                    Utility.logd(str2, "Event with invalid checksum: " + appEvent.toString());
                } else if ((!appEvent.getIsImplicit()) || (appEvent.getIsImplicit() && includeImplicitEvents)) {
                    jSONArray.put(appEvent.getJSONObject());
                }
            }
            return jSONArray;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RemoteServiceParametersHelper.class);
            return null;
        }
    }

    private static boolean includeImplicitEvents(String str) {
        boolean z = false;
        if (CrashShieldHandler.isObjectCrashing(RemoteServiceParametersHelper.class)) {
            return false;
        }
        try {
            FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(str, false);
            if (queryAppSettings != null) {
                z = queryAppSettings.supportsImplicitLogging();
            }
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RemoteServiceParametersHelper.class);
            return false;
        }
    }
}
