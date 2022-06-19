package com.pubmatic.sdk.video.vastmodels;

import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.vastmodels.POBVastCreative;
import com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBLinear.class */
public class POBLinear extends POBVastCreative {

    /* renamed from: a */
    private double f1012a;

    /* renamed from: b */
    private List<POBTracking> f1013b;

    /* renamed from: c */
    private String f1014c;

    /* renamed from: d */
    private List<POBMediaFile> f1015d;

    /* renamed from: e */
    private List<POBIcon> f1016e;

    /* renamed from: f */
    private String f1017f;

    /* renamed from: g */
    private double f1018g;

    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    public void build(POBNodeBuilder pOBNodeBuilder) {
        this.f1017f = pOBNodeBuilder.getNodeValue("../UniversalAdId");
        String nodeValue = pOBNodeBuilder.getNodeValue("Duration");
        if (nodeValue != null) {
            this.f1012a = POBUtils.getSeconds(nodeValue);
        }
        this.f1013b = pOBNodeBuilder.getObjectList("TrackingEvents/Tracking", POBTracking.class);
        this.mClickThroughURL = pOBNodeBuilder.getNodeValue("VideoClicks/ClickThrough");
        this.mClickTrackers = pOBNodeBuilder.getStringList("VideoClicks/ClickTracking");
        this.f1014c = pOBNodeBuilder.getNodeValue("VideoClicks/CustomClick");
        this.f1015d = pOBNodeBuilder.getObjectList("MediaFiles/MediaFile", POBMediaFile.class);
        this.f1016e = pOBNodeBuilder.getObjectList("Icons/Icon", POBIcon.class);
        String attributeValue = pOBNodeBuilder.getAttributeValue("skipoffset");
        if (attributeValue != null) {
            this.f1018g = POBUtils.convertToSeconds(nodeValue, attributeValue);
        }
    }

    public String getCustomClick() {
        return this.f1014c;
    }

    public double getDuration() {
        return this.f1012a;
    }

    public List<POBIcon> getIconList() {
        return this.f1016e;
    }

    public List<POBMediaFile> getMediaFiles() {
        return this.f1015d;
    }

    public double getSkipOffset() {
        return this.f1018g;
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public List<POBTracking> getTrackingEvents() {
        return this.f1013b;
    }

    public String getUniversalAdId() {
        return this.f1017f;
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public POBVastCreative.CreativeType getVastCreativeType() {
        return POBVastCreative.CreativeType.LINEAR;
    }
}
