package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGooglePlayServicesAdapter.class */
public class DtbGooglePlayServicesAdapter {
    public static DtbGooglePlayServicesAdapter newAdapter() {
        return new DtbGooglePlayServicesAdapter();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.amazon.device.ads.DtbGooglePlayServices.AdvertisingInfo getAdvertisingIdentifierInfo() {
        /*
            r3 = this;
            android.content.Context r0 = com.amazon.device.ads.AdRegistration.getContext()     // Catch: com.google.android.gms.common.GooglePlayServicesRepairableException -> La com.google.android.gms.common.GooglePlayServicesNotAvailableException -> L24 java.io.IOException -> L3f java.lang.IllegalStateException -> L59
            com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r0 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r0)     // Catch: com.google.android.gms.common.GooglePlayServicesRepairableException -> La com.google.android.gms.common.GooglePlayServicesNotAvailableException -> L24 java.io.IOException -> L3f java.lang.IllegalStateException -> L59
            r4 = r0
            goto L72
        La:
            r5 = move-exception
            java.lang.String r0 = "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesRepairableException."
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r4 = r0
            r0 = r4
            r1 = r5
            java.lang.String r1 = com.amazon.device.ads.DtbCommonUtils.exceptionToString(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.error(r0)
            goto L70
        L24:
            r5 = move-exception
            java.lang.String r0 = "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesNotAvailableException."
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r4 = r0
            r0 = r4
            r1 = r5
            java.lang.String r1 = com.amazon.device.ads.DtbCommonUtils.exceptionToString(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.error(r0)
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = com.amazon.device.ads.DtbGooglePlayServices.AdvertisingInfo.createNotAvailable()
            return r0
        L3f:
            r4 = move-exception
            java.lang.String r0 = "Retrieving the Google Play Services Advertising Identifier caused an IOException."
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r5 = r0
            r0 = r5
            r1 = r4
            java.lang.String r1 = com.amazon.device.ads.DtbCommonUtils.exceptionToString(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.error(r0)
            goto L70
        L59:
            r4 = move-exception
            java.lang.String r0 = "Retrieving the Google Play Services  caused Illegal State Exception ( be sure the call was made from a non-background thread)."
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r5 = r0
            r0 = r5
            r1 = r4
            java.lang.String r1 = com.amazon.device.ads.DtbCommonUtils.exceptionToString(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.error(r0)
        L70:
            r0 = 0
            r4 = r0
        L72:
            r0 = r4
            if (r0 != 0) goto L83
            java.lang.String r0 = "The Google Play Services Advertising Identifier could not be retrieved."
            com.amazon.device.ads.DtbLog.debug(r0)
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = new com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo
            r1 = r0
            r1.<init>()
            return r0
        L83:
            java.lang.String r0 = "The Google Play Services Advertising Identifier was successfully retrieved."
            com.amazon.device.ads.DtbLog.debug(r0)
            r0 = r4
            java.lang.String r0 = r0.getId()
            r5 = r0
            r0 = r4
            boolean r0 = r0.isLimitAdTrackingEnabled()
            r6 = r0
            java.lang.String r0 = " Retrieved google ad id "
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r7 = r0
            r0 = r7
            r1 = r4
            java.lang.String r1 = r1.getId()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = " and tracking enabled : "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r4
            boolean r1 = r1.isLimitAdTrackingEnabled()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.debug(r0)
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = new com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo
            r1 = r0
            r1.<init>()
            r1 = r5
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = r0.setAdvertisingIdentifier(r1)
            r1 = r6
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = r0.setLimitAdTrackingEnabled(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbGooglePlayServicesAdapter.getAdvertisingIdentifierInfo():com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo");
    }
}
