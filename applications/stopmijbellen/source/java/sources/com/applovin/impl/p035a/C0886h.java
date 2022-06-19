package com.applovin.impl.p035a;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.StringUtils;
/* renamed from: com.applovin.impl.a.h */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/h.class */
public class C0886h {

    /* renamed from: a */
    private EnumC0887a f3331a;

    /* renamed from: b */
    private Uri f3332b;

    /* renamed from: c */
    private String f3333c;

    /* renamed from: com.applovin.impl.a.h$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/h$a.class */
    public enum EnumC0887a {
        UNSPECIFIED,
        STATIC,
        IFRAME,
        HTML
    }

    private C0886h() {
    }

    /* renamed from: a */
    public static C0886h m7135a(C1539q c1539q, C0886h c0886h, C1408l c1408l) {
        if (c1539q != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified.");
            }
            if (c0886h == null) {
                try {
                    c0886h = new C0886h();
                } catch (Throwable th) {
                    c1408l.m5542A().m5115b("VastNonVideoResource", "Error occurred while initializing", th);
                    return null;
                }
            }
            if (c0886h.f3332b == null && !StringUtils.isValidString(c0886h.f3333c)) {
                String m7134a = m7134a(c1539q, "StaticResource");
                if (URLUtil.isValidUrl(m7134a)) {
                    c0886h.f3332b = Uri.parse(m7134a);
                    c0886h.f3331a = EnumC0887a.STATIC;
                    return c0886h;
                }
                String m7134a2 = m7134a(c1539q, "IFrameResource");
                if (StringUtils.isValidString(m7134a2)) {
                    c0886h.f3331a = EnumC0887a.IFRAME;
                    if (URLUtil.isValidUrl(m7134a2)) {
                        c0886h.f3332b = Uri.parse(m7134a2);
                    } else {
                        c0886h.f3333c = m7134a2;
                    }
                    return c0886h;
                }
                String m7134a3 = m7134a(c1539q, "HTMLResource");
                if (StringUtils.isValidString(m7134a3)) {
                    c0886h.f3331a = EnumC0887a.HTML;
                    if (URLUtil.isValidUrl(m7134a3)) {
                        c0886h.f3332b = Uri.parse(m7134a3);
                    } else {
                        c0886h.f3333c = m7134a3;
                    }
                }
            }
            return c0886h;
        }
        throw new IllegalArgumentException("No node specified.");
    }

    /* renamed from: a */
    private static String m7134a(C1539q c1539q, String str) {
        C1539q m4940b = c1539q.m4940b(str);
        if (m4940b != null) {
            return m4940b.m4939c();
        }
        return null;
    }

    /* renamed from: a */
    public EnumC0887a m7137a() {
        return this.f3331a;
    }

    /* renamed from: a */
    public void m7136a(Uri uri) {
        this.f3332b = uri;
    }

    /* renamed from: a */
    public void m7133a(String str) {
        this.f3333c = str;
    }

    /* renamed from: b */
    public Uri m7132b() {
        return this.f3332b;
    }

    /* renamed from: c */
    public String m7131c() {
        return this.f3333c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0886h)) {
            return false;
        }
        C0886h c0886h = (C0886h) obj;
        if (this.f3331a != c0886h.f3331a) {
            return false;
        }
        Uri uri = this.f3332b;
        if (uri != null) {
            if (!uri.equals(c0886h.f3332b)) {
                return false;
            }
        } else if (c0886h.f3332b != null) {
            return false;
        }
        String str = this.f3333c;
        String str2 = c0886h.f3333c;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        EnumC0887a enumC0887a = this.f3331a;
        int i = 0;
        int hashCode = enumC0887a != null ? enumC0887a.hashCode() : 0;
        Uri uri = this.f3332b;
        int hashCode2 = uri != null ? uri.hashCode() : 0;
        String str = this.f3333c;
        if (str != null) {
            i = str.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastNonVideoResource{type=");
        m8752j.append(this.f3331a);
        m8752j.append(", resourceUri=");
        m8752j.append(this.f3332b);
        m8752j.append(", resourceContents='");
        m8752j.append(this.f3333c);
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
