package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidJSReadyCommand.class */
public class MraidJSReadyCommand extends MraidCommand {
    /* renamed from: b */
    public static String m38753b() {
        return "jsready";
    }

    @Override // com.amazon.device.ads.MraidCommand
    /* renamed from: a */
    public final String mo38748a() {
        return "jsready";
    }

    @Override // com.amazon.device.ads.MraidCommand
    /* renamed from: a */
    public final void mo38747a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
        dTBAdMRAIDController.m39007t();
    }
}
