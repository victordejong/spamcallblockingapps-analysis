package com.iab.omid.library.mopub.adsession;

import com.iab.omid.library.mopub.p127d.C2618e;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/Partner.class */
public class Partner {
    private final String name;
    private final String version;

    private Partner(String str, String str2) {
        this.name = str;
        this.version = str2;
    }

    public static Partner createPartner(String str, String str2) {
        C2618e.m36396a(str, "Name is null or empty");
        C2618e.m36396a(str2, "Version is null or empty");
        return new Partner(str, str2);
    }

    public String getName() {
        return this.name;
    }

    public String getVersion() {
        return this.version;
    }
}
