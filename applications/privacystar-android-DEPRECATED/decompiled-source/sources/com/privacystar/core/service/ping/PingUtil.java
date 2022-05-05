package com.privacystar.core.service.ping;

import android.content.Context;
import com.google.android.gms.gcm.GcmNetworkManager;
import com.google.android.gms.gcm.PeriodicTask;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/ping/PingUtil.class */
public class PingUtil {
    private static final long dayInSeconds = 86400;
    private static final long halfHourInSeconds = 1800;
    private static final String pingTaskTag = "Analytics Ping Task";

    public static void startDailyPings(Context context) {
        PeriodicTask build = new PeriodicTask.Builder().setService(PingService.class).setRequiredNetwork(0).setPersisted(true).setPeriod(86400L).setFlex(halfHourInSeconds).setTag(pingTaskTag).setUpdateCurrent(true).build();
        Timber.m37d("Scheduling daily ping task to run periodically. (If it already exists, nothing will change.)", new Object[0]);
        GcmNetworkManager.getInstance(context).schedule(build);
    }
}
