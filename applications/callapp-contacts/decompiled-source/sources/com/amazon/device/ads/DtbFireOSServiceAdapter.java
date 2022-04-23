package com.amazon.device.ads;

import android.content.ContentResolver;
import android.provider.Settings;
import com.amazon.device.ads.DtbGooglePlayServices;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbFireOSServiceAdapter.class */
public class DtbFireOSServiceAdapter {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6480a = "DtbFireOSServiceAdapter";

    private DtbFireOSServiceAdapter() {
    }

    public static DtbFireOSServiceAdapter a() {
        return new DtbFireOSServiceAdapter();
    }

    public static DtbGooglePlayServices.AdvertisingInfo b() {
        boolean z;
        try {
            ContentResolver contentResolver = AdRegistration.d().getContentResolver();
            int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking");
            String string = Settings.Secure.getString(contentResolver, "advertising_id");
            String str = f6480a;
            DtbLog.c(str, " FireID retrieved : ".concat(String.valueOf(string)));
            if (i != 0) {
                DtbLog.c(str, " Fire device does not allow AdTracking,");
                z = true;
            } else {
                z = false;
            }
            DtbGooglePlayServices.AdvertisingInfo advertisingInfo = new DtbGooglePlayServices.AdvertisingInfo();
            advertisingInfo.f6484b = string;
            advertisingInfo.f6485c = Boolean.valueOf(z);
            return advertisingInfo;
        } catch (Settings.SettingNotFoundException e) {
            String str2 = f6480a;
            DtbLog.c(str2, " Advertising setting not found on this device " + e.getLocalizedMessage());
            return new DtbGooglePlayServices.AdvertisingInfo();
        } catch (Exception e2) {
            String str3 = f6480a;
            DtbLog.c(str3, " Attempt to retrieve fireID failed. Reason : " + e2.getLocalizedMessage());
            return new DtbGooglePlayServices.AdvertisingInfo();
        }
    }
}
