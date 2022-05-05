package com.privacystar.core.service.license_check;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.gcm.GcmNetworkManager;
import com.google.android.gms.gcm.OneoffTask;
import com.google.android.gms.gcm.PeriodicTask;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.service.PreferenceUtil;
import java.util.Date;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/license_check/LicenseCheckUtil.class */
public class LicenseCheckUtil {
    public static final String LICENSE_REFRESH_FLEX = "license_flex";
    public static final String LICENSE_REFRESH_PERIOD = "license_period";
    private static final long fiveMinutesInSeconds = 300;
    private static final long halfHourInSeconds = 1800;
    private static final long halfMinutesInSeconds = 30;
    private static final String licenseCheckTag = "License Check Task";
    private static final String licenseExpireTag = "License Expire Task";

    public static void setNextCheckTime(long j, long j2) {
        PreferenceUtil.putNextScheduledLicenseCheck(System.currentTimeMillis() + ((j + j2) * 1000));
    }

    public static void startLicenseErrorRefreshTask(Context context) {
        startLicenseRefreshTask(context, 300L, halfMinutesInSeconds);
    }

    public static void startLicenseExpireTask(Context context, long j) {
        long currentTimeMillis = (j - System.currentTimeMillis()) / 1000;
        if (currentTimeMillis < 0) {
            Timber.m37d("Cannot schedule a LicenseExpireTask in the past. [E:%d]", Long.valueOf(currentTimeMillis));
            return;
        }
        OneoffTask build = new OneoffTask.Builder().setService(LicenseCheckService.class).setRequiredNetwork(2).setPersisted(true).setExecutionWindow(currentTimeMillis, halfMinutesInSeconds + currentTimeMillis).setUpdateCurrent(true).setTag(licenseExpireTag).build();
        Timber.m37d("Scheduling license check task to run when current license expires. (If it already exists, nothing will change except expiration time.) [E:%d]", Long.valueOf(currentTimeMillis));
        GcmNetworkManager.getInstance(context).schedule(build);
    }

    public static void startLicenseExpireTask(Context context, Subscription subscription) {
        if (subscription != null) {
            startLicenseExpireTask(context, subscription.getExpiration());
        }
    }

    public static void startLicenseExpireTask(Context context, Date date) {
        if (date != null) {
            startLicenseExpireTask(context, date.getTime());
        }
    }

    public static void startLicenseRefreshTask(Context context, long j, long j2) {
        Bundle bundle = new Bundle();
        bundle.putLong(LICENSE_REFRESH_PERIOD, j);
        bundle.putLong(LICENSE_REFRESH_FLEX, j2);
        setNextCheckTime(j, j2);
        PeriodicTask build = new PeriodicTask.Builder().setService(LicenseCheckService.class).setRequiredNetwork(2).setPersisted(true).setPeriod(j).setFlex(j2).setTag(licenseCheckTag).setUpdateCurrent(true).setExtras(bundle).build();
        Timber.m37d("Scheduling license check task to run periodically. (If it already exists, nothing will change except period.) [P:%d|F:%d]", Long.valueOf(j), Long.valueOf(j2));
        GcmNetworkManager.getInstance(context).schedule(build);
    }

    public static void startLicenseRefreshTask(Context context, SubscriptionType subscriptionType) {
        if (subscriptionType != null) {
            startLicenseRefreshTask(context, subscriptionType.getLicenseRefreshInterval(), halfHourInSeconds);
        }
    }
}
