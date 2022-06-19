package com.amazon.device.ads;

import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidCloseCommand.class */
public class MraidCloseCommand extends MraidCommand {
    /* renamed from: b */
    public static String m38758b() {
        return EventConstants.CLOSE;
    }

    @Override // com.amazon.device.ads.MraidCommand
    /* renamed from: a */
    public final String mo38748a() {
        return EventConstants.CLOSE;
    }

    @Override // com.amazon.device.ads.MraidCommand
    /* renamed from: a */
    public final void mo38747a(JSONObject jSONObject, DTBAdMRAIDController dTBAdMRAIDController) {
        dTBAdMRAIDController.mo38992e();
    }
}
