package com.apptentive.android.sdk.storage;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.model.DevicePayload;
import com.apptentive.android.sdk.util.AdvertiserManager;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.Util;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DeviceManager.class */
public class DeviceManager {
    private static boolean equal(Object obj, Object obj2) {
        return (obj == null && obj2 == null) || !(obj == null || obj2 == null || !obj.equals(obj2));
    }

    public static Device generateNewDevice(Context context) {
        Device device = new Device();
        device.setOsName("Android");
        device.setOsVersion(Build.VERSION.RELEASE);
        device.setOsBuild(Build.VERSION.INCREMENTAL);
        device.setOsApiLevel(Build.VERSION.SDK_INT);
        device.setManufacturer(Build.MANUFACTURER);
        device.setModel(Build.MODEL);
        device.setBoard(Build.BOARD);
        device.setProduct(Build.PRODUCT);
        device.setBrand(Build.BRAND);
        device.setCpu(Build.CPU_ABI);
        device.setDevice(Build.DEVICE);
        device.setUuid(Util.getAndroidId(context));
        device.setBuildType(Build.TYPE);
        device.setBuildId(Build.ID);
        try {
            if (Configuration.load().isCollectingAdID()) {
                AdvertiserManager.AdvertisingIdClientInfo advertisingIdClientInfo = AdvertiserManager.getAdvertisingIdClientInfo();
                if (advertisingIdClientInfo == null || advertisingIdClientInfo.isLimitAdTrackingEnabled()) {
                    ApptentiveLog.m397w("Advertising ID tracking is not available or limited", new Object[0]);
                } else {
                    device.setAdvertiserId(advertisingIdClientInfo.getId());
                }
            }
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception while collecting advertising ID", new Object[0]);
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        device.setCarrier(telephonyManager.getSimOperatorName());
        device.setCurrentCarrier(telephonyManager.getNetworkOperatorName());
        device.setNetworkType(Constants.networkTypeAsString(telephonyManager.getNetworkType()));
        try {
            device.setBootloaderVersion((String) Build.class.getField("BOOTLOADER").get(null));
        } catch (Exception e2) {
        }
        device.setRadioVersion(Build.getRadioVersion());
        device.setLocaleCountryCode(Locale.getDefault().getCountry());
        device.setLocaleLanguageCode(Locale.getDefault().getLanguage());
        device.setLocaleRaw(Locale.getDefault().toString());
        device.setUtcOffset(String.valueOf(TimeZone.getDefault().getRawOffset() / 1000));
        return device;
    }

    public static DevicePayload getDiffPayload(Device device, Device device2) {
        DevicePayload devicePayload = null;
        if (device2 == null) {
            return null;
        }
        DevicePayload devicePayload2 = new DevicePayload();
        boolean z = false;
        if (device == null || !equal(device.getUuid(), device2.getUuid())) {
            devicePayload2.setUuid(device2.getUuid());
            z = true;
        }
        if (device == null || !equal(device.getOsName(), device2.getOsName())) {
            devicePayload2.setOsName(device2.getOsName());
            z = true;
        }
        if (device == null || !equal(device.getOsVersion(), device2.getOsVersion())) {
            devicePayload2.setOsVersion(device2.getOsVersion());
            z = true;
        }
        if (device == null || !equal(device.getOsBuild(), device2.getOsBuild())) {
            devicePayload2.setOsBuild(device2.getOsBuild());
            z = true;
        }
        if (device == null || device.getOsApiLevel() != device2.getOsApiLevel()) {
            devicePayload2.setOsApiLevel(String.valueOf(device2.getOsApiLevel()));
            z = true;
        }
        if (device == null || !equal(device.getManufacturer(), device2.getManufacturer())) {
            devicePayload2.setManufacturer(device2.getManufacturer());
            z = true;
        }
        if (device == null || !equal(device.getModel(), device2.getModel())) {
            devicePayload2.setModel(device2.getModel());
            z = true;
        }
        if (device == null || !equal(device.getBoard(), device2.getBoard())) {
            devicePayload2.setBoard(device2.getBoard());
            z = true;
        }
        if (device == null || !equal(device.getProduct(), device2.getProduct())) {
            devicePayload2.setProduct(device2.getProduct());
            z = true;
        }
        if (device == null || !equal(device.getBrand(), device2.getBrand())) {
            devicePayload2.setBrand(device2.getBrand());
            z = true;
        }
        if (device == null || !equal(device.getCpu(), device2.getCpu())) {
            devicePayload2.setCpu(device2.getCpu());
            z = true;
        }
        if (device == null || !equal(device.getDevice(), device2.getDevice())) {
            devicePayload2.setDevice(device2.getDevice());
            z = true;
        }
        if (device == null || !equal(device.getCarrier(), device2.getCarrier())) {
            devicePayload2.setCarrier(device2.getCarrier());
            z = true;
        }
        if (device == null || !equal(device.getCurrentCarrier(), device2.getCurrentCarrier())) {
            devicePayload2.setCurrentCarrier(device2.getCurrentCarrier());
            z = true;
        }
        if (device == null || !equal(device.getNetworkType(), device2.getNetworkType())) {
            devicePayload2.setNetworkType(device2.getNetworkType());
            z = true;
        }
        if (device == null || !equal(device.getBuildType(), device2.getBuildType())) {
            devicePayload2.setBuildType(device2.getBuildType());
            z = true;
        }
        if (device == null || !equal(device.getBuildId(), device2.getBuildId())) {
            devicePayload2.setBuildId(device2.getBuildId());
            z = true;
        }
        if (device == null || !equal(device.getBootloaderVersion(), device2.getBootloaderVersion())) {
            devicePayload2.setBootloaderVersion(device2.getBootloaderVersion());
            z = true;
        }
        if (device == null || !equal(device.getRadioVersion(), device2.getRadioVersion())) {
            devicePayload2.setRadioVersion(device2.getRadioVersion());
            z = true;
        }
        if (device == null || !equal(device.getCustomData(), device2.getCustomData())) {
            CustomData customData = device2.getCustomData();
            devicePayload2.setCustomData(customData != null ? customData.toJson() : null);
            z = true;
        }
        if (device == null || !equal(device.getLocaleCountryCode(), device2.getLocaleCountryCode())) {
            devicePayload2.setLocaleCountryCode(device2.getLocaleCountryCode());
            z = true;
        }
        if (device == null || !equal(device.getLocaleLanguageCode(), device2.getLocaleLanguageCode())) {
            devicePayload2.setLocaleLanguageCode(device2.getLocaleLanguageCode());
            z = true;
        }
        if (device == null || !equal(device.getLocaleRaw(), device2.getLocaleRaw())) {
            devicePayload2.setLocaleRaw(device2.getLocaleRaw());
            z = true;
        }
        if (device == null || !equal(device.getUtcOffset(), device2.getUtcOffset())) {
            devicePayload2.setUtcOffset(device2.getUtcOffset());
            z = true;
        }
        if (device == null || !equal(device.getAdvertiserId(), device2.getAdvertiserId())) {
            devicePayload2.setAdvertiserId(device2.getAdvertiserId());
            z = true;
        }
        if (device == null || !equal(device.getIntegrationConfig(), device2.getIntegrationConfig())) {
            IntegrationConfig integrationConfig = device2.getIntegrationConfig();
            devicePayload2.setIntegrationConfig(integrationConfig != null ? integrationConfig.toJson() : null);
            z = true;
        }
        if (z) {
            devicePayload = devicePayload2;
        }
        return devicePayload;
    }
}
