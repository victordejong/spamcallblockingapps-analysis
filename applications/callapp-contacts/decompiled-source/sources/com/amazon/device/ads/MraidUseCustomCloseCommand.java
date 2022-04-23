package com.amazon.device.ads;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidUseCustomCloseCommand.class */
public class MraidUseCustomCloseCommand extends MraidCommand {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        return "useCustomClose";
    }

    @Override // com.amazon.device.ads.MraidCommand
    public final String a() {
        return "useCustomClose";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazon.device.ads.MraidCommand
    public final void a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) throws JSONException {
        dTBAdMRAIDController.a(jSONObject.getBoolean(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY));
    }
}
