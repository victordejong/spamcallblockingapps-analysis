package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Verification.class */
public class Verification {
    @Tag
    private JavaScriptResource javaScriptResource;
    @Tag
    private TrackingEvents trackingEvents;
    @Attribute
    private String vendor;
    @Tag
    private VerificationParameters verificationParameters;

    public JavaScriptResource getJavaScriptResource() {
        return this.javaScriptResource;
    }

    public TrackingEvents getTrackingEvents() {
        return this.trackingEvents;
    }

    public String getVendor() {
        return this.vendor;
    }

    public VerificationParameters getVerificationParameters() {
        return this.verificationParameters;
    }
}
