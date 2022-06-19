package p193e.p1512i.p1516b.p1533u2;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.network.ImpressionData;
import com.tenor.android.core.constant.ScreenDensity;
import e.m.e.d0.b;
import java.io.ByteArrayInputStream;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.AbstractC22939e2;
import p193e.p1512i.p1516b.C23157x2;
import p193e.p1512i.p1516b.p1531s2.C23087j;
import p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23111n;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.c.l;
/* renamed from: e.i.b.u2.w */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/w.class */
public class C23131w {
    @b("impId")

    /* renamed from: c */
    private final String f64068c = null;
    @b("placementId")

    /* renamed from: d */
    private final String f64069d = null;
    @b("zoneId")

    /* renamed from: e */
    private final Integer f64070e = null;
    @b("cpm")

    /* renamed from: f */
    private final String f64071f = ScreenDensity.UNKNOWN;
    @b(ImpressionData.CURRENCY)

    /* renamed from: g */
    private final String f64072g = null;
    @b("width")

    /* renamed from: h */
    private final int f64073h = 0;
    @b("height")

    /* renamed from: i */
    private final int f64074i = 0;
    @b("displayUrl")

    /* renamed from: j */
    private final String f64075j = null;
    @b("native")

    /* renamed from: k */
    private final AbstractC23111n f64076k = null;
    @b(RemoteMessageConst.TTL)

    /* renamed from: l */
    private int f64077l = 0;

    /* renamed from: m */
    public long f64078m = 0;

    /* renamed from: a */
    public final g f64066a = C25225a.m3978P1(new u(this));

    /* renamed from: b */
    public final g f64067b = C25225a.m3978P1(new v(this));

    public C23131w() {
        l.f(ScreenDensity.UNKNOWN, "cpm");
    }

    /* renamed from: a */
    public static final C23131w m7484a(JSONObject jSONObject) {
        ByteArrayInputStream byteArrayInputStream;
        l.f(jSONObject, "json");
        C23087j m7459c = C23157x2.m7454h().m7459c();
        l.b(m7459c, "DependencyProvider.getIn…).provideJsonSerializer()");
        String jSONObject2 = jSONObject.toString();
        l.b(jSONObject2, "json.toString()");
        byte[] bytes = jSONObject2.getBytes(s1.f0.b.a);
        l.b(bytes, "(this as java.lang.String).getBytes(charset)");
        try {
            Object m7563a = m7459c.m7563a(C23131w.class, new ByteArrayInputStream(bytes));
            l.b(m7563a, "jsonSerializer.read(CdbR…eSlot::class.java, input)");
            th = null;
            return (C23131w) m7563a;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: b */
    public String m7483b() {
        return this.f64071f;
    }

    /* renamed from: c */
    public void m7482c(int i) {
        this.f64077l = i;
    }

    /* renamed from: d */
    public boolean m7481d(AbstractC22939e2 abstractC22939e2) {
        l.f(abstractC22939e2, "clock");
        return ((long) (this.f64077l * 1000)) + this.f64078m <= abstractC22939e2.mo7355a();
    }

    /* renamed from: e */
    public Double m7480e() {
        return (Double) this.f64066a.getValue();
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C23131w)) {
                return false;
            }
            C23131w c23131w = (C23131w) obj;
            return l.a(this.f64068c, c23131w.f64068c) && l.a(this.f64069d, c23131w.f64069d) && l.a(this.f64070e, c23131w.f64070e) && l.a(this.f64071f, c23131w.f64071f) && l.a(this.f64072g, c23131w.f64072g) && this.f64073h == c23131w.f64073h && this.f64074i == c23131w.f64074i && l.a(this.f64075j, c23131w.f64075j) && l.a(this.f64076k, c23131w.f64076k) && this.f64077l == c23131w.f64077l && this.f64078m == c23131w.f64078m;
        }
        return true;
    }

    /* renamed from: f */
    public String m7479f() {
        return this.f64075j;
    }

    /* renamed from: g */
    public int m7478g() {
        return this.f64074i;
    }

    /* renamed from: h */
    public String m7477h() {
        return this.f64068c;
    }

    public int hashCode() {
        String str = this.f64068c;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f64069d;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Integer num = this.f64070e;
        int hashCode3 = num != null ? num.hashCode() : 0;
        String str3 = this.f64071f;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f64072g;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        int i2 = this.f64073h;
        int i3 = this.f64074i;
        String str5 = this.f64075j;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        AbstractC23111n abstractC23111n = this.f64076k;
        if (abstractC23111n != null) {
            i = abstractC23111n.hashCode();
        }
        int i4 = this.f64077l;
        long j = this.f64078m;
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + i3) * 31) + hashCode6) * 31) + i) * 31) + i4) * 31) + ((int) (j ^ (j >>> 32)));
    }

    /* renamed from: i */
    public AbstractC23111n m7476i() {
        return this.f64076k;
    }

    /* renamed from: j */
    public String m7475j() {
        return this.f64069d;
    }

    /* renamed from: k */
    public int m7474k() {
        return this.f64077l;
    }

    /* renamed from: l */
    public int m7473l() {
        return this.f64073h;
    }

    /* renamed from: m */
    public Integer m7472m() {
        return this.f64070e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0112, code lost:
        if ((r0.length() > 7 && r0.substring(0, 8).equalsIgnoreCase(com.amazon.device.ads.DtbConstants.HTTPS)) != false) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0123  */
    /* JADX WARN: Type inference failed for: r0v73, types: [double] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m7471n() {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.p1533u2.C23131w.m7471n():boolean");
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CdbResponseSlot(impressionId=");
        m8728C.append(this.f64068c);
        m8728C.append(", placementId=");
        m8728C.append(this.f64069d);
        m8728C.append(", zoneId=");
        m8728C.append(this.f64070e);
        m8728C.append(", cpm=");
        m8728C.append(this.f64071f);
        m8728C.append(", currency=");
        m8728C.append(this.f64072g);
        m8728C.append(", width=");
        m8728C.append(this.f64073h);
        m8728C.append(", height=");
        m8728C.append(this.f64074i);
        m8728C.append(", displayUrl=");
        m8728C.append(this.f64075j);
        m8728C.append(", nativeAssets=");
        m8728C.append(this.f64076k);
        m8728C.append(", ttlInSeconds=");
        m8728C.append(this.f64077l);
        m8728C.append(", timeOfDownload=");
        return C22128a.m8693K2(m8728C, this.f64078m, ")");
    }
}
