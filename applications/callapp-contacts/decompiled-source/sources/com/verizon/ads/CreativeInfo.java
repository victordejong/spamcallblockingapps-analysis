package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/CreativeInfo.class */
public class CreativeInfo {

    /* renamed from: a  reason: collision with root package name */
    private final String f35272a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35273b;

    public CreativeInfo(String str, String str2) {
        this.f35272a = str;
        this.f35273b = str2;
    }

    public String getCreativeId() {
        return this.f35272a;
    }

    public String getDemandSource() {
        return this.f35273b;
    }

    public String toString() {
        return "CreativeInfo{id='" + this.f35272a + "', demandSource='" + this.f35273b + "'}";
    }
}
