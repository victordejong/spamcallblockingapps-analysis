package com.facebook.stetho.inspector.network;

import com.facebook.stetho.inspector.protocol.module.Page;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/PrettyPrinterDisplayType.class */
public enum PrettyPrinterDisplayType {
    JSON(Page.ResourceType.XHR),
    HTML(Page.ResourceType.DOCUMENT),
    TEXT(Page.ResourceType.DOCUMENT);
    
    private final Page.ResourceType mResourceType;

    PrettyPrinterDisplayType(Page.ResourceType resourceType) {
        this.mResourceType = resourceType;
    }

    public Page.ResourceType getResourceType() {
        return this.mResourceType;
    }
}
