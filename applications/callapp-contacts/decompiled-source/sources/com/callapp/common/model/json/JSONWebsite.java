package com.callapp.common.model.json;

import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONWebsite.class */
public class JSONWebsite extends CallAppJSONObject {
    public static final transient String BINGLOCAL_SITE_INNER = "bing.com/local";
    public static final transient String GRAVATAR_SITE_INNER = "gravatar.";
    public static final transient int WEBSITE_BLOG_TYPE_ID = 2;
    public static final transient int WEBSITE_CUSTOM_TYPE_ID = 0;
    public static final transient int WEBSITE_FTP_TYPE_ID = 6;
    public static final transient int WEBSITE_GOOGLE_PLACES_TYPE_ID = 8;
    public static final transient int WEBSITE_HOMEPAGE_TYPE_ID = 1;
    public static final transient int WEBSITE_HOME_TYPE_ID = 4;
    public static final transient int WEBSITE_HUAWEI_PLACES_TYPE_ID = 9;
    public static final transient int WEBSITE_OTHER_TYPE_ID = 7;
    public static final transient int WEBSITE_PROFILE_TYPE_ID = 3;
    public static final transient int WEBSITE_WORK_TYPE_ID = 5;
    public static final transient String WHITEPAGES_SITE_INNER = "whitepages.com";
    public static final transient String YELP_SITE_INNER = "yelp.";
    public static final transient String YOUTUBE_SITE_INNER = "youtube.";
    private static final long serialVersionUID = -6108590867558077734L;
    private int type;
    private String websiteUrl;

    public JSONWebsite() {
    }

    public JSONWebsite(JSONWebsite jSONWebsite) {
        super(jSONWebsite.isFromUserProfile());
        this.websiteUrl = jSONWebsite.websiteUrl;
        this.type = jSONWebsite.type;
    }

    public JSONWebsite(String str) {
        this.websiteUrl = str;
    }

    public JSONWebsite(String str, int i) {
        this(str, i, false);
    }

    public JSONWebsite(String str, int i, boolean z) {
        super(z);
        this.websiteUrl = str;
        this.type = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONWebsite)) {
            return false;
        }
        JSONWebsite jSONWebsite = (JSONWebsite) obj;
        String str = this.websiteUrl;
        return str == null ? jSONWebsite.websiteUrl == null : StringUtils.b((Object) str, (Object) jSONWebsite.websiteUrl);
    }

    public int getType() {
        return this.type;
    }

    public String getWebsiteUrl() {
        return this.websiteUrl;
    }

    public int hashCode() {
        String str = this.websiteUrl;
        return (str == null ? 0 : str.toLowerCase().hashCode()) + 31;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setWebsiteUrl(String str) {
        this.websiteUrl = str;
    }

    public String toString() {
        return "JSONWebsite{websiteUrl='" + this.websiteUrl + "'}";
    }
}
