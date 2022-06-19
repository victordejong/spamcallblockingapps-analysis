package com.applovin.impl.sdk.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.applovin.impl.sdk.C1420n;
import com.applovin.impl.sdk.C1479t;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.sdk.utils.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/c.class */
public class C1487c {

    /* renamed from: a */
    private static boolean f5580a = true;

    /* renamed from: b */
    private static final Object f5581b = new Object();

    /* renamed from: c */
    private static final Collection<CountDownLatch> f5582c = new HashSet();

    /* renamed from: d */
    private static boolean f5583d = false;

    /* renamed from: e */
    private static C1420n.C1426a f5584e = null;

    /* renamed from: a */
    public static C1420n.C1426a m5090a(Context context) {
        return m5089b(context);
    }

    /* renamed from: a */
    public static boolean m5091a() {
        return Utils.checkClassExistence("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }

    /* renamed from: b */
    private static C1420n.C1426a m5089b(Context context) {
        C1420n.C1426a c1426a;
        HashSet hashSet;
        Object obj = f5581b;
        synchronized (obj) {
            if (f5583d) {
                return f5584e;
            }
            Collection<CountDownLatch> collection = f5582c;
            boolean isEmpty = collection.isEmpty();
            CountDownLatch countDownLatch = new CountDownLatch(1);
            collection.add(countDownLatch);
            if (isEmpty) {
                C1420n.C1426a m5088c = m5088c(context);
                synchronized (obj) {
                    f5583d = true;
                    f5584e = m5088c;
                    hashSet = new HashSet(collection);
                    collection.clear();
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((CountDownLatch) it2.next()).countDown();
                }
            }
            try {
                if (!countDownLatch.await(60L, TimeUnit.SECONDS)) {
                    C1479t.m5107i("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }: collection timeout");
                }
            } catch (InterruptedException e) {
                C1479t.m5113c("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", e);
            }
            synchronized (f5581b) {
                c1426a = f5584e;
            }
            return c1426a;
        }
    }

    /* renamed from: c */
    private static C1420n.C1426a m5088c(Context context) {
        C1420n.C1426a m5087d = m5087d(context);
        C1420n.C1426a c1426a = m5087d;
        if (m5087d == null) {
            c1426a = m5086e(context);
        }
        C1420n.C1426a c1426a2 = c1426a;
        if (c1426a == null) {
            c1426a2 = new C1420n.C1426a();
        }
        return c1426a2;
    }

    /* renamed from: d */
    private static C1420n.C1426a m5087d(Context context) {
        if (!m5091a()) {
            if (C1420n.m5405b(context)) {
                return null;
            }
            C1479t.m5107i("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }");
            return null;
        }
        try {
            C1420n.C1426a c1426a = new C1420n.C1426a();
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            c1426a.f5375a = advertisingIdInfo.isLimitAdTrackingEnabled();
            c1426a.f5376b = advertisingIdInfo.getId();
            return c1426a;
        } catch (Throwable th) {
            if (C1420n.m5405b(context)) {
                return null;
            }
            C1479t.m5113c("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", th);
            return null;
        }
    }

    /* renamed from: e */
    private static C1420n.C1426a m5086e(Context context) {
        Settings.SettingNotFoundException th;
        String str;
        if (f5580a) {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                C1420n.C1426a c1426a = new C1420n.C1426a();
                c1426a.f5376b = StringUtils.emptyIfNull(Settings.Secure.getString(contentResolver, "advertising_id"));
                c1426a.f5375a = Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 0;
                return c1426a;
            } catch (Settings.SettingNotFoundException e) {
                th = e;
                str = "Unable to determine if Fire OS limited ad tracking is turned on";
                C1479t.m5113c("DataCollector", str, th);
                f5580a = false;
                return null;
            } catch (Throwable th2) {
                th = th2;
                str = "Unable to collect Fire OS IDFA";
                C1479t.m5113c("DataCollector", str, th);
                f5580a = false;
                return null;
            }
        }
        f5580a = false;
        return null;
    }
}
