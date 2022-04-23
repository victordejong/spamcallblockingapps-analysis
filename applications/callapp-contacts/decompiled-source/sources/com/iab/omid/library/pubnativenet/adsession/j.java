package com.iab.omid.library.pubnativenet.adsession;

import com.iab.omid.library.pubnativenet.d.d;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final String f33347a;

    /* renamed from: b  reason: collision with root package name */
    public final URL f33348b;

    /* renamed from: c  reason: collision with root package name */
    public final String f33349c;

    private j(String str, URL url, String str2) {
        this.f33347a = str;
        this.f33348b = url;
        this.f33349c = str2;
    }

    public static j a(String str, URL url, String str2) {
        d.a(str, "VendorKey is null or empty");
        d.a(url, "ResourceURL is null");
        d.a(str2, "VerificationParameters is null or empty");
        return new j(str, url, str2);
    }
}
