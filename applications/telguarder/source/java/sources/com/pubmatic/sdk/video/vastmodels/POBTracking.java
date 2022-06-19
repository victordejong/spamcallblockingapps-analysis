package com.pubmatic.sdk.video.vastmodels;

import androidx.core.app.NotificationCompat;
import com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBTracking.class */
public class POBTracking implements POBXMLNodeListener {

    /* renamed from: a */
    private String f1047a;

    /* renamed from: b */
    private String f1048b;

    /* renamed from: c */
    private String f1049c;

    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    public void build(POBNodeBuilder pOBNodeBuilder) {
        this.f1047a = pOBNodeBuilder.getAttributeValue(NotificationCompat.CATEGORY_EVENT);
        this.f1048b = pOBNodeBuilder.getNodeValue();
        this.f1049c = pOBNodeBuilder.getAttributeValue("offset");
    }

    public String getEvent() {
        return this.f1047a;
    }

    public String getOffset() {
        return this.f1049c;
    }

    public String getUrl() {
        return this.f1048b;
    }
}
