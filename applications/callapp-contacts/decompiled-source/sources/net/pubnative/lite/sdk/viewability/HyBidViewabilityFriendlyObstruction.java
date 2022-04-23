package net.pubnative.lite.sdk.viewability;

import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.f;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction.class */
public class HyBidViewabilityFriendlyObstruction {
    private final f purpose;
    private final String reason;
    private final View view;

    public HyBidViewabilityFriendlyObstruction(View view, f fVar, String str) {
        this.view = view;
        this.purpose = fVar;
        this.reason = str;
    }

    public f getPurpose() {
        return this.purpose;
    }

    public String getReason() {
        return this.reason;
    }

    public View getView() {
        return this.view;
    }
}
