package com.pubmatic.sdk.video.vastmodels;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.POBVideoConstant;
import com.pubmatic.sdk.video.vastmodels.POBResource;
import com.pubmatic.sdk.video.vastmodels.POBVastCreative;
import com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBCompanion.class */
public class POBCompanion extends POBVastCreative implements POBAdDescriptor {

    /* renamed from: a */
    private int f992a;

    /* renamed from: b */
    private int f993b;

    /* renamed from: c */
    private int f994c;

    /* renamed from: d */
    private int f995d;

    /* renamed from: e */
    private String f996e;

    /* renamed from: f */
    private List<POBTracking> f997f;

    /* renamed from: g */
    private String f998g;

    /* renamed from: h */
    private List<String> f999h;

    /* renamed from: i */
    private POBResource f1000i;

    /* renamed from: j */
    private String f1001j;

    /* renamed from: k */
    private String f1002k;

    /* renamed from: a */
    private String m602a() {
        String str;
        POBResource pOBResource = this.f1000i;
        if (pOBResource == null) {
            str = null;
        } else if (pOBResource.getResourceType() == POBResource.EnumC2001a.HTML) {
            str = this.f1000i.getResource();
        } else if (this.f1000i.getResourceType() == POBResource.EnumC2001a.STATIC) {
            str = String.format(POBVideoConstant.ANCHOR_TAG, POBUtils.isNullOrEmpty(this.f998g) ? POBCommonConstants.PLACEHOLDER_CLICK_THROUGH : this.f998g, String.format(POBVideoConstant.STATIC_HTML, this.f1000i.getResource()));
        } else {
            str = String.format(POBVideoConstant.IFRAME_HTML, this.f1000i.getResource());
        }
        return str;
    }

    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    public void build(POBNodeBuilder pOBNodeBuilder) {
        this.f992a = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue(ViewHierarchyConstants.DIMENSION_WIDTH_KEY));
        this.f993b = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY));
        this.f994c = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue("assetWidth"));
        this.f995d = POBUtils.getIntegerValue(pOBNodeBuilder.getAttributeValue("assetHeight"));
        this.f996e = pOBNodeBuilder.getAttributeValue("apiFramework");
        this.f997f = pOBNodeBuilder.getObjectList("TrackingEvents/Tracking", POBTracking.class);
        this.f998g = pOBNodeBuilder.getNodeValue("CompanionClickThrough");
        this.f999h = pOBNodeBuilder.getStringList("CompanionClickTracking");
        this.f1002k = pOBNodeBuilder.getAttributeValue("renderingMode");
        POBResource pOBResource = (POBResource) pOBNodeBuilder.getNodeObject("HTMLResource", POBResource.class);
        this.f1000i = pOBResource;
        if (pOBResource == null) {
            POBResource pOBResource2 = (POBResource) pOBNodeBuilder.getNodeObject("StaticResource", POBResource.class);
            this.f1000i = pOBResource2;
            if (pOBResource2 == null) {
                this.f1000i = (POBResource) pOBNodeBuilder.getNodeObject("IFrameResource", POBResource.class);
            }
        }
        this.f1001j = pOBNodeBuilder.getNodeValue("../../UniversalAdId");
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public POBAdDescriptor buildWithRefreshAndExpiryTimeout(int i, int i2) {
        return null;
    }

    public String getApiFramework() {
        return this.f996e;
    }

    public int getAssetHeight() {
        return this.f995d;
    }

    public int getAssetWidth() {
        return this.f994c;
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public String getClickThroughURL() {
        return this.f998g;
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public List<String> getClickTrackers() {
        return this.f999h;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getContentHeight() {
        return this.f993b;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getContentWidth() {
        return this.f992a;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public String getCreativeType() {
        return POBVastCreative.CreativeType.COMPANION.name();
    }

    public int getHeight() {
        return this.f993b;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public String getId() {
        return null;
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
        return m602a();
    }

    public String getRenderingMode() {
        return this.f1002k;
    }

    public POBResource getResource() {
        return this.f1000i;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getStatus() {
        return 0;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public Map<String, String> getTargetingInfo() {
        return null;
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public List<POBTracking> getTrackingEvents() {
        return this.f997f;
    }

    public String getUniversalAdId() {
        return this.f1001j;
    }

    @Override // com.pubmatic.sdk.video.vastmodels.POBVastCreative
    public POBVastCreative.CreativeType getVastCreativeType() {
        return POBVastCreative.CreativeType.COMPANION;
    }

    public int getWidth() {
        return this.f992a;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public boolean isVideo() {
        return false;
    }

    public void setRenderingMode(String str) {
        this.f1002k = str;
    }
}
