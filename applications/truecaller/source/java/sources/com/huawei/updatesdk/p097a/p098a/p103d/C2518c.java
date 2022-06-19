package com.huawei.updatesdk.p097a.p098a.p103d;

import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.common.PackageConstants;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.HashMap;
import java.util.Map;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
/* renamed from: com.huawei.updatesdk.a.a.d.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/c.class */
public class C2518c {

    /* renamed from: a */
    private static final Map<String, String> f8187a;

    static {
        HashMap hashMap = new HashMap();
        f8187a = hashMap;
        hashMap.put("android.hardware.audio.output", "1");
        hashMap.put("android.hardware.bluetooth", "2");
        hashMap.put("android.hardware.bluetooth_le", "3");
        hashMap.put("android.hardware.camera", "4");
        hashMap.put("android.hardware.camera.any", "5");
        hashMap.put("android.hardware.camera.autofocus", "6");
        hashMap.put("android.hardware.camera.capability.manual_post_processing", "7");
        hashMap.put("android.hardware.camera.flash", "8");
        hashMap.put("android.hardware.camera.front", "9");
        hashMap.put("android.hardware.consumerir", "A");
        hashMap.put("android.hardware.faketouch", "B");
        hashMap.put("android.hardware.fingerprint", "C");
        hashMap.put("android.hardware.location", "D");
        hashMap.put("android.hardware.location.gps", "E");
        hashMap.put("android.hardware.location.network", "F");
        hashMap.put("android.hardware.microphone", RequestConfiguration.MAX_AD_CONTENT_RATING_G);
        hashMap.put("android.hardware.nfc", "H");
        hashMap.put("android.hardware.nfc.any", "I");
        hashMap.put("android.hardware.nfc.hce", "J");
        hashMap.put("android.hardware.nfc.hcef", "K");
        hashMap.put("android.hardware.opengles.aep", "L");
        hashMap.put("android.hardware.ram.normal", "M");
        hashMap.put("android.hardware.screen.landscape", "N");
        hashMap.put("android.hardware.screen.portrait", "O");
        hashMap.put("android.hardware.sensor.accelerometer", "P");
        hashMap.put("android.hardware.sensor.barometer", "Q");
        hashMap.put("android.hardware.sensor.compass", "R");
        hashMap.put("android.hardware.sensor.gyroscope", "S");
        hashMap.put("android.hardware.sensor.light", RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        hashMap.put("android.hardware.sensor.proximity", "U");
        hashMap.put("android.hardware.sensor.stepcounter", "V");
        hashMap.put("android.hardware.sensor.stepdetector", "W");
        hashMap.put("android.hardware.telephony", "X");
        hashMap.put("android.hardware.telephony.gsm", "Y");
        hashMap.put("android.hardware.telephony.ims", "Z");
        hashMap.put("android.hardware.touchscreen", "a");
        hashMap.put("android.hardware.touchscreen.multitouch", C22021b.f61237c);
        hashMap.put("android.hardware.touchscreen.multitouch.distinct", AbstractC2405c.f7629a);
        hashMap.put("android.hardware.touchscreen.multitouch.jazzhand", "d");
        hashMap.put("android.hardware.usb.accessory", "e");
        hashMap.put("android.hardware.usb.host", "f");
        hashMap.put("android.hardware.vulkan.compute", "g");
        hashMap.put("android.hardware.vulkan.level", "h");
        hashMap.put("android.hardware.vulkan.version", "i");
        hashMap.put("android.hardware.wifi", "j");
        hashMap.put("android.hardware.wifi.direct", "k");
        hashMap.put("android.hardware.wifi.passpoint", "l");
        hashMap.put("android.software.activities_on_secondary_displays", "m");
        hashMap.put("android.software.app_widgets", "n");
        hashMap.put("android.software.autofill", "o");
        hashMap.put("android.software.backup", "p");
        hashMap.put("android.software.cant_save_state", "q");
        hashMap.put("android.software.companion_device_setup", "r");
        hashMap.put("android.software.connectionservice", "s");
        hashMap.put("android.software.cts", "t");
        hashMap.put("android.software.device_admin", "u");
        hashMap.put("android.software.file_based_encryption", "v");
        hashMap.put("android.software.freeform_window_management", "w");
        hashMap.put("android.software.home_screen", "x");
        hashMap.put("android.software.input_methods", "y");
        hashMap.put("android.software.ipsec_tunnels", "z");
        hashMap.put("android.software.live_wallpaper", "00");
        hashMap.put("android.software.managed_users", HiAnalyticsConstant.KeyAndValue.NUMBER_01);
        hashMap.put("android.software.midi", "02");
        hashMap.put("android.software.picture_in_picture", "03");
        hashMap.put("android.software.print", "04");
        hashMap.put("android.software.secure_lock_screen", "05");
        hashMap.put("android.software.securely_removes_users", "06");
        hashMap.put("android.software.verified_boot", "07");
        hashMap.put("android.software.voice_recognizers", "08");
        hashMap.put("android.software.webview", "09");
        hashMap.put("android.sofware.nfc.beam", "0A");
        hashMap.put("com.huawei.software.features.china", "0B");
        hashMap.put("com.huawei.software.features.full", "0C");
        hashMap.put("com.huawei.system.feature", "0D");
        hashMap.put("com.nxp.mifare", "0E");
        hashMap.put("huawei.android.hardware.stylus", "0F");
        hashMap.put("android.hardware.audio.low_latency", "0G");
        hashMap.put("android.hardware.camera.capability.raw", "0H");
        hashMap.put("android.hardware.camera.external", "0I");
        hashMap.put("android.hardware.telephony.cdma", "0J");
        hashMap.put("android.hardware.nfc.uicc", "0K");
        hashMap.put("android.software.sip", "0L");
        hashMap.put("android.software.sip.voip", "0M");
        hashMap.put("android.software.vr.mode", "0N");
        hashMap.put("cn.google.services", "0O");
        hashMap.put("com.google.android.feature.services_updater", "0P");
        hashMap.put("com.google.android.feature.ZERO_TOUCH", "0Q");
        hashMap.put("com.huawei.software.features.oversea", "0R");
        hashMap.put("com.huawei.emui.api.23", "0S");
        hashMap.put("com.huawei.software.features.honor", "0T");
        hashMap.put("com.huawei.software.features.handset", "0U");
        hashMap.put("com.huawei.software.features.huawei", "0V");
        hashMap.put("android.hardware.camera.capability.manual_sensor", "0W");
        hashMap.put("android.hardware.camera.level.full", "0X");
        hashMap.put("ohos.software.nfc", "0Y");
        hashMap.put("android.hardware.type.watch", "0Z");
        hashMap.put("com.huawei.software.features.watch", "0a");
        hashMap.put("ohos.software.miscservices.inputmethod", "0b");
        hashMap.put("android.hardware.telephony.euicc", "0c");
        hashMap.put("com.huawei.software.features.lite", "0d");
        hashMap.put(PackageConstants.SERVICES_PACKAGE_ALL_SCENE, "0e");
        hashMap.put("no.com.huawei.hms", "0f");
        hashMap.put("android.software.adoptable_storage", "0g");
        hashMap.put("android.hardware.broadcastradio", "0h");
        hashMap.put("android.hardware.sensor.relative_humidity", "0i");
        hashMap.put("android.hardware.sensor.ambient_temperature", "0j");
        hashMap.put("android.hardware.type.automotive", "0k");
        hashMap.put("android.hardware.camera.ar", "0l");
        hashMap.put("android.hardware.ethernet", "0m");
        hashMap.put("com.volvocars", "0n");
        hashMap.put("com.polestar", "0o");
        hashMap.put("android.hardware.adayo.rndis", "0p");
        hashMap.put("com.huawei.emui.api.24", "0q");
        hashMap.put("com.huawei.emui.api.25", "0r");
        hashMap.put("com.huawei.emui.api.26", "0s");
        hashMap.put("com.huawei.emui.api.27", "0t");
        hashMap.put("com.huawei.software.features.homepanel", "0u");
        hashMap.put("com.huawei.software.features.kidpad", "0v");
        hashMap.put("huawei.watch.power", "0w");
        hashMap.put("huawei.watch.revert.buildtime", "0x");
        hashMap.put("com.huawei.hardware.screen.type.eink", "0y");
        hashMap.put("com.hihonor.software.features.full", "0z");
        hashMap.put("com.hihonor.software.features.lite", "10");
        hashMap.put("com.hihonor.software.features.china", "11");
        hashMap.put("com.hihonor.software.features.oversea", "12");
        hashMap.put("com.hihonor.software.features.handset", DtbConstants.NETWORK_TYPE_LTE);
        hashMap.put("com.hihonor.software.features.pad", "14");
        hashMap.put("com.hihonor.software.features.tv", "15");
        hashMap.put("com.hihonor.software.features.watch", "16");
        hashMap.put("com.hihonor.system.feature", "17");
        hashMap.put("com.huawei.software.features.pad", "18");
    }

    /* renamed from: a */
    public static String m36839a(String str) {
        Map<String, String> map = f8187a;
        String str2 = str;
        if (map.containsKey(str)) {
            str2 = map.get(str);
        }
        return str2;
    }
}
