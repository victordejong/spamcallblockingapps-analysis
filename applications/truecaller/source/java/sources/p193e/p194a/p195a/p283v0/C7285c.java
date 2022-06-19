package p193e.p194a.p195a.p283v0;

import android.util.Patterns;
import android.webkit.URLUtil;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.linkpreviews.LinkMetaData;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p244k.p245a.p248g2.AbstractC6559a;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.a.v0.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/v0/c.class */
public final class C7285c implements AbstractC7283a {

    /* renamed from: a */
    public final LinkedHashMap<String, LinkMetaData> f23258a = new C7287b(10);

    /* renamed from: b */
    public final AbstractC19462a f23259b;

    /* renamed from: c */
    public final AbstractC6559a f23260c;

    @e(c = "com.truecaller.messaging.linkpreviews.LinkMetaDataExtractorImpl", f = "LinkMetaDataExtractor.kt", l = {51}, m = "extractMetadata")
    /* renamed from: e.a.a.v0.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/v0/c$a.class */
    public static final class C7286a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23261d;

        /* renamed from: e */
        public int f23262e;

        /* renamed from: g */
        public Object f23264g;

        /* renamed from: h */
        public Object f23265h;

        /* renamed from: i */
        public Object f23266i;

        /* renamed from: j */
        public Object f23267j;

        /* renamed from: k */
        public Object f23268k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7286a(d dVar) {
            super(dVar);
            C7285c.this = r4;
        }

        /* renamed from: s */
        public final Object m29850s(Object obj) {
            this.f23261d = obj;
            this.f23262e |= Integer.MIN_VALUE;
            return C7285c.this.mo29853c(null, null, this);
        }
    }

    /* renamed from: e.a.a.v0.c$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/v0/c$b.class */
    public static final class C7287b extends LinkedHashMap<String, LinkMetaData> {
        public C7287b(int i) {
            super(i);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof String) {
                return super.containsKey((String) obj);
            }
            return false;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof LinkMetaData) {
                return super.containsValue((LinkMetaData) obj);
            }
            return false;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Object get(Object obj) {
            if (obj instanceof String) {
                return (LinkMetaData) super.get((String) obj);
            }
            return null;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
        public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
            return obj instanceof String ? (LinkMetaData) super.getOrDefault((String) obj, (LinkMetaData) obj2) : obj2;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Object remove(Object obj) {
            if (obj instanceof String) {
                return (LinkMetaData) super.remove((String) obj);
            }
            return null;
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if (!(obj instanceof String) || !(obj2 instanceof LinkMetaData)) {
                return false;
            }
            return super.remove((String) obj, (LinkMetaData) obj2);
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, LinkMetaData> entry) {
            return super.size() > 20;
        }
    }

    @Inject
    public C7285c(AbstractC19462a abstractC19462a, AbstractC6559a abstractC6559a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC6559a, "previewManager");
        this.f23259b = abstractC19462a;
        this.f23260c = abstractC6559a;
    }

    @Override // p193e.p194a.p195a.p283v0.AbstractC7283a
    /* renamed from: a */
    public List<k<String, Integer>> mo29855a(String str) {
        l.e(str, "text");
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Patterns.WEB_URL.matcher(str);
        l.d(matcher, "Patterns.WEB_URL.matcher(text)");
        while (matcher.find()) {
            String group = matcher.group();
            if (!URLUtil.isValidUrl(group)) {
                group = null;
            }
            if (group != null) {
                arrayList.add(new k(group, Integer.valueOf(matcher.start())));
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p195a.p283v0.AbstractC7283a
    /* renamed from: b */
    public k<String, Integer> mo29854b(String str) {
        String str2;
        l.e(str, "text");
        Matcher matcher = Patterns.WEB_URL.matcher(str);
        l.d(matcher, "Patterns.WEB_URL.matcher(text)");
        do {
            str2 = null;
            if (!matcher.find()) {
                return null;
            }
            String group = matcher.group();
            if (URLUtil.isValidUrl(group)) {
                str2 = group;
            }
        } while (str2 == null);
        return new k<>(str2, Integer.valueOf(matcher.start()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x01d5, code lost:
        if (r0.length() == 0) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x025b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00fe -> B:80:0x0253). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x0142 -> B:36:0x0145). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x014b -> B:38:0x0151). Please submit an issue!!! */
    @Override // p193e.p194a.p195a.p283v0.AbstractC7283a
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo29853c(java.lang.String r9, java.lang.Long r10, s1.w.d<? super com.truecaller.messaging.linkpreviews.LinkMetaData> r11) {
        /*
            Method dump skipped, instructions count: 615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p283v0.C7285c.mo29853c(java.lang.String, java.lang.Long, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p283v0.AbstractC7283a
    /* renamed from: d */
    public Object mo29852d(LinkMetaData linkMetaData, d<? super s> dVar) {
        a put = this.f23258a.put(linkMetaData.f13534a, linkMetaData);
        return put == a.a ? put : s.a;
    }

    /* renamed from: e */
    public final void m29851e(String str) {
        AbstractC19462a abstractC19462a = this.f23259b;
        LinkedHashMap m8655X = C22128a.m8655X("ImLinkPreview", "type");
        C22128a.m8684N0("ImLinkPreview", C22128a.m8652Y("action", AnalyticsConstants.NAME, str, "value", m8655X, "action", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }
}
