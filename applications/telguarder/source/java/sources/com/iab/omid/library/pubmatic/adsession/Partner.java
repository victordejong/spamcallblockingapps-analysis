package com.iab.omid.library.pubmatic.adsession;

import com.iab.omid.library.pubmatic.p014d.C1774e;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/Partner.class */
public class Partner {
    private final String name;
    private final String version;

    private Partner(String str, String str2) {
        this.name = str;
        this.version = str2;
    }

    public static Partner createPartner(String str, String str2) {
        C1774e.m1220a(str, "Name is null or empty");
        C1774e.m1220a(str2, "Version is null or empty");
        return new Partner(str, str2);
    }

    public String getName() {
        return this.name;
    }

    public String getVersion() {
        return this.version;
    }
}
