package com.asus.updatesdk.analytic;

import android.app.Activity;
import android.content.Context;
import com.asus.updatesdk.AppInfo;
import com.asus.updatesdk.analytic.AnalyticUtils;
import com.asus.updatesdk.utility.DeviceUtils;
import com.asus.updatesdk.utility.PreferenceUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/analytic/TrackerManager.class */
public class TrackerManager {
    public static final long DEFAULT_VALUE = 0;
    public static final TrackerName GA_TRACKER;

    /* renamed from: a  reason: collision with root package name */
    private static TrackerManager f3146a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<TrackerName, AnalyticTracker> f3147b = new HashMap<>();
    private boolean c = false;

    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/analytic/TrackerManager$TrackerName.class */
    public enum TrackerName {
        TRACKER_ASUS_DEVICE(GATracker.TRACKER_ID_ASUS_DEVICE),
        TRACKER_NON_ASUS_DEVICE(GATracker.TRACKER_ID_NON_ASUS_DEVICE);
        

        /* renamed from: a  reason: collision with root package name */
        private boolean f3148a = true;

        /* renamed from: b  reason: collision with root package name */
        private double f3149b = 0.1d;
        private String c;

        TrackerName(String str) {
            this.c = str;
        }

        public final double getSampleRate() {
            return this.f3149b;
        }

        public final String getTrackerID() {
            return this.c;
        }

        public final boolean isAutoTrack() {
            return this.f3148a;
        }

        public final void setSampleRate(double d2) {
            this.f3149b = d2;
        }

        public final void setTrackerId(String str) {
            this.c = str;
        }
    }

    static {
        GA_TRACKER = DeviceUtils.checkAsusDevice() ? TrackerName.TRACKER_ASUS_DEVICE : TrackerName.TRACKER_NON_ASUS_DEVICE;
    }

    private TrackerManager() {
    }

    private AnalyticTracker a(Context context, TrackerName trackerName) {
        AnalyticTracker analyticTracker = this.f3147b.get(trackerName);
        AnalyticTracker analyticTracker2 = analyticTracker;
        if (analyticTracker == null) {
            analyticTracker2 = new GATracker(context, trackerName);
            this.f3147b.put(trackerName, analyticTracker2);
        }
        return analyticTracker2;
    }

    private static TrackerManager a() {
        if (f3146a == null) {
            f3146a = new TrackerManager();
        }
        return f3146a;
    }

    public static void activityStart(Activity activity, TrackerName trackerName) {
        TrackerManager a2 = a();
        if (a2.c) {
            a2.a(activity, trackerName).activityStart(activity);
        }
    }

    public static void activityStop(Activity activity, TrackerName trackerName) {
        TrackerManager a2 = a();
        if (a2.c) {
            a2.a(activity, trackerName).activityStop(activity);
        }
    }

    public static boolean getBoolItem(Context context, String str) {
        boolean z = false;
        if (a().c) {
            z = PreferenceUtils.getBoolean(context, str, false);
        }
        return z;
    }

    public static int getIntItem(Context context, String str) {
        int i = 0;
        if (a().c) {
            i = PreferenceUtils.getInt(context, str, 0);
        }
        return i;
    }

    public static void putBoolItem(Context context, String str, boolean z) {
        if (a().c) {
            PreferenceUtils.putBoolean(context, str, z);
        }
    }

    public static void putIntItem(Context context, String str, int i) {
        if (a().c) {
            PreferenceUtils.putInt(context, str, i);
        }
    }

    public static void sendDailyReport(Context context, ArrayList<AppInfo> arrayList, String str) {
        int intItem = getIntItem(context, PreferenceUtils.KEY_REPORT_DAY);
        int i = Calendar.getInstance().get(6);
        if (str == null) {
            str = context.getPackageName();
        }
        if (intItem != i) {
            sendEvents(context, GA_TRACKER, AnalyticUtils.Category.START_ACTIVITY_REPORT, str, AnalyticUtils.Label.NO_LABEL, 0L);
            sendEvents(context, GA_TRACKER, AnalyticUtils.Category.DEVICE_PROPERTIES, AnalyticUtils.Action.DEVICE_CPU, String.format("%s, %s, %s", DeviceUtils.SYSPROP_CPU_ABILIST, DeviceUtils.SYSPROP_CPU_ABI, DeviceUtils.SYSPROP_CPU_ABI2), 0L);
            putIntItem(context, PreferenceUtils.KEY_REPORT_DAY, i);
            if (arrayList != null) {
                Iterator<AppInfo> it = arrayList.iterator();
                while (it.hasNext()) {
                    AppInfo next = it.next();
                    sendEvents(context, GA_TRACKER, AnalyticUtils.Category.UPDATE_LIST, next.getPackageName(), next.getStatus().getName(), 0L);
                }
            } else {
                return;
            }
        }
        sendEvents(context, GA_TRACKER, AnalyticUtils.Category.START_ACTIVITY_REPORT_EVERY_TIME, str, AnalyticUtils.Label.NO_LABEL, 0L);
    }

    public static void sendEvents(Context context, TrackerName trackerName, String str, String str2, String str3, Long l) {
        TrackerManager a2 = a();
        if (a2.c) {
            a2.a(context, trackerName).sendEvents(context, str, str2, str3, l);
        }
    }

    public static void sendException(Context context, TrackerName trackerName, String str, Throwable th, boolean z) {
        TrackerManager a2 = a();
        if (a2.c) {
            a2.a(context, trackerName).sendException(context, str, th, z);
        }
    }

    public static void sendTiming(Context context, TrackerName trackerName, String str, long j, String str2, String str3) {
        TrackerManager a2 = a();
        if (a2.c) {
            a2.a(context, trackerName).sendTiming(context, str, j, str2, str3);
        }
    }

    public static void sendView(Context context, TrackerName trackerName, String str) {
        TrackerManager a2 = a();
        if (a2.c) {
            a2.a(context, trackerName).sendView(context, str);
        }
    }

    public static void setEnableStatus(boolean z) {
        a().c = z;
    }
}
