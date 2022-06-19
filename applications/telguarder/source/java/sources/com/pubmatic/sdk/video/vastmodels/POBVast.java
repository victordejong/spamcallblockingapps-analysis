package com.pubmatic.sdk.video.vastmodels;

import com.facebook.internal.ServerProtocol;
import com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBVast.class */
public class POBVast implements POBXMLNodeListener {

    /* renamed from: a */
    private List<POBVastAd> f1050a;

    /* renamed from: b */
    private String f1051b;

    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    public void build(POBNodeBuilder pOBNodeBuilder) {
        POBVastAd pOBVastAd;
        this.f1051b = pOBNodeBuilder.getAttributeValue(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
        this.f1050a = new ArrayList();
        if (pOBNodeBuilder.getNode("/VAST/Ad") != null) {
            POBVastAd pOBVastAd2 = (POBVastAd) pOBNodeBuilder.getNodeObject("/VAST/Ad[1]/InLine", POBVastAd.class);
            if (pOBVastAd2 == null) {
                POBVastAd pOBVastAd3 = (POBVastAd) pOBNodeBuilder.getNodeObject("/VAST/Ad[1]/Wrapper", POBVastAd.class);
                if (pOBVastAd3 == null) {
                    return;
                }
                this.f1050a.add(pOBVastAd3);
                return;
            }
            pOBVastAd = pOBVastAd2;
        } else {
            POBVastAd pOBVastAd4 = new POBVastAd();
            pOBVastAd4.build(pOBNodeBuilder);
            pOBVastAd = pOBVastAd4;
        }
        this.f1050a.add(pOBVastAd);
    }

    public List<POBVastAd> getAds() {
        return this.f1050a;
    }

    public String getVersion() {
        return this.f1051b;
    }
}
