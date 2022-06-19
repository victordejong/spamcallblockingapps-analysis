package com.pubmatic.sdk.common.models;

import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBApplicationInfo.class */
public class POBApplicationInfo {

    /* renamed from: a */
    private String f444a;

    /* renamed from: b */
    private URL f445b;

    /* renamed from: c */
    private Boolean f446c;

    /* renamed from: d */
    private String f447d;

    /* renamed from: e */
    private String f448e;

    public String getCategories() {
        return this.f447d;
    }

    public String getDomain() {
        return this.f444a;
    }

    public String getKeywords() {
        return this.f448e;
    }

    public URL getStoreURL() {
        return this.f445b;
    }

    public Boolean isPaid() {
        return this.f446c;
    }

    public void setCategories(String str) {
        this.f447d = str;
    }

    public void setDomain(String str) {
        this.f444a = str;
    }

    public void setKeywords(String str) {
        this.f448e = str;
    }

    public void setPaid(boolean z) {
        this.f446c = Boolean.valueOf(z);
    }

    public void setStoreURL(URL url) {
        this.f445b = url;
    }
}
