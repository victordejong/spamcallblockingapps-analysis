package com.iab.omid.library.pubnativenet.adsession;

import com.iab.omid.library.pubnativenet.p441d.C16448d;
import java.net.URL;
/* renamed from: com.iab.omid.library.pubnativenet.adsession.j */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/j.class */
public final class C16426j {

    /* renamed from: a */
    public final String f57910a;

    /* renamed from: b */
    public final URL f57911b;

    /* renamed from: c */
    public final String f57912c;

    private C16426j(String str, URL url, String str2) {
        this.f57910a = str;
        this.f57911b = url;
        this.f57912c = str2;
    }

    /* renamed from: a */
    public static C16426j m7276a(String str, URL url, String str2) {
        C16448d.m7222a(str, "VendorKey is null or empty");
        C16448d.m7223a(url, "ResourceURL is null");
        C16448d.m7222a(str2, "VerificationParameters is null or empty");
        return new C16426j(str, url, str2);
    }
}
