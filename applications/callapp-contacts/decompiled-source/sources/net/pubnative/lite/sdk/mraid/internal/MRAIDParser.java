package net.pubnative.lite.sdk.mraid.internal;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/internal/MRAIDParser.class */
public class MRAIDParser {
    private static final String TAG = "MRAIDParser";

    private boolean checkParamsForCommand(String str, Map<String, String> map) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1886160473:
                if (str.equals("playVideo")) {
                    c2 = 0;
                    break;
                }
                break;
            case -733616544:
                if (str.equals("createCalendarEvent")) {
                    c2 = 1;
                    break;
                }
                break;
            case 3417674:
                if (str.equals("open")) {
                    c2 = 2;
                    break;
                }
                break;
            case 133423073:
                if (str.equals("setOrientationProperties")) {
                    c2 = 3;
                    break;
                }
                break;
            case 459238621:
                if (str.equals(MRAIDNativeFeature.STORE_PICTURE)) {
                    c2 = 4;
                    break;
                }
                break;
            case 624734601:
                if (str.equals("setResizeProperties")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1614272768:
                if (str.equals("useCustomClose")) {
                    c2 = 6;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 2:
            case 4:
                return map.containsKey("url");
            case 1:
                return map.containsKey("eventJSON");
            case 3:
                return map.containsKey("allowOrientationChange") && map.containsKey("forceOrientation");
            case 5:
                return map.containsKey("width") && map.containsKey("height") && map.containsKey("offsetX") && map.containsKey("offsetY") && map.containsKey("customClosePosition") && map.containsKey("allowOffscreen");
            case 6:
                return map.containsKey("useCustomClose");
            default:
                return true;
        }
    }

    private boolean isValidCommand(String str) {
        return Arrays.asList(EventConstants.CLOSE, "createCalendarEvent", "expand", "open", "playVideo", "resize", "setOrientationProperties", "setResizeProperties", MRAIDNativeFeature.STORE_PICTURE, "useCustomClose").contains(str);
    }

    public Map<String, String> parseCommandUrl(String str) {
        String[] split;
        MRAIDLog.d(TAG, "parseCommandUrl ".concat(String.valueOf(str)));
        String substring = str.substring(8);
        HashMap hashMap = new HashMap();
        int indexOf = substring.indexOf(63);
        String str2 = substring;
        if (indexOf != -1) {
            str2 = substring.substring(0, indexOf);
            for (String str3 : substring.substring(indexOf + 1).split("&")) {
                int indexOf2 = str3.indexOf(61);
                hashMap.put(str3.substring(0, indexOf2), str3.substring(indexOf2 + 1));
            }
        }
        if (!isValidCommand(str2)) {
            MRAIDLog.w("command " + str2 + " is unknown");
            return null;
        } else if (!checkParamsForCommand(str2, hashMap)) {
            MRAIDLog.w("command URL " + str + " is missing parameters");
            return null;
        } else {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("command", str2);
            hashMap2.putAll(hashMap);
            return hashMap2;
        }
    }
}
