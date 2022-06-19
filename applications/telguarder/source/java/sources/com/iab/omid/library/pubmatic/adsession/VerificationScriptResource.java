package com.iab.omid.library.pubmatic.adsession;

import com.iab.omid.library.pubmatic.p014d.C1774e;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/VerificationScriptResource.class */
public final class VerificationScriptResource {
    private final URL resourceUrl;
    private final String vendorKey;
    private final String verificationParameters;

    private VerificationScriptResource(String str, URL url, String str2) {
        this.vendorKey = str;
        this.resourceUrl = url;
        this.verificationParameters = str2;
    }

    public static VerificationScriptResource createVerificationScriptResourceWithParameters(String str, URL url, String str2) {
        C1774e.m1220a(str, "VendorKey is null or empty");
        C1774e.m1222a(url, "ResourceURL is null");
        C1774e.m1220a(str2, "VerificationParameters is null or empty");
        return new VerificationScriptResource(str, url, str2);
    }

    public static VerificationScriptResource createVerificationScriptResourceWithoutParameters(URL url) {
        C1774e.m1222a(url, "ResourceURL is null");
        return new VerificationScriptResource(null, url, null);
    }

    public URL getResourceUrl() {
        return this.resourceUrl;
    }

    public String getVendorKey() {
        return this.vendorKey;
    }

    public String getVerificationParameters() {
        return this.verificationParameters;
    }
}
