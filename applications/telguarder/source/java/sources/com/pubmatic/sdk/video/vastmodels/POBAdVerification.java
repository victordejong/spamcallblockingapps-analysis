package com.pubmatic.sdk.video.vastmodels;

import com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider;
import com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBAdVerification.class */
public class POBAdVerification implements POBXMLNodeListener, POBVideoMeasurementProvider.POBVerificationScriptResource {

    /* renamed from: a */
    private List<String> f987a;

    /* renamed from: b */
    private List<String> f988b;

    /* renamed from: c */
    private List<POBTracking> f989c;

    /* renamed from: d */
    private String f990d;

    /* renamed from: e */
    private String f991e;

    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    public void build(POBNodeBuilder pOBNodeBuilder) {
        this.f990d = pOBNodeBuilder.getAttributeValue("vendor");
        this.f987a = pOBNodeBuilder.getStringList("JavaScriptResource");
        this.f989c = pOBNodeBuilder.getObjectList("TrackingEvents/Tracking", POBTracking.class);
        this.f988b = pOBNodeBuilder.getStringList("ExecutableResource");
        this.f991e = pOBNodeBuilder.getNodeValue("VerificationParameters");
    }

    public List<String> getExecutableResource() {
        return this.f988b;
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider.POBVerificationScriptResource
    public List<String> getJavaScriptResource() {
        return this.f987a;
    }

    public List<POBTracking> getTrackingEvents() {
        return this.f989c;
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider.POBVerificationScriptResource
    public String getVendorKey() {
        return this.f990d;
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider.POBVerificationScriptResource
    public String getVerificationParameter() {
        return this.f991e;
    }
}
