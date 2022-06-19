package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidExpandCommand.class */
public class MraidExpandCommand extends MraidCommand {
    /* renamed from: b */
    public static String m38755b() {
        return "expand";
    }

    @Override // com.amazon.device.ads.MraidCommand
    /* renamed from: a */
    public final String mo38748a() {
        return "expand";
    }

    @Override // com.amazon.device.ads.MraidCommand
    /* renamed from: a */
    public final void mo38747a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
        dTBAdMRAIDController.mo38996b(SDKUtilities.m38743a(jSONObject));
    }
}
