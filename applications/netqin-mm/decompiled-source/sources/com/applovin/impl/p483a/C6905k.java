package com.applovin.impl.p483a;

import android.net.Uri;
import android.webkit.URLUtil;
import java.util.Locale;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2429t;
/* renamed from: com.applovin.impl.a.k */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/k.class */
public class C6905k {

    /* renamed from: a */
    public Uri f21157a;

    /* renamed from: b */
    public Uri f21158b;

    /* renamed from: c */
    public EnumC6906a f21159c;

    /* renamed from: d */
    public String f21160d;

    /* renamed from: e */
    public int f21161e;

    /* renamed from: f */
    public int f21162f;

    /* renamed from: g */
    public int f21163g;

    /* renamed from: com.applovin.impl.a.k$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/k$a.class */
    public enum EnumC6906a {
        Progressive,
        Streaming
    }

    /* renamed from: a */
    public static EnumC6906a m19406a(String str) {
        if (C2422o.m29851b(str)) {
            if ("progressive".equalsIgnoreCase(str)) {
                return EnumC6906a.Progressive;
            }
            if ("streaming".equalsIgnoreCase(str)) {
                return EnumC6906a.Streaming;
            }
        }
        return EnumC6906a.Progressive;
    }

    /* renamed from: a */
    public static C6905k m19407a(C2429t tVar, C2341l lVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("No node specified.");
        } else if (lVar != null) {
            try {
                String c = tVar.m29762c();
                if (URLUtil.isValidUrl(c)) {
                    Uri parse = Uri.parse(c);
                    C6905k kVar = new C6905k();
                    kVar.f21157a = parse;
                    kVar.f21158b = parse;
                    kVar.f21163g = C2422o.m29859a(tVar.m29764b().get("bitrate"));
                    kVar.f21159c = m19406a(tVar.m29764b().get("delivery"));
                    kVar.f21162f = C2422o.m29859a(tVar.m29764b().get("height"));
                    kVar.f21161e = C2422o.m29859a(tVar.m29764b().get("width"));
                    kVar.f21160d = tVar.m29764b().get("type").toLowerCase(Locale.ENGLISH);
                    return kVar;
                }
                lVar.m30262d0().m30039e("VastVideoFile", "Unable to create video file. Could not find URL.");
                return null;
            } catch (Throwable th) {
                lVar.m30262d0().m30043b("VastVideoFile", "Error occurred while initializing", th);
                return null;
            }
        } else {
            throw new IllegalArgumentException("No sdk specified.");
        }
    }

    /* renamed from: a */
    public Uri m19409a() {
        return this.f21157a;
    }

    /* renamed from: a */
    public void m19408a(Uri uri) {
        this.f21158b = uri;
    }

    /* renamed from: b */
    public Uri m19405b() {
        return this.f21158b;
    }

    /* renamed from: c */
    public boolean m19404c() {
        return this.f21159c == EnumC6906a.Streaming;
    }

    /* renamed from: d */
    public String m19403d() {
        return this.f21160d;
    }

    /* renamed from: e */
    public int m19402e() {
        return this.f21163g;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6905k)) {
            return false;
        }
        C6905k kVar = (C6905k) obj;
        if (this.f21161e != kVar.f21161e || this.f21162f != kVar.f21162f || this.f21163g != kVar.f21163g) {
            return false;
        }
        Uri uri = this.f21157a;
        if (uri != null) {
            if (!uri.equals(kVar.f21157a)) {
                return false;
            }
        } else if (kVar.f21157a != null) {
            return false;
        }
        Uri uri2 = this.f21158b;
        if (uri2 != null) {
            if (!uri2.equals(kVar.f21158b)) {
                return false;
            }
        } else if (kVar.f21158b != null) {
            return false;
        }
        if (this.f21159c != kVar.f21159c) {
            return false;
        }
        String str = this.f21160d;
        String str2 = kVar.f21160d;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Uri uri = this.f21157a;
        int i = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        Uri uri2 = this.f21158b;
        int hashCode2 = uri2 != null ? uri2.hashCode() : 0;
        EnumC6906a aVar = this.f21159c;
        int hashCode3 = aVar != null ? aVar.hashCode() : 0;
        String str = this.f21160d;
        if (str != null) {
            i = str.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + this.f21161e) * 31) + this.f21162f) * 31) + this.f21163g;
    }

    public String toString() {
        return "VastVideoFile{sourceVideoUri=" + this.f21157a + ", videoUri=" + this.f21158b + ", deliveryType=" + this.f21159c + ", fileType='" + this.f21160d + "', width=" + this.f21161e + ", height=" + this.f21162f + ", bitrate=" + this.f21163g + '}';
    }
}
