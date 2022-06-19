package com.facebook.appevents.ondeviceprocessing;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager.class */
public class OnDeviceProcessingManager {
    private static final Set<String> ALLOWED_IMPLICIT_EVENTS = new HashSet(Arrays.asList(AppEventsConstants.EVENT_NAME_PURCHASED, AppEventsConstants.EVENT_NAME_START_TRIAL, AppEventsConstants.EVENT_NAME_SUBSCRIBE));

    private static boolean isEventEligibleForOnDeviceProcessing(AppEvent appEvent) {
        boolean z = false;
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return false;
        }
        try {
            boolean z2 = appEvent.getIsImplicit() && ALLOWED_IMPLICIT_EVENTS.contains(appEvent.getName());
            if ((!appEvent.getIsImplicit()) || z2) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, OnDeviceProcessingManager.class);
            return false;
        }
    }

    public static boolean isOnDeviceProcessingEnabled() {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return false;
        }
        try {
            boolean z = false;
            if (!FacebookSdk.getLimitEventAndDataUsage(FacebookSdk.getApplicationContext()) && !Utility.isDataProcessingRestricted()) {
                z = false;
                if (RemoteServiceWrapper.isServiceAvailable()) {
                    z = true;
                }
            }
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, OnDeviceProcessingManager.class);
            return false;
        }
    }

    public static void sendCustomEventAsync(final String str, final AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            if (!isEventEligibleForOnDeviceProcessing(appEvent)) {
                return;
            }
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager.2
                @Override // java.lang.Runnable
                public void run() {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        RemoteServiceWrapper.sendCustomEvents(str, Arrays.asList(appEvent));
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, OnDeviceProcessingManager.class);
        }
    }

    public static void sendInstallEventAsync(final String str, final String str2) {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            final Context applicationContext = FacebookSdk.getApplicationContext();
            if (applicationContext == null || str == null || str2 == null) {
                return;
            }
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences(str2, 0);
                        String str3 = str + "pingForOnDevice";
                        if (sharedPreferences.getLong(str3, 0L) != 0) {
                            return;
                        }
                        RemoteServiceWrapper.sendInstallEvent(str);
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        edit.putLong(str3, System.currentTimeMillis());
                        edit.apply();
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, OnDeviceProcessingManager.class);
        }
    }
}
