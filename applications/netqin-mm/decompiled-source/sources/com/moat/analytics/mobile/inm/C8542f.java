package com.moat.analytics.mobile.inm;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.inm.C8586w;
import com.moat.analytics.mobile.inm.p519a.p521b.C8534a;
import java.lang.ref.WeakReference;
/* renamed from: com.moat.analytics.mobile.inm.f */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/f.class */
public class C8542f {

    /* renamed from: a */
    public static WebAdTracker f33239a;

    /* renamed from: b */
    public static WeakReference<Activity> f33240b = new WeakReference<>(null);

    /* renamed from: a */
    public static void m5212a() {
        if (f33239a != null) {
            C8571p.m5104a(3, "GMAInterstitialHelper", f33240b.get(), "Stopping to track GMA interstitial");
            f33239a.stopTracking();
            f33239a = null;
        }
    }

    /* renamed from: a */
    public static void m5211a(Activity activity) {
        try {
            if (C8586w.m5069a().f33356a != C8586w.EnumC8594d.OFF) {
                if (!m5209b(activity)) {
                    m5212a();
                    f33240b = new WeakReference<>(null);
                } else if (f33240b.get() == null || f33240b.get() != activity) {
                    View decorView = activity.getWindow().getDecorView();
                    if (decorView instanceof ViewGroup) {
                        C8534a<WebView> a = C8536ab.m5237a((ViewGroup) decorView, true);
                        if (a.m5239c()) {
                            f33240b = new WeakReference<>(activity);
                            m5210a(a.m5241b());
                            return;
                        }
                        C8571p.m5104a(3, "GMAInterstitialHelper", activity, "Sorry, no WebView in this activity");
                    }
                }
            }
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: a */
    public static void m5210a(WebView webView) {
        C8571p.m5104a(3, "GMAInterstitialHelper", f33240b.get(), "Starting to track GMA interstitial");
        WebAdTracker createWebAdTracker = MoatFactory.create().createWebAdTracker(webView);
        f33239a = createWebAdTracker;
        createWebAdTracker.startTracking();
    }

    /* renamed from: b */
    public static boolean m5209b(Activity activity) {
        String name = activity.getClass().getName();
        C8571p.m5104a(3, "GMAInterstitialHelper", activity, "Activity name: " + name);
        return name.contains("com.google.android.gms.ads.AdActivity");
    }
}
