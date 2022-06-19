package com.millennialmedia;

import com.millennialmedia.internal.utils.Utils;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/AppInfo.class */
public class AppInfo {
    private Boolean coppa;
    private String mediator;
    private String siteId;

    public Boolean getCoppa() {
        return this.coppa;
    }

    public String getMediator() {
        return this.mediator;
    }

    public String getSiteId() {
        return this.siteId;
    }

    public AppInfo setCoppa(boolean z) {
        this.coppa = Boolean.valueOf(z);
        return this;
    }

    public AppInfo setMediator(String str) {
        this.mediator = str;
        return this;
    }

    public AppInfo setSiteId(String str) {
        this.siteId = Utils.trimStringNotEmpty(str);
        return this;
    }
}
