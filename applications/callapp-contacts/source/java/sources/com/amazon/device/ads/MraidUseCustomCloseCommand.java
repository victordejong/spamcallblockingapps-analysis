package com.amazon.device.ads;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidUseCustomCloseCommand.class */
public class MraidUseCustomCloseCommand extends MraidCommand {
    /* renamed from: b */
    public static String m38746b() {
        return "useCustomClose";
    }

    @Override // com.amazon.device.ads.MraidCommand
    /* renamed from: a */
    public final String mo38748a() {
        return "useCustomClose";
    }

    @Override // com.amazon.device.ads.MraidCommand
    /* renamed from: a */
    public final void mo38747a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
        dTBAdMRAIDController.m39027a(jSONObject.getBoolean(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY));
    }
}
