package com.appsflyer.adrevenue;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Consumer;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdRevenueWrapperType;
import com.appsflyer.adrevenue.data.model.AppsFlyerAdEvent;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/AFProxyManager.class */
public class AFProxyManager {
    public static Application application;
    public static AppsFlyerLib appsflyer;
    public static List<AppsFlyerAdRevenueWrapperType> includeNetworks;
    public static Consumer<AppsFlyerAdEvent> listener;

    public static void init(@NonNull Application application2, @NonNull AppsFlyerLib appsFlyerLib, @Nullable Consumer<AppsFlyerAdEvent> consumer, @NonNull List<AppsFlyerAdRevenueWrapperType> list) {
        application = application2;
        appsflyer = appsFlyerLib;
        listener = consumer;
        includeNetworks = list;
    }

    public static void send(@NonNull AppsFlyerAdEvent appsFlyerAdEvent) {
        if (includeNetworks.contains(appsFlyerAdEvent.getAdNetworkName())) {
            appsflyer.sendAdRevenue(application, appsFlyerAdEvent.toHashMap());
            Consumer<AppsFlyerAdEvent> consumer = listener;
            if (consumer != null) {
                consumer.accept(appsFlyerAdEvent);
            }
        }
    }
}
