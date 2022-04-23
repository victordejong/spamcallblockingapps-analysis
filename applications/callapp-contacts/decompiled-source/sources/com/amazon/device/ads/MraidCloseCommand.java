package com.amazon.device.ads;

import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidCloseCommand.class */
public class MraidCloseCommand extends MraidCommand {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        return EventConstants.CLOSE;
    }

    @Override // com.amazon.device.ads.MraidCommand
    public final String a() {
        return EventConstants.CLOSE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazon.device.ads.MraidCommand
    public final void a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) {
        dTBAdMRAIDController.e();
    }
}
