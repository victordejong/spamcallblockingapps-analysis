package com.pubmatic.sdk.video.vastmodels;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.POBVideoConstant;
import com.pubmatic.sdk.video.vastmodels.POBResource;
import com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBIcon.class */
public class POBIcon implements POBXMLNodeListener, POBAdDescriptor {

    /* renamed from: a */
    private String f1003a;

    /* renamed from: b */
    private int f1004b;

    /* renamed from: c */
    private int f1005c;

    /* renamed from: d */
    private String f1006d;

    /* renamed from: e */
    private String f1007e;

    /* renamed from: f */
    private int f1008f;

    /* renamed from: g */
    private int f1009g;

    /* renamed from: h */
    private String f1010h;

    /* renamed from: i */
    private POBResource f1011i;
    protected String mClickThroughURL;
    protected List<String> mClickTrackers;
    protected List<String> mViewTrackers;

    /* renamed from: a */
    private String m601a() {
        POBResource pOBResource = this.f1011i;
        if (pOBResource != null) {
            if (pOBResource.getResourceType() == POBResource.EnumC2001a.HTML) {
                return this.f1011i.getResource();
            }
            if (this.f1011i.getResourceType() != POBResource.EnumC2001a.STATIC) {
                return String.format(POBVideoConstant.IFRAME_HTML, this.f1011i.getResource());
            }
            return String.format(POBVideoConstant.ANCHOR_TAG, POBUtils.isNullOrEmpty(this.mClickThroughURL) ? POBCommonConstants.PLACEHOLDER_CLICK_THROUGH : this.mClickThroughURL, String.format(POBVideoConstant.STATIC_HTML, this.f1011i.getResource()));
        }
        return null;
    }

    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    public void build(POBNodeBuilder pOBNodeBuilder) {
        this.f1003a = pOBNodeBuilder.getAttributeValue("program");
        this.f1004b = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue(ViewHierarchyConstants.DIMENSION_WIDTH_KEY));
        this.f1005c = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY));
        this.f1006d = pOBNodeBuilder.getAttributeValue("xPosition");
        this.f1007e = pOBNodeBuilder.getAttributeValue("yPosition");
        String attributeValue = pOBNodeBuilder.getAttributeValue("duration");
        if (attributeValue != null) {
            this.f1008f = (int) POBUtils.getSeconds(attributeValue);
        }
        String attributeValue2 = pOBNodeBuilder.getAttributeValue("offset");
        if (attributeValue2 != null) {
            this.f1009g = (int) POBUtils.getSeconds(attributeValue2);
        }
        this.f1010h = pOBNodeBuilder.getAttributeValue("apiFramework");
        this.mClickThroughURL = pOBNodeBuilder.getNodeValue("IconClicks/IconClickThrough");
        this.mClickTrackers = pOBNodeBuilder.getStringList("IconClicks/IconClickTracking");
        this.mViewTrackers = pOBNodeBuilder.getStringList("IconViewTracking");
        POBResource pOBResource = (POBResource) pOBNodeBuilder.getNodeObject("StaticResource", POBResource.class);
        this.f1011i = pOBResource;
        if (pOBResource == null) {
            POBResource pOBResource2 = (POBResource) pOBNodeBuilder.getNodeObject("HTMLResource", POBResource.class);
            this.f1011i = pOBResource2;
            if (pOBResource2 != null) {
                return;
            }
            this.f1011i = (POBResource) pOBNodeBuilder.getNodeObject("IFrameResource", POBResource.class);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public POBAdDescriptor buildWithRefreshAndExpiryTimeout(int i, int i2) {
        return null;
    }

    public String getApiFramework() {
        return this.f1010h;
    }

    public String getClickThroughURL() {
        return this.mClickThroughURL;
    }

    public List<String> getClickTrackers() {
        return this.mClickTrackers;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getContentHeight() {
        return this.f1005c;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getContentWidth() {
        return this.f1004b;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public String getCreativeType() {
        return null;
    }

    public int getDuration() {
        return this.f1008f;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public String getId() {
        return null;
    }

    public int getOffset() {
        return this.f1009g;
    }

    public String getProgram() {
        return this.f1003a;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public JSONObject getRawBid() {
        return null;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getRefreshInterval() {
        return 0;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public String getRenderableContent() {
        return m601a();
    }

    public POBResource getResource() {
        return this.f1011i;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getStatus() {
        return 0;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public Map<String, String> getTargetingInfo() {
        return null;
    }

    public List<String> getViewTrackers() {
        return this.mViewTrackers;
    }

    public String getXPosition() {
        return this.f1006d;
    }

    public String getYPosition() {
        return this.f1007e;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public boolean isVideo() {
        return false;
    }
}
