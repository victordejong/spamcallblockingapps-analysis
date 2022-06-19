package com.pubmatic.sdk.video.vastmodels;

import com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBResource.class */
public class POBResource implements POBXMLNodeListener {

    /* renamed from: a */
    private EnumC2001a f1040a;

    /* renamed from: b */
    private String f1041b;

    /* renamed from: c */
    private String f1042c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.video.vastmodels.POBResource$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBResource$a.class */
    public enum EnumC2001a {
        STATIC,
        HTML,
        IFRAME
    }

    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    public void build(POBNodeBuilder pOBNodeBuilder) {
        EnumC2001a enumC2001a;
        this.f1041b = pOBNodeBuilder.getAttributeValue("creativeType");
        String nodeName = pOBNodeBuilder.getNodeName();
        nodeName.hashCode();
        boolean z = true;
        switch (nodeName.hashCode()) {
            case -375340334:
                if (nodeName.equals("IFrameResource")) {
                    z = false;
                    break;
                }
                break;
            case 676623548:
                if (nodeName.equals("StaticResource")) {
                    z = true;
                    break;
                }
                break;
            case 1928285401:
                if (nodeName.equals("HTMLResource")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                enumC2001a = EnumC2001a.IFRAME;
                break;
            case true:
                enumC2001a = EnumC2001a.STATIC;
                break;
            case true:
                enumC2001a = EnumC2001a.HTML;
                break;
            default:
                this.f1042c = pOBNodeBuilder.getNodeValue();
        }
        this.f1040a = enumC2001a;
        this.f1042c = pOBNodeBuilder.getNodeValue();
    }

    public String getCreativeType() {
        return this.f1041b;
    }

    public String getResource() {
        return this.f1042c;
    }

    public EnumC2001a getResourceType() {
        return this.f1040a;
    }
}
