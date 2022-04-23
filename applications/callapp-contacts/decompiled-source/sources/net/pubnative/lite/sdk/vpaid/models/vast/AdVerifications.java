package net.pubnative.lite.sdk.vpaid.models.vast;

import java.util.List;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/AdVerifications.class */
public class AdVerifications {
    @Tag("Verification")
    private List<Verification> verificationList;

    public List<Verification> getVerificationList() {
        return this.verificationList;
    }
}
