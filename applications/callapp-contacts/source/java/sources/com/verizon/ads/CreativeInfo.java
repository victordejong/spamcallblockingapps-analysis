package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/CreativeInfo.class */
public class CreativeInfo {

    /* renamed from: a */
    private final String f61160a;

    /* renamed from: b */
    private final String f61161b;

    public CreativeInfo(String str, String str2) {
        this.f61160a = str;
        this.f61161b = str2;
    }

    public String getCreativeId() {
        return this.f61160a;
    }

    public String getDemandSource() {
        return this.f61161b;
    }

    public String toString() {
        return "CreativeInfo{id='" + this.f61160a + "', demandSource='" + this.f61161b + "'}";
    }
}
