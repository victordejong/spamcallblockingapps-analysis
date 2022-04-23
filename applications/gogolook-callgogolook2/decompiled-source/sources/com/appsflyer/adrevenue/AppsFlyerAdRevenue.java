package com.appsflyer.adrevenue;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.core.util.Consumer;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdRevenueWrapperType;
import com.appsflyer.adrevenue.adnetworks.applovin.AppsFlyerAppLovinListener;
import com.appsflyer.adrevenue.adnetworks.applovin.AppsFlyerAppLovinWrapper;
import com.appsflyer.adrevenue.adnetworks.google.AppsFlyerGoogleWrapper;
import com.appsflyer.adrevenue.adnetworks.mopub.AppsFlyerMoPubWrapper;
import com.appsflyer.adrevenue.adnetworks.unityads.AppsFlyerUnityAdsWrapper;
import com.appsflyer.adrevenue.data.model.AppsFlyerAdEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/AppsFlyerAdRevenue.class */
public class AppsFlyerAdRevenue {
    public static AppsFlyerAdRevenue instance;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/adrevenue/AppsFlyerAdRevenue$Builder.class */
    public static class Builder {
        public final Application application;
        public Consumer<AppsFlyerAdEvent> listener;
        public final List<AppsFlyerAdRevenueWrapperType> networks = new ArrayList();

        public Builder(@NonNull Application application) {
            this.application = application;
        }

        public Builder adEventListener(Consumer<AppsFlyerAdEvent> consumer) {
            this.listener = consumer;
            return this;
        }

        public Builder addNetworks(AppsFlyerAdRevenueWrapperType... appsFlyerAdRevenueWrapperTypeArr) {
            this.networks.addAll(Arrays.asList(appsFlyerAdRevenueWrapperTypeArr));
            return this;
        }

        public AppsFlyerAdRevenue build() {
            if (this.networks.isEmpty()) {
                Logger.getLogger(AppsFlyerAdRevenue.class.getName()).warning("No networks added. Use Builder.addNetworks()");
            }
            return new AppsFlyerAdRevenue(this.application, this.networks, this.listener);
        }
    }

    public AppsFlyerAdRevenue(Application application, List<AppsFlyerAdRevenueWrapperType> list, Consumer<AppsFlyerAdEvent> consumer) {
        AFProxyManager.init(application, AppsFlyerLib.getInstance(), consumer, list);
    }

    public static AppsFlyerAppLovinListener appLovinWrapper() {
        return AppsFlyerAppLovinWrapper.instance();
    }

    public static AppsFlyerGoogleWrapper googleWrapper() {
        return AppsFlyerGoogleWrapper.instance();
    }

    public static void initialize(AppsFlyerAdRevenue appsFlyerAdRevenue) {
        synchronized (AppsFlyerAdRevenue.class) {
            try {
                if (instance == null) {
                    instance = appsFlyerAdRevenue;
                } else {
                    throw new IllegalStateException("Singleton instance already exists.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static AppsFlyerMoPubWrapper moPubWrapper() {
        return AppsFlyerMoPubWrapper.instance();
    }

    public static AppsFlyerUnityAdsWrapper unityAdsWrapper() {
        return AppsFlyerUnityAdsWrapper.instance();
    }
}
