package com.iab.omid.library.applovin.adsession;

import com.iab.omid.library.applovin.p062d.C1950e;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/adsession/Partner.class */
public class Partner {
    private final String name;
    private final String version;

    private Partner(String str, String str2) {
        this.name = str;
        this.version = str2;
    }

    public static Partner createPartner(String str, String str2) {
        C1950e.m4081a(str, "Name is null or empty");
        C1950e.m4081a(str2, "Version is null or empty");
        return new Partner(str, str2);
    }

    public String getName() {
        return this.name;
    }

    public String getVersion() {
        return this.version;
    }
}
