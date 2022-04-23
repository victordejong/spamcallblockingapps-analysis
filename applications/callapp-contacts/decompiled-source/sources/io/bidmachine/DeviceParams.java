package io.bidmachine;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.SystemClock;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.DeviceType;
import com.explorestack.protobuf.adcom.OS;
import io.bidmachine.core.Utils;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.RequestParams;
import io.bidmachine.utils.BluetoothUtils;
import java.util.Locale;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/DeviceParams.class */
public final class DeviceParams extends RequestParams<DeviceParams> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public final void build(Context context, Context.Device.Builder builder, TargetingParams targetingParams, TargetingParams targetingParams2, DataRestrictions dataRestrictions) {
        DeviceInfo obtain = DeviceInfo.obtain(context);
        builder.setType(obtain.isTablet ? DeviceType.DEVICE_TYPE_TABLET : DeviceType.DEVICE_TYPE_PHONE_DEVICE);
        builder.setOs(OS.OS_ANDROID);
        builder.setOsv(Build.VERSION.RELEASE);
        builder.setPxratio(obtain.screenDensity);
        builder.setPpi(obtain.screenDpi);
        Point screenSize = Utils.getScreenSize(context);
        builder.setW(screenSize.x);
        builder.setH(screenSize.y);
        builder.setIfa(c.getAdvertisingId(context, !dataRestrictions.canSendIfa()));
        builder.setLmt(c.isLimitAdTrackingEnabled());
        if (dataRestrictions.canSendDeviceInfo()) {
            builder.setContype(g.getConnectionType(context));
            builder.setMake(Build.MANUFACTURER);
            if (obtain.httpAgent != null) {
                builder.setUa(obtain.httpAgent);
            }
            if (obtain.model != null) {
                builder.setModel(obtain.model);
            }
            String hwv = obtain.getHWV();
            if (hwv != null) {
                builder.setHwv(hwv);
            }
            String language = Locale.getDefault().getLanguage();
            if (language != null) {
                builder.setLang(language);
            }
            if (obtain.telephonyNetworkOperator != null) {
                builder.setMccmnc(obtain.telephonyNetworkOperator);
            }
            if (obtain.telephonyNetworkOperatorName != null) {
                builder.setCarrier(obtain.telephonyNetworkOperatorName);
            }
        }
        if (dataRestrictions.canSendGeoPosition()) {
            builder.setGeo(g.locationToGeo(g.obtainBestLocation(context, targetingParams.getDeviceLocation(), targetingParams2.getDeviceLocation()), true));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void fillDeviceExtension(android.content.Context context, Struct.Builder builder, UserRestrictionParams userRestrictionParams) {
        String next;
        String deviceName;
        Set<String> inputLanguageSet = Utils.getInputLanguageSet(context);
        if (inputLanguageSet.size() > 0) {
            ListValue.Builder newBuilder = ListValue.newBuilder();
            for (String str : inputLanguageSet) {
                if (str != null) {
                    newBuilder.addValues(Value.newBuilder().setStringValue(str).build());
                }
            }
            builder.putFields("inputlanguage", Value.newBuilder().setListValue(newBuilder.build()).build());
        }
        DeviceInfo obtain = DeviceInfo.obtain(context);
        Long availableDiskSpaceInMB = obtain.getAvailableDiskSpaceInMB();
        if (availableDiskSpaceInMB != null) {
            builder.putFields("diskspace", Value.newBuilder().setNumberValue(availableDiskSpaceInMB.longValue()).build());
        }
        Long totalDiskSpaceInMB = obtain.getTotalDiskSpaceInMB();
        if (totalDiskSpaceInMB != null) {
            builder.putFields("totaldisk", Value.newBuilder().setNumberValue(totalDiskSpaceInMB.longValue()).build());
        }
        Boolean isRingMuted = Utils.isRingMuted(context);
        double d2 = 0.0d;
        if (isRingMuted != null) {
            builder.putFields("ringmute", Value.newBuilder().setNumberValue(isRingMuted.booleanValue() ? 0.0d : 1.0d).build());
        }
        Boolean isCharging = Utils.isCharging(context);
        if (isCharging != null) {
            builder.putFields("charging", Value.newBuilder().setNumberValue(isCharging.booleanValue() ? 1.0d : 0.0d).build());
        }
        Boolean isHeadsetConnected = BluetoothUtils.isHeadsetConnected(context);
        if (isHeadsetConnected != null) {
            builder.putFields("headset", Value.newBuilder().setNumberValue(isHeadsetConnected.booleanValue() ? 1.0d : 0.0d).build());
        }
        Integer batteryLevel = Utils.getBatteryLevel(context);
        if (batteryLevel != null) {
            builder.putFields("batterylevel", Value.newBuilder().setNumberValue(batteryLevel.intValue()).build());
        }
        Boolean isBatterySaverEnabled = Utils.isBatterySaverEnabled(context);
        if (isBatterySaverEnabled != null) {
            builder.putFields("batterysaver", Value.newBuilder().setNumberValue(isBatterySaverEnabled.booleanValue() ? 1.0d : 0.0d).build());
        }
        builder.putFields("darkmode", Value.newBuilder().setNumberValue(Utils.isDarkModeEnabled(context) ? 1.0d : 0.0d).build());
        Boolean isAirplaneModeOn = Utils.isAirplaneModeOn(context);
        if (isAirplaneModeOn != null) {
            builder.putFields("airplane", Value.newBuilder().setNumberValue(isAirplaneModeOn.booleanValue() ? 1.0d : 0.0d).build());
        }
        Boolean isDoNotDisturbOn = Utils.isDoNotDisturbOn(context);
        if (isDoNotDisturbOn != null) {
            builder.putFields("dnd", Value.newBuilder().setNumberValue(isDoNotDisturbOn.booleanValue() ? 1.0d : 0.0d).build());
        }
        if (userRestrictionParams.canSendDeviceInfo() && (deviceName = Utils.getDeviceName(context)) != null) {
            builder.putFields("devicename", Value.newBuilder().setStringValue(deviceName).build());
        }
        builder.putFields("time", Value.newBuilder().setNumberValue(System.currentTimeMillis()).build());
        Float screenBrightnessRatio = Utils.getScreenBrightnessRatio(context);
        if (screenBrightnessRatio != null) {
            builder.putFields("screenbright", Value.newBuilder().setNumberValue(screenBrightnessRatio.floatValue()).build());
        }
        Value.Builder newBuilder2 = Value.newBuilder();
        if (obtain.isDeviceRooted()) {
            d2 = 1.0d;
        }
        builder.putFields("jailbreak", newBuilder2.setNumberValue(d2).build());
        builder.putFields("lastbootup", Value.newBuilder().setNumberValue(SystemClock.elapsedRealtime()).build());
        Set<String> connectedHeadsets = BluetoothUtils.getConnectedHeadsets(context);
        if (!(connectedHeadsets == null || connectedHeadsets.size() <= 0 || (next = connectedHeadsets.iterator().next()) == null)) {
            builder.putFields("headsetname", Value.newBuilder().setStringValue(next).build());
        }
        Long totalRAMInB = obtain.getTotalRAMInB();
        if (totalRAMInB != null) {
            builder.putFields("totalmem", Value.newBuilder().setNumberValue(totalRAMInB.longValue()).build());
        }
    }

    public final void merge(DeviceParams deviceParams) {
    }
}
