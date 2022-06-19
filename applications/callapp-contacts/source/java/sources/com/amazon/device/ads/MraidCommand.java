package com.amazon.device.ads;

import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidCommand.class */
abstract class MraidCommand {

    /* renamed from: a */
    static HashMap<String, Class> f11919a = new HashMap<>();

    /* renamed from: a */
    public static Class<MraidCommand> m38757a(String str) {
        return f11919a.get(str);
    }

    /* renamed from: a */
    public static void m38756a(String str, Class cls) {
        f11919a.put(str, cls);
    }

    /* renamed from: a */
    public abstract String mo38748a();

    /* renamed from: a */
    public void mo38747a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
    }
}
