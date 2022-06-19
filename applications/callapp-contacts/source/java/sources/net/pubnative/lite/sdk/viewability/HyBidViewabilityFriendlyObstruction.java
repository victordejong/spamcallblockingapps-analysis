package net.pubnative.lite.sdk.viewability;

import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.EnumC16422f;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction.class */
public class HyBidViewabilityFriendlyObstruction {
    private final EnumC16422f purpose;
    private final String reason;
    private final View view;

    public HyBidViewabilityFriendlyObstruction(View view, EnumC16422f enumC16422f, String str) {
        this.view = view;
        this.purpose = enumC16422f;
        this.reason = str;
    }

    public EnumC16422f getPurpose() {
        return this.purpose;
    }

    public String getReason() {
        return this.reason;
    }

    public View getView() {
        return this.view;
    }
}
