package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidJSReadyCommand.class */
public class MraidJSReadyCommand extends MraidCommand {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        return "jsready";
    }

    @Override // com.amazon.device.ads.MraidCommand
    public final String a() {
        return "jsready";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazon.device.ads.MraidCommand
    public final void a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
        dTBAdMRAIDController.t();
    }
}
