package p193e.p194a.p1340w2;

import android.content.Context;
import com.appsflyer.AppsFlyerLib;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import s1.z.c.l;
/* renamed from: e.a.w2.b */
/* loaded from: classes5-dex2jar.jar:e/a/w2/b.class */
public final class C21189b {

    /* renamed from: a */
    public static final AtomicBoolean f59371a = new AtomicBoolean(false);

    /* renamed from: b */
    public static AppsFlyerLib f59372b;

    /* renamed from: c */
    public static final C21189b f59373c = null;

    /* renamed from: a */
    public static final AppsFlyerLib m10152a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        AtomicBoolean atomicBoolean = f59371a;
        if (!atomicBoolean.get()) {
            AppsFlyerLib appsFlyerLib = AppsFlyerLib.getInstance();
            appsFlyerLib.setDebugLog(false);
            appsFlyerLib.init("wJYG2WUjyTWG6qPciQfyAC", null, context.getApplicationContext());
            appsFlyerLib.start(context.getApplicationContext());
            l.d(appsFlyerLib, "AppsFlyerLib.getInstance…ionContext)\n            }");
            f59372b = appsFlyerLib;
            atomicBoolean.set(true);
        }
        AppsFlyerLib appsFlyerLib2 = f59372b;
        if (appsFlyerLib2 != null) {
            return appsFlyerLib2;
        }
        l.l("instance");
        throw null;
    }
}
