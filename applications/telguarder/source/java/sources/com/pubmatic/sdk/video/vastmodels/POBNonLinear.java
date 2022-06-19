package com.pubmatic.sdk.video.vastmodels;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.vastmodels.POBVastCreative;
import com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBNonLinear.class */
public class POBNonLinear extends POBVastCreative {

    /* renamed from: a */
    private int f1028a;

    /* renamed from: b */
    private int f1029b;

    /* renamed from: c */
    private int f1030c;

    /* renamed from: d */
    private int f1031d;

    /* renamed from: e */
    private String f1032e;

    /* renamed from: f */
    private boolean f1033f;

    /* renamed from: g */
    private boolean f1034g = true;

    /* renamed from: h */
    private List<POBTracking> f1035h;

    /* renamed from: i */
    private String f1036i;

    /* renamed from: j */
    private List<String> f1037j;

    /* renamed from: k */
    private List<POBResource> f1038k;

    /* renamed from: l */
    private String f1039l;

    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    public void build(POBNodeBuilder pOBNodeBuilder) {
        this.f1028a = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue(ViewHierarchyConstants.DIMENSION_WIDTH_KEY));
        this.f1029b = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY));
        this.f1030c = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue("expandedWidth"));
        this.f1031d = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue("expandedHeight"));
        this.f1032e = pOBNodeBuilder.getAttributeValue("minSuggestedDuration");
        this.f1033f = POBUtils.getBooleanValue(pOBNodeBuilder.getAttributeValue("scalable"));
        String attributeValue = pOBNodeBuilder.getAttributeValue("maintainAspectRatio");
        if (attributeValue != null && !attributeValue.isEmpty()) {
            this.f1034g = POBUtils.getBooleanValue(attributeValue);
        }
        this.f1035h = pOBNodeBuilder.getObjectList("TrackingEvents/Tracking", POBTracking.class);
        this.f1036i = pOBNodeBuilder.getNodeValue("NonLinearClickThrough");
        this.f1037j = pOBNodeBuilder.getStringList("NonLinearClickTracking");
        this.f1038k = new ArrayList();
        POBResource pOBResource = (POBResource) pOBNodeBuilder.getNodeObject("StaticResource", POBResource.class);
        if (pOBResource != null) {
            this.f1038k.add(pOBResource);
        }
        POBResource pOBResource2 = (POBResource) pOBNodeBuilder.getNodeObject("HTMLResource", POBResource.class);
        if (pOBResource2 != null) {
            this.f1038k.add(pOBResource2);
        }
        POBResource pOBResource3 = (POBResource) pOBNodeBuilder.getNodeObject("IFrameResource", POBResource.class);
        if (pOBResource3 != null) {
            this.f1038k.add(pOBResource3);
        }
        this.f1039l = pOBNodeBuilder.getNodeValue("../../UniversalAdId");
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public String getClickThroughURL() {
        return this.f1036i;
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public List<String> getClickTrackers() {
        return this.f1037j;
    }

    public int getExpandedHeight() {
        return this.f1031d;
    }

    public int getExpandedWidth() {
        return this.f1030c;
    }

    public int getHeight() {
        return this.f1029b;
    }

    public boolean getMaintainAspectRatio() {
        return this.f1034g;
    }

    public String getMinSuggestedDuration() {
        return this.f1032e;
    }

    public List<POBResource> getResource() {
        return this.f1038k;
    }

    public boolean getScalable() {
        return this.f1033f;
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public List<POBTracking> getTrackingEvents() {
        return this.f1035h;
    }

    public String getUniversalAdId() {
        return this.f1039l;
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public POBVastCreative.CreativeType getVastCreativeType() {
        return POBVastCreative.CreativeType.NONLINEAR;
    }

    public int getWidth() {
        return this.f1028a;
    }
}
