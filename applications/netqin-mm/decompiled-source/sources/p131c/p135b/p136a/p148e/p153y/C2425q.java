package p131c.p135b.p136a.p148e.p153y;

import com.applovin.sdk.AppLovinSdk;
import java.util.Locale;
import java.util.UUID;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.e.y.q */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/q.class */
public final class C2425q {

    /* renamed from: a */
    public final C2341l f9348a;

    /* renamed from: b */
    public String f9349b = m29830d();

    /* renamed from: c */
    public final String f9350c;

    /* renamed from: d */
    public final String f9351d;

    public C2425q(C2341l lVar) {
        this.f9348a = lVar;
        this.f9350c = m29834a(C2251d.C2258g.f8797g, (String) C2251d.C2259h.m30567b(C2251d.C2258g.f8796f, (Object) null, lVar.m30264d()));
        this.f9351d = m29834a(C2251d.C2258g.f8798h, (String) lVar.m30291a(C2251d.C2256e.f8675h));
    }

    /* renamed from: a */
    public String m29835a() {
        return this.f9349b;
    }

    /* renamed from: a */
    public final String m29834a(C2251d.C2258g<String> gVar, String str) {
        String str2 = (String) C2251d.C2259h.m30567b(gVar, (Object) null, this.f9348a.m30264d());
        if (C2422o.m29851b(str2)) {
            return str2;
        }
        if (!C2422o.m29851b(str)) {
            str = UUID.randomUUID().toString().toLowerCase(Locale.US);
        }
        C2251d.C2259h.m30574a(gVar, str, this.f9348a.m30264d());
        return str;
    }

    /* renamed from: a */
    public void m29833a(String str) {
        if (((Boolean) this.f9348a.m30291a(C2251d.C2256e.f8615V2)).booleanValue()) {
            this.f9348a.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8795e, (C2251d.C2258g<String>) str);
        }
        this.f9349b = str;
    }

    /* renamed from: b */
    public String m29832b() {
        return this.f9350c;
    }

    /* renamed from: c */
    public String m29831c() {
        return this.f9351d;
    }

    /* renamed from: d */
    public final String m29830d() {
        if (!((Boolean) this.f9348a.m30291a(C2251d.C2256e.f8615V2)).booleanValue()) {
            this.f9348a.m30274b(C2251d.C2258g.f8795e);
        }
        String str = (String) this.f9348a.m30290a(C2251d.C2258g.f8795e);
        if (!C2422o.m29851b(str)) {
            return null;
        }
        C2374t d0 = this.f9348a.m30262d0();
        d0.m30044b(AppLovinSdk.TAG, "Using identifier (" + str + ") from previous session");
        this.f9349b = str;
        return null;
    }
}
