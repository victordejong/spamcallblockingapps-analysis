package com.applovin.impl.p035a;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Locale;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.a.n */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/n.class */
public class C0895n {

    /* renamed from: a */
    private Uri f3361a;

    /* renamed from: b */
    private Uri f3362b;

    /* renamed from: c */
    private EnumC0896a f3363c;

    /* renamed from: d */
    private String f3364d;

    /* renamed from: e */
    private int f3365e;

    /* renamed from: f */
    private int f3366f;

    /* renamed from: g */
    private int f3367g;

    /* renamed from: com.applovin.impl.a.n$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/n$a.class */
    public enum EnumC0896a {
        Progressive,
        Streaming
    }

    private C0895n() {
    }

    /* renamed from: a */
    private static EnumC0896a m7092a(String str) {
        if (StringUtils.isValidString(str)) {
            if ("progressive".equalsIgnoreCase(str)) {
                return EnumC0896a.Progressive;
            }
            if ("streaming".equalsIgnoreCase(str)) {
                return EnumC0896a.Streaming;
            }
        }
        return EnumC0896a.Progressive;
    }

    /* renamed from: a */
    public static C0895n m7093a(C1539q c1539q, C1408l c1408l) {
        if (c1539q != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified.");
            }
            try {
                String m4939c = c1539q.m4939c();
                if (!URLUtil.isValidUrl(m4939c)) {
                    c1408l.m5542A().m5111e("VastVideoFile", "Unable to create video file. Could not find URL.");
                    return null;
                }
                Uri parse = Uri.parse(m4939c);
                C0895n c0895n = new C0895n();
                c0895n.f3361a = parse;
                c0895n.f3362b = parse;
                c0895n.f3367g = StringUtils.parseInt(c1539q.m4941b().get("bitrate"));
                c0895n.f3363c = m7092a(c1539q.m4941b().get("delivery"));
                c0895n.f3366f = StringUtils.parseInt(c1539q.m4941b().get("height"));
                c0895n.f3365e = StringUtils.parseInt(c1539q.m4941b().get("width"));
                c0895n.f3364d = c1539q.m4941b().get("type").toLowerCase(Locale.ENGLISH);
                return c0895n;
            } catch (Throwable th) {
                c1408l.m5542A().m5115b("VastVideoFile", "Error occurred while initializing", th);
                return null;
            }
        }
        throw new IllegalArgumentException("No node specified.");
    }

    /* renamed from: a */
    public Uri m7095a() {
        return this.f3361a;
    }

    /* renamed from: a */
    public void m7094a(Uri uri) {
        this.f3362b = uri;
    }

    /* renamed from: b */
    public Uri m7091b() {
        return this.f3362b;
    }

    /* renamed from: c */
    public String m7090c() {
        return this.f3364d;
    }

    /* renamed from: d */
    public int m7089d() {
        return this.f3367g;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0895n)) {
            return false;
        }
        C0895n c0895n = (C0895n) obj;
        if (this.f3365e != c0895n.f3365e || this.f3366f != c0895n.f3366f || this.f3367g != c0895n.f3367g) {
            return false;
        }
        Uri uri = this.f3361a;
        if (uri != null) {
            if (!uri.equals(c0895n.f3361a)) {
                return false;
            }
        } else if (c0895n.f3361a != null) {
            return false;
        }
        Uri uri2 = this.f3362b;
        if (uri2 != null) {
            if (!uri2.equals(c0895n.f3362b)) {
                return false;
            }
        } else if (c0895n.f3362b != null) {
            return false;
        }
        if (this.f3363c != c0895n.f3363c) {
            return false;
        }
        String str = this.f3364d;
        String str2 = c0895n.f3364d;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Uri uri = this.f3361a;
        int i = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        Uri uri2 = this.f3362b;
        int hashCode2 = uri2 != null ? uri2.hashCode() : 0;
        EnumC0896a enumC0896a = this.f3363c;
        int hashCode3 = enumC0896a != null ? enumC0896a.hashCode() : 0;
        String str = this.f3364d;
        if (str != null) {
            i = str.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + this.f3365e) * 31) + this.f3366f) * 31) + this.f3367g;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastVideoFile{sourceVideoUri=");
        m8752j.append(this.f3361a);
        m8752j.append(", videoUri=");
        m8752j.append(this.f3362b);
        m8752j.append(", deliveryType=");
        m8752j.append(this.f3363c);
        m8752j.append(", fileType='");
        C0033h.m8882o(m8752j, this.f3364d, '\'', ", width=");
        m8752j.append(this.f3365e);
        m8752j.append(", height=");
        m8752j.append(this.f3366f);
        m8752j.append(", bitrate=");
        m8752j.append(this.f3367g);
        m8752j.append('}');
        return m8752j.toString();
    }
}
