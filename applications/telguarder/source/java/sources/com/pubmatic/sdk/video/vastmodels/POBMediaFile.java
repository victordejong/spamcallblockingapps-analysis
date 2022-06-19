package com.pubmatic.sdk.video.vastmodels;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBMediaFile.class */
public class POBMediaFile implements POBXMLNodeListener {

    /* renamed from: a */
    private String f1019a;

    /* renamed from: b */
    private String f1020b;

    /* renamed from: c */
    private int f1021c;

    /* renamed from: d */
    private int f1022d;

    /* renamed from: e */
    private int f1023e;

    /* renamed from: f */
    private boolean f1024f;

    /* renamed from: g */
    private boolean f1025g = true;

    /* renamed from: h */
    private String f1026h;

    /* renamed from: i */
    private String f1027i;

    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    public void build(POBNodeBuilder pOBNodeBuilder) {
        this.f1019a = pOBNodeBuilder.getAttributeValue("delivery");
        this.f1020b = pOBNodeBuilder.getAttributeValue("type");
        this.f1021c = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue("bitrate"));
        this.f1022d = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue(ViewHierarchyConstants.DIMENSION_WIDTH_KEY));
        this.f1023e = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY));
        this.f1024f = POBUtils.getBooleanValue(pOBNodeBuilder.getAttributeValue("scalable"));
        String attributeValue = pOBNodeBuilder.getAttributeValue("maintainAspectRatio");
        if (attributeValue != null && !attributeValue.isEmpty()) {
            this.f1025g = POBUtils.getBooleanValue(attributeValue);
        }
        this.f1026h = pOBNodeBuilder.getNodeValue();
        this.f1027i = pOBNodeBuilder.getAttributeValue("fileSize");
    }

    public int getBitrate() {
        return this.f1021c;
    }

    public String getDelivery() {
        return this.f1019a;
    }

    public String getFileSize() {
        return this.f1027i;
    }

    public int getHeight() {
        return this.f1023e;
    }

    public boolean getMaintainAspectRatio() {
        return this.f1025g;
    }

    public String getMediaFileURL() {
        return this.f1026h;
    }

    public boolean getScalable() {
        return this.f1024f;
    }

    public String getType() {
        return this.f1020b;
    }

    public int getWidth() {
        return this.f1022d;
    }

    public String toString() {
        return "Type: " + this.f1020b + ", bitrate: " + this.f1021c + ", w: " + this.f1022d + ", h: " + this.f1023e + ", URL: " + this.f1026h;
    }
}
