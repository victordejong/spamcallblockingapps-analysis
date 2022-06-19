package com.iab.omid.library.verizonmedia.adsession;

import com.iab.omid.library.verizonmedia.p450d.C16514d;
import java.net.URL;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.j */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/j.class */
public final class C16491j {

    /* renamed from: a */
    public final String f58039a;

    /* renamed from: b */
    public final URL f58040b;

    /* renamed from: c */
    public final String f58041c;

    private C16491j(String str, URL url, String str2) {
        this.f58039a = str;
        this.f58040b = url;
        this.f58041c = str2;
    }

    /* renamed from: a */
    public static C16491j m7156a(String str, URL url, String str2) {
        C16514d.m7101a(str, "VendorKey is null or empty");
        C16514d.m7102a(url, "ResourceURL is null");
        C16514d.m7101a(str2, "VerificationParameters is null or empty");
        return new C16491j(str, url, str2);
    }

    /* renamed from: a */
    public static C16491j m7155a(URL url) {
        C16514d.m7102a(url, "ResourceURL is null");
        return new C16491j(null, url, null);
    }
}
