package p000;

import java.net.URL;
/* renamed from: e41 */
/* loaded from: classes-dex2jar.jar:e41.class */
public final class e41 {

    /* renamed from: a */
    public final String f6266a;

    /* renamed from: b */
    public final URL f6267b;

    /* renamed from: c */
    public final String f6268c;

    public e41(String str, URL url, String str2) {
        this.f6266a = str;
        this.f6267b = url;
        this.f6268c = str2;
    }

    /* renamed from: a */
    public static e41 m2246a(String str, URL url, String str2) {
        b51.m5786f(str, "VendorKey is null or empty");
        b51.m5788d(url, "ResourceURL is null");
        b51.m5786f(str2, "VerificationParameters is null or empty");
        return new e41(str, url, str2);
    }

    /* renamed from: b */
    public static e41 m2245b(URL url) {
        b51.m5788d(url, "ResourceURL is null");
        return new e41(null, url, null);
    }

    /* renamed from: c */
    public URL m2244c() {
        return this.f6267b;
    }

    /* renamed from: d */
    public String m2243d() {
        return this.f6266a;
    }

    /* renamed from: e */
    public String m2242e() {
        return this.f6268c;
    }
}
