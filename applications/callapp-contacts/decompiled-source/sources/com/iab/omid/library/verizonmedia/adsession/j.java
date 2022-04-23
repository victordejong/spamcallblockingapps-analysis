package com.iab.omid.library.verizonmedia.adsession;

import com.iab.omid.library.verizonmedia.d.d;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final String f33442a;

    /* renamed from: b  reason: collision with root package name */
    public final URL f33443b;

    /* renamed from: c  reason: collision with root package name */
    public final String f33444c;

    private j(String str, URL url, String str2) {
        this.f33442a = str;
        this.f33443b = url;
        this.f33444c = str2;
    }

    public static j a(String str, URL url, String str2) {
        d.a(str, "VendorKey is null or empty");
        d.a(url, "ResourceURL is null");
        d.a(str2, "VerificationParameters is null or empty");
        return new j(str, url, str2);
    }

    public static j a(URL url) {
        d.a(url, "ResourceURL is null");
        return new j(null, url, null);
    }
}
