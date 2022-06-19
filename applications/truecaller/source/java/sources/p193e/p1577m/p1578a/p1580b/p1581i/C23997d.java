package p193e.p1577m.p1578a.p1580b.p1581i;

import android.content.Context;
import android.net.ConnectivityManager;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import e.m.d.r.a;
import e.m.d.r.j.d;
import e.m.d.r.j.e;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.C23987b;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24000a;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24020o;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24021p;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24025r;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24027t;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24001b;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24002c;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24003d;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24004e;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24005f;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24006g;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24007h;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24009i;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24010j;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24012k;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24015l;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24018n;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.EnumC24030u;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n;
import p193e.p1577m.p1578a.p1580b.p1583j.C24150m;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24172f;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24173g;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24181m;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24166a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24168b;
/* renamed from: e.m.a.b.i.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/d.class */
public final class C23997d implements AbstractC24181m {

    /* renamed from: a */
    public final a f66478a;

    /* renamed from: b */
    public final ConnectivityManager f66479b;

    /* renamed from: c */
    public final Context f66480c;

    /* renamed from: e */
    public final AbstractC24130a f66482e;

    /* renamed from: f */
    public final AbstractC24130a f66483f;

    /* renamed from: d */
    public final URL f66481d = m5628c(C23996c.f66471c);

    /* renamed from: g */
    public final int f66484g = 40000;

    /* renamed from: e.m.a.b.i.d$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/i/d$a.class */
    public static final class C23998a {

        /* renamed from: a */
        public final URL f66485a;

        /* renamed from: b */
        public final AbstractC24020o f66486b;

        /* renamed from: c */
        public final String f66487c;

        public C23998a(URL url, AbstractC24020o abstractC24020o, String str) {
            this.f66485a = url;
            this.f66486b = abstractC24020o;
            this.f66487c = str;
        }
    }

    /* renamed from: e.m.a.b.i.d$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/i/d$b.class */
    public static final class C23999b {

        /* renamed from: a */
        public final int f66488a;

        /* renamed from: b */
        public final URL f66489b;

        /* renamed from: c */
        public final long f66490c;

        public C23999b(int i, URL url, long j) {
            this.f66488a = i;
            this.f66489b = url;
            this.f66490c = j;
        }
    }

    public C23997d(Context context, AbstractC24130a abstractC24130a, AbstractC24130a abstractC24130a2) {
        e eVar = new e();
        C24002c c24002c = C24002c.f66504a;
        eVar.registerEncoder(AbstractC24020o.class, c24002c);
        eVar.registerEncoder(C24009i.class, c24002c);
        C24005f c24005f = C24005f.f66517a;
        eVar.registerEncoder(AbstractC24025r.class, c24005f);
        eVar.registerEncoder(C24015l.class, c24005f);
        C24003d c24003d = C24003d.f66506a;
        eVar.registerEncoder(AbstractC24021p.class, c24003d);
        eVar.registerEncoder(C24010j.class, c24003d);
        C24001b c24001b = C24001b.f66491a;
        eVar.registerEncoder(AbstractC24000a.class, c24001b);
        eVar.registerEncoder(C24007h.class, c24001b);
        C24004e c24004e = C24004e.f66509a;
        eVar.registerEncoder(AbstractC24023q.class, c24004e);
        eVar.registerEncoder(C24012k.class, c24004e);
        C24006g c24006g = C24006g.f66525a;
        eVar.registerEncoder(AbstractC24027t.class, c24006g);
        eVar.registerEncoder(C24018n.class, c24006g);
        eVar.d = true;
        this.f66478a = new d(eVar);
        this.f66480c = context;
        this.f66479b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f66482e = abstractC24130a2;
        this.f66483f = abstractC24130a;
    }

    /* renamed from: c */
    public static URL m5628c(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(C22128a.m8543z2("Invalid url: ", str), e);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:2|(1:4)(1:5)|6|(1:8)(7:9|(1:11)(1:12)|15|21|16|19|20)|14|15|21|16|19|20) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x011e, code lost:
        if (p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24027t.EnumC24028a.f66591w.get(r8) != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0199, code lost:
        p1727n3.p1789g0.C26232y.m2479C0("CctTransportBackend");
        r8 = -1;
     */
    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24181m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n mo5504a(p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n r6) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1580b.p1581i.C23997d.mo5504a(e.m.a.b.j.n):e.m.a.b.j.n");
    }

    /* JADX WARN: Type inference failed for: r0v174, types: [long] */
    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24181m
    /* renamed from: b */
    public AbstractC24173g mo5503b(AbstractC24172f abstractC24172f) {
        String str;
        Integer num;
        C24012k.C24014b c24014b;
        AbstractC24173g.EnumC24174a enumC24174a = AbstractC24173g.EnumC24174a.TRANSIENT_ERROR;
        HashMap hashMap = new HashMap();
        C24166a c24166a = (C24166a) abstractC24172f;
        for (AbstractC24151n abstractC24151n : c24166a.f66903a) {
            String mo5538h = abstractC24151n.mo5538h();
            if (!hashMap.containsKey(mo5538h)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(abstractC24151n);
                hashMap.put(mo5538h, arrayList);
            } else {
                ((List) hashMap.get(mo5538h)).add(abstractC24151n);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = hashMap.entrySet().iterator();
        while (true) {
            String str2 = null;
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                AbstractC24151n abstractC24151n2 = (AbstractC24151n) ((List) entry.getValue()).get(0);
                EnumC24030u enumC24030u = EnumC24030u.DEFAULT;
                Long valueOf = Long.valueOf(this.f66483f.mo5549a());
                Long valueOf2 = Long.valueOf(this.f66482e.mo5549a());
                C24010j c24010j = new C24010j(AbstractC24021p.EnumC24022a.ANDROID_FIREBASE, new C24007h(Integer.valueOf(abstractC24151n2.m5539g("sdk-version")), abstractC24151n2.m5544b("model"), abstractC24151n2.m5544b("hardware"), abstractC24151n2.m5544b(AnalyticsConstants.DEVICE), abstractC24151n2.m5544b("product"), abstractC24151n2.m5544b("os-uild"), abstractC24151n2.m5544b("manufacturer"), abstractC24151n2.m5544b("fingerprint"), abstractC24151n2.m5544b(AnalyticsConstants.LOCALE), abstractC24151n2.m5544b(ImpressionData.COUNTRY), abstractC24151n2.m5544b("mcc_mnc"), abstractC24151n2.m5544b("application_build"), null), null);
                try {
                    str = null;
                    num = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                } catch (NumberFormatException e) {
                    str = (String) entry.getKey();
                    num = null;
                }
                ArrayList arrayList3 = new ArrayList();
                for (AbstractC24151n abstractC24151n3 : (List) entry.getValue()) {
                    C24150m mo5541e = abstractC24151n3.mo5541e();
                    C23987b c23987b = mo5541e.f66879a;
                    if (c23987b.equals(new C23987b("proto"))) {
                        byte[] bArr = mo5541e.f66880b;
                        c24014b = new C24012k.C24014b();
                        c24014b.f66553d = bArr;
                    } else if (c23987b.equals(new C23987b("json"))) {
                        String str3 = new String(mo5541e.f66880b, Charset.forName(StringConstant.UTF8));
                        c24014b = new C24012k.C24014b();
                        c24014b.f66554e = str3;
                    } else {
                        C26232y.m2479C0("CctTransportBackend");
                        String.format("Received event of unsupported encoding %s. Skipping...", c23987b);
                    }
                    c24014b.f66550a = Long.valueOf(abstractC24151n3.mo5540f());
                    c24014b.f66552c = Long.valueOf(abstractC24151n3.mo5537i());
                    String str4 = abstractC24151n3.mo5543c().get("tz-offset");
                    c24014b.f66555f = Long.valueOf(str4 == null ? (char) 0 : Long.valueOf(str4).longValue());
                    c24014b.f66556g = new C24018n(AbstractC24027t.EnumC24029b.f66613u.get(abstractC24151n3.m5539g("net-type")), AbstractC24027t.EnumC24028a.f66591w.get(abstractC24151n3.m5539g("mobile-subtype")), null);
                    if (abstractC24151n3.mo5542d() != null) {
                        c24014b.f66551b = abstractC24151n3.mo5542d();
                    }
                    String str5 = c24014b.f66550a == null ? " eventTimeMs" : "";
                    String str6 = str5;
                    if (c24014b.f66552c == null) {
                        str6 = C22128a.m8543z2(str5, " eventUptimeMs");
                    }
                    String str7 = str6;
                    if (c24014b.f66555f == null) {
                        str7 = C22128a.m8543z2(str6, " timezoneOffsetSeconds");
                    }
                    if (!str7.isEmpty()) {
                        throw new IllegalStateException(C22128a.m8543z2("Missing required properties:", str7));
                    }
                    arrayList3.add(new C24012k(c24014b.f66550a.longValue(), c24014b.f66551b, c24014b.f66552c.longValue(), c24014b.f66553d, c24014b.f66554e, c24014b.f66555f.longValue(), c24014b.f66556g, null));
                }
                String str8 = valueOf == null ? " requestTimeMs" : "";
                String str9 = str8;
                if (valueOf2 == null) {
                    str9 = C22128a.m8543z2(str8, " requestUptimeMs");
                }
                if (!str9.isEmpty()) {
                    throw new IllegalStateException(C22128a.m8543z2("Missing required properties:", str9));
                }
                arrayList2.add(new C24015l(valueOf.longValue(), valueOf2.longValue(), c24010j, num, str, arrayList3, enumC24030u, null));
            } else {
                C24009i c24009i = new C24009i(arrayList2);
                URL url = this.f66481d;
                URL url2 = url;
                if (c24166a.f66904b != null) {
                    try {
                        C23996c m5630b = C23996c.m5630b(((C24166a) abstractC24172f).f66904b);
                        String str10 = m5630b.f66477b;
                        String str11 = null;
                        if (str10 != null) {
                            str11 = str10;
                        }
                        String str12 = m5630b.f66476a;
                        url2 = url;
                        str2 = str11;
                        if (str12 != null) {
                            url2 = m5628c(str12);
                            str2 = str11;
                        }
                    } catch (IllegalArgumentException e2) {
                        return AbstractC24173g.m5512a();
                    }
                }
                try {
                    C23999b c23999b = (C23999b) C26232y.m2430O1(5, new C23998a(url2, c24009i, str2), new C23995b(this), C23994a.f66469a);
                    int i = c23999b.f66488a;
                    if (i == 200) {
                        return new C24168b(AbstractC24173g.EnumC24174a.OK, c23999b.f66490c);
                    }
                    if (i < 500 && i != 404) {
                        return i == 400 ? new C24168b(AbstractC24173g.EnumC24174a.INVALID_PAYLOAD, -1L) : AbstractC24173g.m5512a();
                    }
                    try {
                        return new C24168b(enumC24174a, -1L);
                    } catch (IOException e3) {
                        C26232y.m2479C0("CctTransportBackend");
                        return new C24168b(enumC24174a, -1L);
                    }
                } catch (IOException e4) {
                }
            }
        }
    }
}
