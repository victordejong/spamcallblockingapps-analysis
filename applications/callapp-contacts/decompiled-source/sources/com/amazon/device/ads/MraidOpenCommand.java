package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidOpenCommand.class */
public class MraidOpenCommand extends MraidCommand {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        return "open";
    }

    @Override // com.amazon.device.ads.MraidCommand
    public final String a() {
        return "open";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazon.device.ads.MraidCommand
    public final void a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
        dTBAdMRAIDController.b(jSONObject.getString("url"));
    }
}
