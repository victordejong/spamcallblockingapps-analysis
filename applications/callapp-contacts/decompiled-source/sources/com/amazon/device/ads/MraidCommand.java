package com.amazon.device.ads;

import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidCommand.class */
abstract class MraidCommand {

    /* renamed from: a  reason: collision with root package name */
    static HashMap<String, Class> f6517a = new HashMap<>();

    public static Class<MraidCommand> a(String str) {
        return f6517a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, Class cls) {
        f6517a.put(str, cls);
    }

    public abstract String a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
    }
}
