package com.amazon.device.ads;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidCommand.class */
public abstract class MraidCommand {
    public static HashMap<String, Class> commandRepository = new HashMap<>();

    public static Class<MraidCommand> findMraidCommandByName(String str) {
        return commandRepository.get(str);
    }

    public static Map<String, String> parseQueryString(String str) {
        String[] split = str.split(ContainerUtils.FIELD_DELIMITER);
        HashMap hashMap = new HashMap();
        for (String str2 : split) {
            int indexOf = str2.indexOf(61);
            if (indexOf > 0 && indexOf < str2.length() - 1) {
                hashMap.put(str2.substring(0, indexOf), str2.substring(indexOf + 1));
            }
        }
        return hashMap;
    }

    public static void registerCommand(String str, Class cls) {
        commandRepository.put(str, cls);
    }

    public void execute(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
    }

    public abstract String getName();
}
