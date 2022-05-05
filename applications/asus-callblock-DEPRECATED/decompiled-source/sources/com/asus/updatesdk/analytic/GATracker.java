package com.asus.updatesdk.analytic;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import com.asus.updatesdk.ZenUiFamily;
import com.asus.updatesdk.analytic.AnalyticTracker;
import com.asus.updatesdk.analytic.TrackerManager;
import com.asus.updatesdk.tagmanager.ContainerHolderSingleton;
import com.asus.updatesdk.utility.DeviceUtils;
import com.google.android.gms.analytics.ExceptionReporter;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/analytic/GATracker.class */
public class GATracker extends AnalyticTracker {
    public static final String TRACKER_ID_ASUS_DEVICE = "UA-65515524-1";
    public static final String TRACKER_ID_NON_ASUS_DEVICE = "UA-65515524-2";

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f3144a = {Build.MODEL, DeviceUtils.SYSPROP_ASUS_SKU, DeviceUtils.SYSPROP_ASUS_VERSION, DeviceUtils.SYSPROP_BUILD_PRODUCT, Build.TYPE, Build.DEVICE, Build.PRODUCT};

    /* renamed from: b  reason: collision with root package name */
    private final Tracker f3145b;
    private final TrackerManager.TrackerName c;

    public GATracker(Context context, TrackerManager.TrackerName trackerName) {
        this.c = trackerName;
        this.f3145b = GoogleAnalytics.getInstance(context).newTracker(this.c.getTrackerID());
        for (int i = 0; i < f3144a.length; i++) {
            this.f3145b.set(String.format(Locale.US, "%s%d", "&cd", Integer.valueOf(i + 1)), f3144a[i]);
        }
        this.f3145b.setSampleRate(this.c.getSampleRate());
        if (this.c.isAutoTrack()) {
            this.f3145b.enableAutoActivityTracking(true);
            this.f3145b.enableAdvertisingIdCollection(true);
            Thread.setDefaultUncaughtExceptionHandler(new ExceptionReporter(this.f3145b, Thread.getDefaultUncaughtExceptionHandler(), context));
        }
    }

    @Override // com.asus.updatesdk.analytic.AnalyticTracker
    public void activityStart(Activity activity) {
        GoogleAnalytics.getInstance(activity).reportActivityStart(activity);
    }

    @Override // com.asus.updatesdk.analytic.AnalyticTracker
    public void activityStop(Activity activity) {
        GoogleAnalytics.getInstance(activity).reportActivityStop(activity);
    }

    @Override // com.asus.updatesdk.analytic.AnalyticTracker
    public void sendEvents(Context context, String str, String str2, String str3, Long l) {
        String str4 = "none";
        if (ContainerHolderSingleton.getContainerHolder() != null) {
            str4 = ContainerHolderSingleton.getContainerHolder().c().a("Container Version");
        }
        this.f3145b.send(((HitBuilders.EventBuilder) new HitBuilders.EventBuilder().setCategory(str).setAction(str2).setLabel(str3).setValue(l.longValue()).setCustomDimension(8, str4).setCustomDimension(9, ZenUiFamily.getEntryPoint())).build());
    }

    @Override // com.asus.updatesdk.analytic.AnalyticTracker
    public void sendException(Context context, String str, Throwable th, boolean z) {
        this.f3145b.send(new HitBuilders.ExceptionBuilder().setDescription(new AnalyticTracker.AnalyticsExceptionParser().getDescription(str, th)).setFatal(z).build());
    }

    @Override // com.asus.updatesdk.analytic.AnalyticTracker
    public void sendTiming(Context context, String str, long j, String str2, String str3) {
        this.f3145b.send(new HitBuilders.TimingBuilder().setCategory(str).setLabel(str3).setValue(j).setVariable(str2).build());
    }

    @Override // com.asus.updatesdk.analytic.AnalyticTracker
    public void sendView(Context context, String str) {
        this.f3145b.setScreenName(str);
        this.f3145b.send(new HitBuilders.ScreenViewBuilder().build());
    }
}
