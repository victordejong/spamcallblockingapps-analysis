package p131c.p161d.p282e.p289l.p290d.p297k;

import com.google.firebase.crashlytics.internal.network.HttpMethod;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p599h.AbstractC10252z;
import p599h.C10105d;
import p599h.C10236s;
import p599h.C10240u;
import p599h.C10241v;
import p599h.C10244w;
import p599h.C10250y;
/* renamed from: c.d.e.l.d.k.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/k/a.class */
public class C5394a {

    /* renamed from: f */
    public static final C10244w f18306f;

    /* renamed from: a */
    public final HttpMethod f18307a;

    /* renamed from: b */
    public final String f18308b;

    /* renamed from: c */
    public final Map<String, String> f18309c;

    /* renamed from: e */
    public C10241v.C10242a f18311e = null;

    /* renamed from: d */
    public final Map<String, String> f18310d = new HashMap();

    static {
        C10244w.C10246b z = new C10244w().m852z();
        z.m839a(10000L, TimeUnit.MILLISECONDS);
        f18306f = z.m840a();
    }

    public C5394a(HttpMethod httpMethod, String str, Map<String, String> map) {
        this.f18307a = httpMethod;
        this.f18308b = str;
        this.f18309c = map;
    }

    /* renamed from: a */
    public C5394a m23932a(String str, String str2) {
        this.f18310d.put(str, str2);
        return this;
    }

    /* renamed from: a */
    public C5394a m23931a(String str, String str2, String str3, File file) {
        AbstractC10252z a = AbstractC10252z.m803a(C10240u.m892b(str3), file);
        C10241v.C10242a c = m23927c();
        c.m885a(str, str2, a);
        this.f18311e = c;
        return this;
    }

    /* renamed from: a */
    public C5394a m23930a(Map.Entry<String, String> entry) {
        m23932a(entry.getKey(), entry.getValue());
        return this;
    }

    /* renamed from: a */
    public final C10250y m23933a() {
        C10250y.C10251a aVar = new C10250y.C10251a();
        C10105d.C10106a aVar2 = new C10105d.C10106a();
        aVar2.m1472b();
        aVar.m811a(aVar2.m1474a());
        C10236s.C10237a i = C10236s.m937e(this.f18308b).m932i();
        for (Map.Entry<String, String> entry : this.f18309c.entrySet()) {
            i.m919a(entry.getKey(), entry.getValue());
        }
        aVar.m809a(i.m925a());
        for (Map.Entry<String, String> entry2 : this.f18310d.entrySet()) {
            aVar.m804b(entry2.getKey(), entry2.getValue());
        }
        C10241v.C10242a aVar3 = this.f18311e;
        aVar.m807a(this.f18307a.name(), aVar3 == null ? null : aVar3.m889a());
        return aVar.m812a();
    }

    /* renamed from: b */
    public C5394a m23928b(String str, String str2) {
        C10241v.C10242a c = m23927c();
        c.m886a(str, str2);
        this.f18311e = c;
        return this;
    }

    /* renamed from: b */
    public C5396c m23929b() throws IOException {
        return C5396c.m23923a(f18306f.mo871a(m23933a()).execute());
    }

    /* renamed from: c */
    public final C10241v.C10242a m23927c() {
        if (this.f18311e == null) {
            C10241v.C10242a aVar = new C10241v.C10242a();
            aVar.m888a(C10241v.f37777f);
            this.f18311e = aVar;
        }
        return this.f18311e;
    }

    /* renamed from: d */
    public String m23926d() {
        return this.f18307a.name();
    }
}
