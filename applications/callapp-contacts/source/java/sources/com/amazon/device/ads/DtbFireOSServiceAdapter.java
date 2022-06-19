package com.amazon.device.ads;

import android.content.ContentResolver;
import android.provider.Settings;
import com.amazon.device.ads.DtbGooglePlayServices;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbFireOSServiceAdapter.class */
public class DtbFireOSServiceAdapter {

    /* renamed from: a */
    private static final String f11876a = "DtbFireOSServiceAdapter";

    private DtbFireOSServiceAdapter() {
    }

    /* renamed from: a */
    public static DtbFireOSServiceAdapter m38848a() {
        return new DtbFireOSServiceAdapter();
    }

    /* renamed from: b */
    public static DtbGooglePlayServices.AdvertisingInfo m38847b() {
        boolean z;
        try {
            ContentResolver contentResolver = AdRegistration.m39071d().getContentResolver();
            int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking");
            String string = Settings.Secure.getString(contentResolver, "advertising_id");
            String str = f11876a;
            DtbLog.m38820c(str, " FireID retrieved : ".concat(String.valueOf(string)));
            if (i != 0) {
                DtbLog.m38820c(str, " Fire device does not allow AdTracking,");
                z = true;
            } else {
                z = false;
            }
            DtbGooglePlayServices.AdvertisingInfo advertisingInfo = new DtbGooglePlayServices.AdvertisingInfo();
            advertisingInfo.f11880b = string;
            advertisingInfo.f11881c = Boolean.valueOf(z);
            return advertisingInfo;
        } catch (Settings.SettingNotFoundException e) {
            DtbLog.m38820c(f11876a, " Advertising setting not found on this device " + e.getLocalizedMessage());
            return new DtbGooglePlayServices.AdvertisingInfo();
        } catch (Exception e2) {
            DtbLog.m38820c(f11876a, " Attempt to retrieve fireID failed. Reason : " + e2.getLocalizedMessage());
            return new DtbGooglePlayServices.AdvertisingInfo();
        }
    }
}
