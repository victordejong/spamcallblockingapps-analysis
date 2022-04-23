package com.applovin.impl.p483a;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p137a.C2032b;
import p131c.p135b.p136a.p137a.C2034d;
import p131c.p135b.p136a.p137a.C2036f;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2386e;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2429t;
/* renamed from: com.applovin.impl.a.j */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/j.class */
public class C6902j {

    /* renamed from: a */
    public List<C6905k> f21146a;

    /* renamed from: b */
    public List<String> f21147b;

    /* renamed from: c */
    public int f21148c;

    /* renamed from: d */
    public Uri f21149d;

    /* renamed from: e */
    public final Set<C2034d> f21150e = new HashSet();

    /* renamed from: f */
    public final Map<String, Set<C2034d>> f21151f = new HashMap();

    /* renamed from: com.applovin.impl.a.j$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/j$a.class */
    public enum EnumC6903a {
        UNSPECIFIED,
        LOW,
        MEDIUM,
        HIGH
    }

    /* renamed from: com.applovin.impl.a.j$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/j$b.class */
    public class C6904b implements Comparator<C6905k> {
        public C6904b(C6902j jVar) {
        }

        /* renamed from: a */
        public int compare(C6905k kVar, C6905k kVar2) {
            return Integer.compare(kVar.m19402e(), kVar2.m19402e());
        }
    }

    public C6902j() {
        List list = Collections.EMPTY_LIST;
        this.f21146a = list;
        this.f21147b = list;
    }

    public C6902j(C2032b bVar) {
        List list = Collections.EMPTY_LIST;
        this.f21146a = list;
        this.f21147b = list;
        this.f21147b = bVar.m31234h();
    }

    /* renamed from: a */
    public static int m19415a(String str, C2341l lVar) {
        try {
            List<String> a = C2386e.m29981a(str, ":");
            if (a.size() != 3) {
                return 0;
            }
            return (int) (TimeUnit.HOURS.toSeconds(C2422o.m29859a(a.get(0))) + TimeUnit.MINUTES.toSeconds(C2422o.m29859a(a.get(1))) + C2422o.m29859a(a.get(2)));
        } catch (Throwable th) {
            C2374t d0 = lVar.m30262d0();
            d0.m30039e("VastVideoCreative", "Unable to parse duration from \"" + str + "\"");
            return 0;
        }
    }

    /* renamed from: a */
    public static C6902j m19417a(C2429t tVar, C6902j jVar, C2032b bVar, C2341l lVar) {
        C2429t b;
        List<C6905k> a;
        C2429t b2;
        int a2;
        if (tVar == null) {
            throw new IllegalArgumentException("No node specified.");
        } else if (bVar == null) {
            throw new IllegalArgumentException("No context specified.");
        } else if (lVar != null) {
            if (jVar == null) {
                try {
                    jVar = new C6902j(bVar);
                } catch (Throwable th) {
                    lVar.m30262d0().m30043b("VastVideoCreative", "Error occurred while initializing", th);
                    return null;
                }
            }
            if (jVar.f21148c == 0 && (b2 = tVar.m29763b("Duration")) != null && (a2 = m19415a(b2.m29762c(), lVar)) > 0) {
                jVar.f21148c = a2;
            }
            C2429t b3 = tVar.m29763b("MediaFiles");
            if (!(b3 == null || (a = m19418a(b3, lVar)) == null || a.size() <= 0)) {
                if (jVar.f21146a != null) {
                    a.addAll(jVar.f21146a);
                }
                jVar.f21146a = a;
            }
            C2429t b4 = tVar.m29763b("VideoClicks");
            if (b4 != null) {
                if (jVar.f21149d == null && (b = b4.m29763b("ClickThrough")) != null) {
                    String c = b.m29762c();
                    if (C2422o.m29851b(c)) {
                        jVar.f21149d = Uri.parse(c);
                    }
                }
                C2036f.m31216a(b4.m29765a("ClickTracking"), jVar.f21150e, bVar, lVar);
            }
            C2036f.m31219a(tVar, jVar.f21151f, bVar, lVar);
            return jVar;
        } else {
            throw new IllegalArgumentException("No sdk specified.");
        }
    }

    /* renamed from: a */
    public static List<C6905k> m19418a(C2429t tVar, C2341l lVar) {
        List<C2429t> a = tVar.m29765a("MediaFile");
        ArrayList arrayList = new ArrayList(a.size());
        List<String> a2 = C2386e.m29982a((String) lVar.m30291a(C2251d.C2256e.f8561K3));
        List<String> a3 = C2386e.m29982a((String) lVar.m30291a(C2251d.C2256e.f8556J3));
        for (C2429t tVar2 : a) {
            C6905k a4 = C6905k.m19407a(tVar2, lVar);
            if (a4 != null) {
                try {
                    String d = a4.m19403d();
                    if (!C2422o.m29851b(d) || a2.contains(d)) {
                        if (((Boolean) lVar.m30291a(C2251d.C2256e.f8566L3)).booleanValue()) {
                            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(a4.m19405b().toString());
                            if (C2422o.m29851b(fileExtensionFromUrl) && !a3.contains(fileExtensionFromUrl)) {
                            }
                        }
                        C2374t d0 = lVar.m30262d0();
                        d0.m30040d("VastVideoCreative", "Video file not supported: " + a4);
                    }
                    arrayList.add(a4);
                } catch (Throwable th) {
                    C2374t d02 = lVar.m30262d0();
                    d02.m30043b("VastVideoCreative", "Failed to validate video file: " + a4, th);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public C6905k m19416a(EnumC6903a aVar) {
        List<C6905k> list = this.f21146a;
        if (list == null || list.size() == 0) {
            return null;
        }
        List arrayList = new ArrayList(3);
        for (String str : this.f21147b) {
            for (C6905k kVar : this.f21146a) {
                String d = kVar.m19403d();
                if (C2422o.m29851b(d) && str.equalsIgnoreCase(d)) {
                    arrayList.add(kVar);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = this.f21146a;
        }
        if (C2388g.m29972c()) {
            Collections.sort(arrayList, new C6904b(this));
        }
        return (C6905k) arrayList.get(aVar == EnumC6903a.LOW ? 0 : aVar == EnumC6903a.MEDIUM ? arrayList.size() / 2 : arrayList.size() - 1);
    }

    /* renamed from: a */
    public List<C6905k> m19419a() {
        return this.f21146a;
    }

    /* renamed from: b */
    public int m19414b() {
        return this.f21148c;
    }

    /* renamed from: c */
    public Uri m19413c() {
        return this.f21149d;
    }

    /* renamed from: d */
    public Set<C2034d> m19412d() {
        return this.f21150e;
    }

    /* renamed from: e */
    public Map<String, Set<C2034d>> m19411e() {
        return this.f21151f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6902j)) {
            return false;
        }
        C6902j jVar = (C6902j) obj;
        if (this.f21148c != jVar.f21148c) {
            return false;
        }
        List<C6905k> list = this.f21146a;
        if (list != null) {
            if (!list.equals(jVar.f21146a)) {
                return false;
            }
        } else if (jVar.f21146a != null) {
            return false;
        }
        Uri uri = this.f21149d;
        if (uri != null) {
            if (!uri.equals(jVar.f21149d)) {
                return false;
            }
        } else if (jVar.f21149d != null) {
            return false;
        }
        Set<C2034d> set = this.f21150e;
        if (set != null) {
            if (!set.equals(jVar.f21150e)) {
                return false;
            }
        } else if (jVar.f21150e != null) {
            return false;
        }
        Map<String, Set<C2034d>> map = this.f21151f;
        Map<String, Set<C2034d>> map2 = jVar.f21151f;
        if (map != null) {
            z = map.equals(map2);
        } else if (map2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        List<C6905k> list = this.f21146a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        int i2 = this.f21148c;
        Uri uri = this.f21149d;
        int hashCode2 = uri != null ? uri.hashCode() : 0;
        Set<C2034d> set = this.f21150e;
        int hashCode3 = set != null ? set.hashCode() : 0;
        Map<String, Set<C2034d>> map = this.f21151f;
        if (map != null) {
            i = map.hashCode();
        }
        return (((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        return "VastVideoCreative{videoFiles=" + this.f21146a + ", durationSeconds=" + this.f21148c + ", destinationUri=" + this.f21149d + ", clickTrackers=" + this.f21150e + ", eventTrackers=" + this.f21151f + '}';
    }
}
