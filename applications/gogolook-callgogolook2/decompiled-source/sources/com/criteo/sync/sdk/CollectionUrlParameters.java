package com.criteo.sync.sdk;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/CollectionUrlParameters.class */
public class CollectionUrlParameters {
    public String appId;
    public String gaid;
    public String integrationId;
    public String osType;
    public String osVersion;
    public String version;

    public CollectionUrlParameters(String str, String str2, String str3, String str4, String str5, String str6) {
        this.appId = str;
        this.integrationId = str2;
        this.osType = str3;
        this.osVersion = str4;
        this.version = str5;
        this.gaid = str6;
    }

    public static String nullStringToEmptyString(String str) {
        if (str == null) {
            str = "";
        }
        return str;
    }

    public String getAppId() {
        return this.appId;
    }

    public String getCollectionUrl(String str) {
        QueryStringBuilder collectionUrlQueryStringBuilder = getCollectionUrlQueryStringBuilder();
        collectionUrlQueryStringBuilder.append("t", String.valueOf(System.currentTimeMillis()));
        return str + "?" + collectionUrlQueryStringBuilder.toString();
    }

    public QueryStringBuilder getCollectionUrlQueryStringBuilder() {
        QueryStringBuilder queryStringBuilder = new QueryStringBuilder();
        queryStringBuilder.append("app_id", this.appId);
        queryStringBuilder.append("integration_id", this.integrationId);
        queryStringBuilder.append("os_type", this.osType);
        queryStringBuilder.append("os_version", this.osVersion);
        queryStringBuilder.append("version", this.version);
        queryStringBuilder.append("gaid", nullStringToEmptyString(this.gaid));
        return queryStringBuilder;
    }

    public String getGaid() {
        return this.gaid;
    }

    public String getIntegrationId() {
        return this.integrationId;
    }

    public String getOsType() {
        return this.osType;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public String getVersion() {
        return this.version;
    }
}
