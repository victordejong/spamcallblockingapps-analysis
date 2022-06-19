package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsLogger;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/InternalAppEventsLogger.class */
public class InternalAppEventsLogger {
    private AppEventsLoggerImpl loggerImpl;

    public InternalAppEventsLogger(Context context) {
        this(new AppEventsLoggerImpl(context, (String) null, (AccessToken) null));
    }

    public InternalAppEventsLogger(Context context, String str) {
        this(new AppEventsLoggerImpl(context, str, (AccessToken) null));
    }

    InternalAppEventsLogger(AppEventsLoggerImpl appEventsLoggerImpl) {
        this.loggerImpl = appEventsLoggerImpl;
    }

    public InternalAppEventsLogger(String str, String str2, AccessToken accessToken) {
        this(new AppEventsLoggerImpl(str, str2, accessToken));
    }

    public static Executor getAnalyticsExecutor() {
        return AppEventsLoggerImpl.getAnalyticsExecutor();
    }

    public static AppEventsLogger.FlushBehavior getFlushBehavior() {
        return AppEventsLoggerImpl.getFlushBehavior();
    }

    public static String getPushNotificationsRegistrationId() {
        return AppEventsLoggerImpl.getPushNotificationsRegistrationId();
    }

    public static void setInternalUserData(Map<String, String> map) {
        UserDataStore.setInternalUd(map);
    }

    public static void setUserData(Bundle bundle) {
        UserDataStore.setUserDataAndHash(bundle);
    }

    public void flush() {
        this.loggerImpl.flush();
    }

    public void logChangedSettingsEvent(Bundle bundle) {
        if (((bundle.getInt("previous") & 2) != 0) || FacebookSdk.getAutoLogAppEventsEnabled()) {
            this.loggerImpl.logEventImplicitly("fb_sdk_settings_changed", null, bundle);
        }
    }

    public void logEvent(String str, double d, Bundle bundle) {
        if (FacebookSdk.getAutoLogAppEventsEnabled()) {
            this.loggerImpl.logEvent(str, d, bundle);
        }
    }

    public void logEvent(String str, Bundle bundle) {
        if (FacebookSdk.getAutoLogAppEventsEnabled()) {
            this.loggerImpl.logEvent(str, bundle);
        }
    }

    public void logEventFromSE(String str, String str2) {
        this.loggerImpl.logEventFromSE(str, str2);
    }

    public void logEventImplicitly(String str) {
        if (FacebookSdk.getAutoLogAppEventsEnabled()) {
            this.loggerImpl.logEventImplicitly(str, null, null);
        }
    }

    public void logEventImplicitly(String str, Bundle bundle) {
        if (FacebookSdk.getAutoLogAppEventsEnabled()) {
            this.loggerImpl.logEventImplicitly(str, null, bundle);
        }
    }

    public void logEventImplicitly(String str, Double d, Bundle bundle) {
        if (FacebookSdk.getAutoLogAppEventsEnabled()) {
            this.loggerImpl.logEventImplicitly(str, d, bundle);
        }
    }

    public void logEventImplicitly(String str, BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        if (FacebookSdk.getAutoLogAppEventsEnabled()) {
            this.loggerImpl.logEventImplicitly(str, bigDecimal, currency, bundle);
        }
    }

    public void logPurchaseImplicitly(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        if (FacebookSdk.getAutoLogAppEventsEnabled()) {
            this.loggerImpl.logPurchaseImplicitly(bigDecimal, currency, bundle);
        }
    }
}
