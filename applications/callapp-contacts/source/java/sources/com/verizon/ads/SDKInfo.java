package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/SDKInfo.class */
public final class SDKInfo {
    public final String buildHash;
    public final String buildId;
    public final String buildTime;
    public final String buildType;
    public final String version;

    public SDKInfo(String str, String str2, String str3, String str4, String str5) {
        this.version = str;
        this.buildHash = str2;
        this.buildType = str3;
        this.buildId = str4;
        this.buildTime = str5;
    }

    public final String toString() {
        return "SDKInfo{version='" + this.version + "', buildId='" + this.buildId + "', buildTime='" + this.buildTime + "', buildHash='" + this.buildHash + "', buildType='" + this.buildType + "'}";
    }
}
