package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGooglePlayServices.class */
public class DtbGooglePlayServices {
    private static final String LOG_TAG = "DtbGooglePlayServices";

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGooglePlayServices$AdvertisingInfo.class */
    public static class AdvertisingInfo {
        private String advertisingIdentifier;
        private boolean gpsAvailable = true;
        private Boolean limitAdTrackingEnabled;

        public static AdvertisingInfo createNotAvailable() {
            return new AdvertisingInfo().setGooglePlayServicesAvailable(false);
        }

        private AdvertisingInfo setGooglePlayServicesAvailable(boolean z) {
            this.gpsAvailable = z;
            return this;
        }

        public String getAdvertisingIdentifier() {
            return this.advertisingIdentifier;
        }

        public boolean hasAdvertisingIdentifier() {
            return getAdvertisingIdentifier() != null;
        }

        public boolean isGooglePlayServicesAvailable() {
            return this.gpsAvailable;
        }

        public Boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }

        public AdvertisingInfo setAdvertisingIdentifier(String str) {
            this.advertisingIdentifier = str;
            return this;
        }

        public AdvertisingInfo setLimitAdTrackingEnabled(Boolean bool) {
            this.limitAdTrackingEnabled = bool;
            return this;
        }
    }

    private boolean isAdvertisingClassAvailable() {
        return DtbCommonUtils.isClassAvailable("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }

    private boolean isGooglePlayServicesAvailable() {
        return !DtbSharedPreferences.getInstance().isGooglePlayServicesUnavailable();
    }

    private void setGooglePlayServicesAvailable(boolean z) {
        DtbSharedPreferences.getInstance().setGooglePlayServicesUnavailable(!z);
    }

    public AdvertisingInfo getAdvertisingIdentifierInfo() {
        if (!isGooglePlayServicesAvailable()) {
            DtbLog.debug(LOG_TAG, "The Google Play Services Advertising Identifier feature is not available.");
            return AdvertisingInfo.createNotAvailable();
        }
        AdvertisingInfo advertisingInfo = null;
        boolean isAdvertisingClassAvailable = isAdvertisingClassAvailable();
        if (isAdvertisingClassAvailable) {
            AdvertisingInfo advertisingIdentifierInfo = DtbGooglePlayServicesAdapter.newAdapter().getAdvertisingIdentifierInfo();
            advertisingInfo = advertisingIdentifierInfo;
            if (advertisingIdentifierInfo.getAdvertisingIdentifier() != null) {
                advertisingInfo = advertisingIdentifierInfo;
                if (!advertisingIdentifierInfo.getAdvertisingIdentifier().isEmpty()) {
                    return advertisingIdentifierInfo;
                }
            }
        }
        AdvertisingInfo advertisingIdentifierInfo2 = DtbFireOSServiceAdapter.newAdapter().getAdvertisingIdentifierInfo();
        if (advertisingIdentifierInfo2.getAdvertisingIdentifier() != null && !advertisingIdentifierInfo2.getAdvertisingIdentifier().isEmpty()) {
            setGooglePlayServicesAvailable(advertisingIdentifierInfo2.isGooglePlayServicesAvailable());
            return advertisingIdentifierInfo2;
        }
        DtbLog.debug(LOG_TAG, "The Google Play Services Advertising Identifier feature is not available.");
        if (!isAdvertisingClassAvailable || (advertisingInfo != null && !advertisingInfo.isGooglePlayServicesAvailable())) {
            setGooglePlayServicesAvailable(false);
        }
        return AdvertisingInfo.createNotAvailable();
    }
}
