package com.amazon.device.ads;

import android.content.ContentResolver;
import android.provider.Settings;
import com.amazon.device.ads.DtbGooglePlayServices;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbFireOSServiceAdapter.class */
public class DtbFireOSServiceAdapter {
    private static final String LOG_TAG = "DtbFireOSServiceAdapter";

    private DtbFireOSServiceAdapter() {
    }

    public static DtbFireOSServiceAdapter newAdapter() {
        return new DtbFireOSServiceAdapter();
    }

    public DtbGooglePlayServices.AdvertisingInfo getAdvertisingIdentifierInfo() {
        boolean z;
        try {
            ContentResolver contentResolver = AdRegistration.getContext().getContentResolver();
            int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking");
            String string = Settings.Secure.getString(contentResolver, "advertising_id");
            String str = LOG_TAG;
            DtbLog.debug(str, " FireID retrieved : " + string);
            if (i != 0) {
                DtbLog.debug(str, " Fire device does not allow AdTracking,");
                z = true;
            } else {
                z = false;
            }
            DtbGooglePlayServices.AdvertisingInfo advertisingInfo = new DtbGooglePlayServices.AdvertisingInfo();
            advertisingInfo.setAdvertisingIdentifier(string);
            advertisingInfo.setLimitAdTrackingEnabled(Boolean.valueOf(z));
            return advertisingInfo;
        } catch (Settings.SettingNotFoundException e) {
            String str2 = LOG_TAG;
            StringBuilder m8728C = C22128a.m8728C(" Advertising setting not found on this device ");
            m8728C.append(e.getLocalizedMessage());
            DtbLog.debug(str2, m8728C.toString());
            return new DtbGooglePlayServices.AdvertisingInfo();
        } catch (Exception e2) {
            String str3 = LOG_TAG;
            StringBuilder m8728C2 = C22128a.m8728C(" Attempt to retrieve fireID failed. Reason : ");
            m8728C2.append(e2.getLocalizedMessage());
            DtbLog.debug(str3, m8728C2.toString());
            return new DtbGooglePlayServices.AdvertisingInfo();
        }
    }
}
