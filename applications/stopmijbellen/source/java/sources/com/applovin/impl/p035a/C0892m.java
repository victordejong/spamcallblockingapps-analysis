package com.applovin.impl.p035a;

import android.annotation.TargetApi;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.webkit.MimeTypeMap;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.a.m */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/m.class */
public class C0892m {

    /* renamed from: a */
    private List<C0895n> f3349a;

    /* renamed from: b */
    private List<String> f3350b;

    /* renamed from: c */
    private int f3351c;

    /* renamed from: d */
    private Uri f3352d;

    /* renamed from: e */
    private final Set<C0889j> f3353e;

    /* renamed from: f */
    private final Map<String, Set<C0889j>> f3354f;

    /* renamed from: com.applovin.impl.a.m$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/m$a.class */
    public enum EnumC0894a {
        UNSPECIFIED,
        LOW,
        MEDIUM,
        HIGH
    }

    private C0892m() {
        this.f3349a = Collections.emptyList();
        this.f3350b = Collections.emptyList();
        this.f3353e = new HashSet();
        this.f3354f = new HashMap();
    }

    private C0892m(C0883e c0883e) {
        this.f3349a = Collections.emptyList();
        this.f3350b = Collections.emptyList();
        this.f3353e = new HashSet();
        this.f3354f = new HashMap();
        this.f3350b = c0883e.m7143g();
    }

    /* renamed from: a */
    private static int m7101a(String str, C1408l c1408l) {
        try {
            List<String> explode = CollectionUtils.explode(str, ":");
            if (explode.size() != 3) {
                return 0;
            }
            return (int) (TimeUnit.HOURS.toSeconds(StringUtils.parseInt(explode.get(0))) + TimeUnit.MINUTES.toSeconds(StringUtils.parseInt(explode.get(1))) + StringUtils.parseInt(explode.get(2)));
        } catch (Throwable th) {
            C1479t m5542A = c1408l.m5542A();
            m5542A.m5111e("VastVideoCreative", "Unable to parse duration from \"" + str + "\"");
            return 0;
        }
    }

    /* renamed from: a */
    public static C0892m m7103a(C1539q c1539q, C0892m c0892m, C0883e c0883e, C1408l c1408l) {
        C1539q m4940b;
        List<C0895n> m7102a;
        C1539q m4940b2;
        int m7101a;
        if (c1539q != null) {
            if (c0883e == null) {
                throw new IllegalArgumentException("No context specified.");
            }
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified.");
            }
            if (c0892m == null) {
                try {
                    c0892m = new C0892m(c0883e);
                } catch (Throwable th) {
                    c1408l.m5542A().m5115b("VastVideoCreative", "Error occurred while initializing", th);
                    return null;
                }
            }
            if (c0892m.f3351c == 0 && (m4940b2 = c1539q.m4940b("Duration")) != null && (m7101a = m7101a(m4940b2.m4939c(), c1408l)) > 0) {
                c0892m.f3351c = m7101a;
            }
            C1539q m4940b3 = c1539q.m4940b("MediaFiles");
            if (m4940b3 != null && (m7102a = m7102a(m4940b3, c1408l)) != null && m7102a.size() > 0) {
                List<C0895n> list = c0892m.f3349a;
                if (list != null) {
                    m7102a.addAll(list);
                }
                c0892m.f3349a = m7102a;
            }
            C1539q m4940b4 = c1539q.m4940b("VideoClicks");
            if (m4940b4 != null) {
                if (c0892m.f3352d == null && (m4940b = m4940b4.m4940b("ClickThrough")) != null) {
                    String m4939c = m4940b.m4939c();
                    if (StringUtils.isValidString(m4939c)) {
                        c0892m.f3352d = Uri.parse(m4939c);
                    }
                }
                C0891l.m7114a(m4940b4.m4942a("ClickTracking"), c0892m.f3353e, c0883e, c1408l);
            }
            C0891l.m7116a(c1539q, c0892m.f3354f, c0883e, c1408l);
            return c0892m;
        }
        throw new IllegalArgumentException("No node specified.");
    }

    /* renamed from: a */
    private static List<C0895n> m7102a(C1539q c1539q, C1408l c1408l) {
        List<C1539q> m4942a = c1539q.m4942a("MediaFile");
        ArrayList arrayList = new ArrayList(m4942a.size());
        List<String> explode = CollectionUtils.explode((String) c1408l.m5511a(C1314b.f4958ek));
        List<String> explode2 = CollectionUtils.explode((String) c1408l.m5511a(C1314b.f4957ej));
        for (C1539q c1539q2 : m4942a) {
            C0895n m7093a = C0895n.m7093a(c1539q2, c1408l);
            if (m7093a != null) {
                try {
                    String m7090c = m7093a.m7090c();
                    if (!StringUtils.isValidString(m7090c) || explode.contains(m7090c)) {
                        if (((Boolean) c1408l.m5511a(C1314b.f4959el)).booleanValue()) {
                            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(m7093a.m7091b().toString());
                            if (StringUtils.isValidString(fileExtensionFromUrl) && !explode2.contains(fileExtensionFromUrl)) {
                            }
                        }
                        C1479t m5542A = c1408l.m5542A();
                        m5542A.m5112d("VastVideoCreative", "Video file not supported: " + m7093a);
                    }
                    arrayList.add(m7093a);
                } catch (Throwable th) {
                    C1479t m5542A2 = c1408l.m5542A();
                    m5542A2.m5115b("VastVideoCreative", "Failed to validate video file: " + m7093a, th);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [java.util.List<com.applovin.impl.a.n>] */
    /* renamed from: a */
    public C0895n m7104a(EnumC0894a enumC0894a) {
        List<C0895n> list = this.f3349a;
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(3);
        for (String str : this.f3350b) {
            for (C0895n c0895n : this.f3349a) {
                String m7090c = c0895n.m7090c();
                if (StringUtils.isValidString(m7090c) && str.equalsIgnoreCase(m7090c)) {
                    arrayList.add(c0895n);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = this.f3349a;
        }
        if (C1492g.m5072c()) {
            Collections.sort(arrayList, new Comparator<C0895n>() { // from class: com.applovin.impl.a.m.1
                @TargetApi(19)
                /* renamed from: a */
                public int compare(C0895n c0895n2, C0895n c0895n3) {
                    return Integer.compare(c0895n2.m7089d(), c0895n3.m7089d());
                }
            });
        }
        return (C0895n) arrayList.get(enumC0894a == EnumC0894a.LOW ? 0 : enumC0894a == EnumC0894a.MEDIUM ? arrayList.size() / 2 : arrayList.size() - 1);
    }

    /* renamed from: a */
    public List<C0895n> m7105a() {
        return this.f3349a;
    }

    /* renamed from: b */
    public int m7100b() {
        return this.f3351c;
    }

    /* renamed from: c */
    public Uri m7099c() {
        return this.f3352d;
    }

    /* renamed from: d */
    public Set<C0889j> m7098d() {
        return this.f3353e;
    }

    /* renamed from: e */
    public Map<String, Set<C0889j>> m7097e() {
        return this.f3354f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0892m)) {
            return false;
        }
        C0892m c0892m = (C0892m) obj;
        if (this.f3351c != c0892m.f3351c) {
            return false;
        }
        List<C0895n> list = this.f3349a;
        if (list != null) {
            if (!list.equals(c0892m.f3349a)) {
                return false;
            }
        } else if (c0892m.f3349a != null) {
            return false;
        }
        Uri uri = this.f3352d;
        if (uri != null) {
            if (!uri.equals(c0892m.f3352d)) {
                return false;
            }
        } else if (c0892m.f3352d != null) {
            return false;
        }
        Set<C0889j> set = this.f3353e;
        if (set != null) {
            if (!set.equals(c0892m.f3353e)) {
                return false;
            }
        } else if (c0892m.f3353e != null) {
            return false;
        }
        Map<String, Set<C0889j>> map = this.f3354f;
        Map<String, Set<C0889j>> map2 = c0892m.f3354f;
        if (map != null) {
            z = map.equals(map2);
        } else if (map2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        List<C0895n> list = this.f3349a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        int i2 = this.f3351c;
        Uri uri = this.f3352d;
        int hashCode2 = uri != null ? uri.hashCode() : 0;
        Set<C0889j> set = this.f3353e;
        int hashCode3 = set != null ? set.hashCode() : 0;
        Map<String, Set<C0889j>> map = this.f3354f;
        if (map != null) {
            i = map.hashCode();
        }
        return (((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastVideoCreative{videoFiles=");
        m8752j.append(this.f3349a);
        m8752j.append(", durationSeconds=");
        m8752j.append(this.f3351c);
        m8752j.append(", destinationUri=");
        m8752j.append(this.f3352d);
        m8752j.append(", clickTrackers=");
        m8752j.append(this.f3353e);
        m8752j.append(", eventTrackers=");
        m8752j.append(this.f3354f);
        m8752j.append('}');
        return m8752j.toString();
    }
}
