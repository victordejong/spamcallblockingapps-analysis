package com.applovin.impl.p035a;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.applovin.impl.a.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/d.class */
public class C0882d {

    /* renamed from: a */
    private int f3298a;

    /* renamed from: b */
    private int f3299b;

    /* renamed from: c */
    private Uri f3300c;

    /* renamed from: d */
    private C0886h f3301d;

    /* renamed from: e */
    private Set<C0889j> f3302e = new HashSet();

    /* renamed from: f */
    private Map<String, Set<C0889j>> f3303f = new HashMap();

    private C0882d() {
    }

    /* renamed from: a */
    public static C0882d m7153a(C1539q c1539q, C0882d c0882d, C0883e c0883e, C1408l c1408l) {
        C1539q m4940b;
        if (c1539q != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified.");
            }
            if (c0882d == null) {
                try {
                    c0882d = new C0882d();
                } catch (Throwable th) {
                    c1408l.m5542A().m5115b("VastCompanionAd", "Error occurred while initializing", th);
                    return null;
                }
            }
            if (c0882d.f3298a == 0 && c0882d.f3299b == 0) {
                int parseInt = StringUtils.parseInt(c1539q.m4941b().get("width"));
                int parseInt2 = StringUtils.parseInt(c1539q.m4941b().get("height"));
                if (parseInt > 0 && parseInt2 > 0) {
                    c0882d.f3298a = parseInt;
                    c0882d.f3299b = parseInt2;
                }
            }
            c0882d.f3301d = C0886h.m7135a(c1539q, c0882d.f3301d, c1408l);
            if (c0882d.f3300c == null && (m4940b = c1539q.m4940b("CompanionClickThrough")) != null) {
                String m4939c = m4940b.m4939c();
                if (StringUtils.isValidString(m4939c)) {
                    c0882d.f3300c = Uri.parse(m4939c);
                }
            }
            C0891l.m7114a(c1539q.m4942a("CompanionClickTracking"), c0882d.f3302e, c0883e, c1408l);
            C0891l.m7116a(c1539q, c0882d.f3303f, c0883e, c1408l);
            return c0882d;
        }
        throw new IllegalArgumentException("No node specified.");
    }

    /* renamed from: a */
    public Uri m7154a() {
        return this.f3300c;
    }

    /* renamed from: b */
    public C0886h m7152b() {
        return this.f3301d;
    }

    /* renamed from: c */
    public Set<C0889j> m7151c() {
        return this.f3302e;
    }

    /* renamed from: d */
    public Map<String, Set<C0889j>> m7150d() {
        return this.f3303f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0882d)) {
            return false;
        }
        C0882d c0882d = (C0882d) obj;
        if (this.f3298a != c0882d.f3298a || this.f3299b != c0882d.f3299b) {
            return false;
        }
        Uri uri = this.f3300c;
        if (uri != null) {
            if (!uri.equals(c0882d.f3300c)) {
                return false;
            }
        } else if (c0882d.f3300c != null) {
            return false;
        }
        C0886h c0886h = this.f3301d;
        if (c0886h != null) {
            if (!c0886h.equals(c0882d.f3301d)) {
                return false;
            }
        } else if (c0882d.f3301d != null) {
            return false;
        }
        Set<C0889j> set = this.f3302e;
        if (set != null) {
            if (!set.equals(c0882d.f3302e)) {
                return false;
            }
        } else if (c0882d.f3302e != null) {
            return false;
        }
        Map<String, Set<C0889j>> map = this.f3303f;
        Map<String, Set<C0889j>> map2 = c0882d.f3303f;
        if (map != null) {
            z = map.equals(map2);
        } else if (map2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f3298a;
        int i2 = this.f3299b;
        Uri uri = this.f3300c;
        int i3 = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        C0886h c0886h = this.f3301d;
        int hashCode2 = c0886h != null ? c0886h.hashCode() : 0;
        Set<C0889j> set = this.f3302e;
        int hashCode3 = set != null ? set.hashCode() : 0;
        Map<String, Set<C0889j>> map = this.f3303f;
        if (map != null) {
            i3 = map.hashCode();
        }
        return (((((((((i * 31) + i2) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastCompanionAd{width=");
        m8752j.append(this.f3298a);
        m8752j.append(", height=");
        m8752j.append(this.f3299b);
        m8752j.append(", destinationUri=");
        m8752j.append(this.f3300c);
        m8752j.append(", nonVideoResource=");
        m8752j.append(this.f3301d);
        m8752j.append(", clickTrackers=");
        m8752j.append(this.f3302e);
        m8752j.append(", eventTrackers=");
        m8752j.append(this.f3303f);
        m8752j.append('}');
        return m8752j.toString();
    }
}
