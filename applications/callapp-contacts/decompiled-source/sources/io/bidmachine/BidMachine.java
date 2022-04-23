package io.bidmachine;

import android.content.Context;
import io.bidmachine.AdRequest;
import io.bidmachine.core.Logger;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/BidMachine.class */
public class BidMachine {
    public static final String NAME = "BidMachine";
    public static final String VERSION = "1.7.1";
    public static final int VERSION_CODE = 100100039;

    static {
        Logger.setTag(NAME);
    }

    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    public static void initialize(Context context, String str, InitializationCallback initializationCallback) {
        d.get().initialize(context, str, initializationCallback);
    }

    public static boolean isInitialized() {
        return d.get().isInitialized();
    }

    public static void registerAdRequestListener(AdRequest.AdRequestListener adRequestListener) {
        d.get().registerAdRequestListener(adRequestListener);
    }

    public static void registerNetworks(Context context, String str) {
        f.registerNetworks(context, str);
    }

    public static void registerNetworks(NetworkConfig... networkConfigArr) {
        f.registerNetworks(networkConfigArr);
    }

    public static void setConsentConfig(boolean z, String str) {
        d.get().getUserRestrictionParams().setConsentConfig(z, str);
    }

    public static void setCoppa(Boolean bool) {
        d.get().getUserRestrictionParams().setCoppa(bool);
    }

    public static void setEndpoint(String str) {
        d.get().setEndpoint(str);
    }

    public static void setLoggingEnabled(boolean z) {
        Logger.setLoggingEnabled(z);
        f.setLoggingEnabled(z);
    }

    public static void setPublisher(Publisher publisher) {
        d.get().setPublisher(publisher);
    }

    public static void setSubjectToGDPR(Boolean bool) {
        d.get().getUserRestrictionParams().setSubjectToGDPR(bool);
    }

    public static void setTargetingParams(TargetingParams targetingParams) {
        d.get().setTargetingParams(targetingParams);
    }

    public static void setTestMode(boolean z) {
        d.get().setTestMode(z);
    }

    public static void setUSPrivacyString(String str) {
        d.get().getUserRestrictionParams().setUSPrivacyString(str);
    }

    public static void unregisterAdRequestListener(AdRequest.AdRequestListener adRequestListener) {
        d.get().unregisterAdRequestListener(adRequestListener);
    }
}
