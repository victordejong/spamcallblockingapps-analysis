package com.facebook.appevents.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.work.PeriodicWorkRequest;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.Logger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.internal.security.CertificateUtil;
import com.telguarder.ApplicationConstants;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/internal/SessionLogger.class */
class SessionLogger {
    private static final long[] INACTIVE_SECONDS_QUANTA = {PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS, 1800000, 3600000, 21600000, 43200000, ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE, 172800000, ApplicationConstants.RATING_TRESHOLD_TIME, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};
    private static final String PACKAGE_CHECKSUM = "PCKGCHKSUM";
    private static final String TAG = "com.facebook.appevents.internal.SessionLogger";

    SessionLogger() {
    }

    private static String computePackageChecksum(Context context) {
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            String str = "PCKGCHKSUM;" + packageManager.getPackageInfo(context.getPackageName(), 0).versionName;
            SharedPreferences sharedPreferences = context.getSharedPreferences(FacebookSdk.APP_EVENT_PREFERENCES, 0);
            String string = sharedPreferences.getString(str, null);
            if (string != null && string.length() == 32) {
                return string;
            }
            String computeChecksum = HashUtils.computeChecksum(packageManager.getApplicationInfo(context.getPackageName(), 0).sourceDir);
            sharedPreferences.edit().putString(str, computeChecksum).apply();
            return computeChecksum;
        } catch (Exception e) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SessionLogger.class);
            return null;
        }
    }

    static int getQuantaIndex(long j) {
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return 0;
        }
        int i = 0;
        while (true) {
            try {
                long[] jArr = INACTIVE_SECONDS_QUANTA;
                if (i >= jArr.length || jArr[i] >= j) {
                    break;
                }
                i++;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, SessionLogger.class);
                return 0;
            }
        }
        return i;
    }

    public static void logActivateApp(String str, SourceApplicationInfo sourceApplicationInfo, String str2, Context context) {
        String sourceApplicationInfo2;
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return;
        }
        if (sourceApplicationInfo != null) {
            try {
                sourceApplicationInfo2 = sourceApplicationInfo.toString();
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, SessionLogger.class);
                return;
            }
        } else {
            sourceApplicationInfo2 = "Unclassified";
        }
        Bundle bundle = new Bundle();
        bundle.putString(AppEventsConstants.EVENT_PARAM_SOURCE_APPLICATION, sourceApplicationInfo2);
        bundle.putString(AppEventsConstants.EVENT_PARAM_PACKAGE_FP, computePackageChecksum(context));
        bundle.putString(AppEventsConstants.EVENT_PARAM_APP_CERT_HASH, CertificateUtil.getCertificateHash(context));
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(str, str2, null);
        internalAppEventsLogger.logEvent(AppEventsConstants.EVENT_NAME_ACTIVATED_APP, bundle);
        if (InternalAppEventsLogger.getFlushBehavior() == AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
            return;
        }
        internalAppEventsLogger.flush();
    }

    private static void logClockSkewEvent() {
        if (CrashShieldHandler.isObjectCrashing(SessionLogger.class)) {
            return;
        }
        try {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Clock skew detected");
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SessionLogger.class);
        }
    }

    public static void logDeactivateApp(String str, SessionInfo sessionInfo, String str2) {
        if (!CrashShieldHandler.isObjectCrashing(SessionLogger.class) && sessionInfo != null) {
            try {
                Long valueOf = Long.valueOf(sessionInfo.getDiskRestoreTime() - sessionInfo.getSessionLastEventTime().longValue());
                Long l = valueOf;
                if (valueOf.longValue() < 0) {
                    l = 0L;
                    logClockSkewEvent();
                }
                Long valueOf2 = Long.valueOf(sessionInfo.getSessionLength());
                Long l2 = valueOf2;
                if (valueOf2.longValue() < 0) {
                    logClockSkewEvent();
                    l2 = 0L;
                }
                Bundle bundle = new Bundle();
                bundle.putInt(AppEventsConstants.EVENT_NAME_SESSION_INTERRUPTIONS, sessionInfo.getInterruptionCount());
                bundle.putString(AppEventsConstants.EVENT_NAME_TIME_BETWEEN_SESSIONS, String.format(Locale.ROOT, "session_quanta_%d", Integer.valueOf(getQuantaIndex(l.longValue()))));
                SourceApplicationInfo sourceApplicationInfo = sessionInfo.getSourceApplicationInfo();
                bundle.putString(AppEventsConstants.EVENT_PARAM_SOURCE_APPLICATION, sourceApplicationInfo != null ? sourceApplicationInfo.toString() : "Unclassified");
                bundle.putLong(Constants.LOG_TIME_APP_EVENT_KEY, sessionInfo.getSessionLastEventTime().longValue() / 1000);
                new InternalAppEventsLogger(str, str2, null).logEvent(AppEventsConstants.EVENT_NAME_DEACTIVATED_APP, l2.longValue() / 1000.0d, bundle);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, SessionLogger.class);
            }
        }
    }
}
