package com.revenuecat.purchases.subscriberattributes;

import android.app.Application;
import android.provider.Settings;
import com.revenuecat.purchases.common.Dispatcher;
import g.f.a.d.a.a.a;
import kotlin.r;
import kotlin.w.b.p;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/AttributionFetcher.class */
public final class AttributionFetcher {
    private final Dispatcher dispatcher;

    public AttributionFetcher(Dispatcher dispatcher) {
        k.f(dispatcher, "dispatcher");
        this.dispatcher = dispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getAdvertisingID(Application application) {
        a.a b = a.b(application);
        k.e(b, "adInfo");
        return !b.b() ? b.a() : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getAndroidID(Application application) {
        return Settings.Secure.getString(application.getContentResolver(), "android_id");
    }

    public final void getDeviceIdentifiers(final Application application, final p<? super String, ? super String, r> pVar) {
        k.f(application, "applicationContext");
        k.f(pVar, "completion");
        Dispatcher.enqueue$default(this.dispatcher, new Runnable() { // from class: com.revenuecat.purchases.subscriberattributes.AttributionFetcher$getDeviceIdentifiers$1
            @Override // java.lang.Runnable
            public final void run() {
                String advertisingID;
                String androidID;
                advertisingID = AttributionFetcher.this.getAdvertisingID(application);
                androidID = AttributionFetcher.this.getAndroidID(application);
                p pVar2 = pVar;
                k.e(androidID, "androidID");
                pVar2.invoke(advertisingID, androidID);
            }
        }, false, 2, null);
    }
}
