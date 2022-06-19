package p193e.p1512i.p1516b.p1533u2;

import com.criteo.publisher.logging.RemoteLogRecords;
import e.m.e.d0.b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.g */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/g.class */
public abstract class AbstractC23122g extends AbstractC23118d0 {

    /* renamed from: a */
    public final Boolean f64004a;

    /* renamed from: b */
    public final String f64005b;

    /* renamed from: c */
    public final String f64006c;

    /* renamed from: d */
    public final String f64007d;

    /* renamed from: e */
    public final String f64008e;

    /* renamed from: f */
    public final Boolean f64009f;

    /* renamed from: g */
    public final Boolean f64010g;

    /* renamed from: h */
    public final Integer f64011h;

    /* renamed from: i */
    public final Boolean f64012i;

    /* renamed from: j */
    public final RemoteLogRecords.RemoteLogLevel f64013j;

    public AbstractC23122g(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        this.f64004a = bool;
        this.f64005b = str;
        this.f64006c = str2;
        this.f64007d = str3;
        this.f64008e = str4;
        this.f64009f = bool2;
        this.f64010g = bool3;
        this.f64011h = num;
        this.f64012i = bool4;
        this.f64013j = remoteLogLevel;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    @b("AndroidAdTagDataMacro")
    /* renamed from: c */
    public String mo7516c() {
        return this.f64007d;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    @b("AndroidAdTagDataMode")
    /* renamed from: d */
    public String mo7515d() {
        return this.f64008e;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    @b("AndroidAdTagUrlMode")
    /* renamed from: e */
    public String mo7514e() {
        return this.f64006c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23118d0)) {
            return false;
        }
        AbstractC23118d0 abstractC23118d0 = (AbstractC23118d0) obj;
        Boolean bool = this.f64004a;
        if (bool != null ? bool.equals(abstractC23118d0.mo7511h()) : abstractC23118d0.mo7511h() == null) {
            String str = this.f64005b;
            if (str != null ? str.equals(abstractC23118d0.mo7513f()) : abstractC23118d0.mo7513f() == null) {
                String str2 = this.f64006c;
                if (str2 != null ? str2.equals(abstractC23118d0.mo7514e()) : abstractC23118d0.mo7514e() == null) {
                    String str3 = this.f64007d;
                    if (str3 != null ? str3.equals(abstractC23118d0.mo7516c()) : abstractC23118d0.mo7516c() == null) {
                        String str4 = this.f64008e;
                        if (str4 != null ? str4.equals(abstractC23118d0.mo7515d()) : abstractC23118d0.mo7515d() == null) {
                            Boolean bool2 = this.f64009f;
                            if (bool2 != null ? bool2.equals(abstractC23118d0.mo7512g()) : abstractC23118d0.mo7512g() == null) {
                                Boolean bool3 = this.f64010g;
                                if (bool3 != null ? bool3.equals(abstractC23118d0.mo7510i()) : abstractC23118d0.mo7510i() == null) {
                                    Integer num = this.f64011h;
                                    if (num != null ? num.equals(abstractC23118d0.mo7509j()) : abstractC23118d0.mo7509j() == null) {
                                        Boolean bool4 = this.f64012i;
                                        if (bool4 != null ? bool4.equals(abstractC23118d0.mo7508k()) : abstractC23118d0.mo7508k() == null) {
                                            RemoteLogRecords.RemoteLogLevel remoteLogLevel = this.f64013j;
                                            if (remoteLogLevel != null) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    @b("AndroidDisplayUrlMacro")
    /* renamed from: f */
    public String mo7513f() {
        return this.f64005b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    /* renamed from: g */
    public Boolean mo7512g() {
        return this.f64009f;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    /* renamed from: h */
    public Boolean mo7511h() {
        return this.f64004a;
    }

    public int hashCode() {
        Boolean bool = this.f64004a;
        int i = 0;
        int hashCode = bool == null ? 0 : bool.hashCode();
        String str = this.f64005b;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f64006c;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f64007d;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f64008e;
        int hashCode5 = str4 == null ? 0 : str4.hashCode();
        Boolean bool2 = this.f64009f;
        int hashCode6 = bool2 == null ? 0 : bool2.hashCode();
        Boolean bool3 = this.f64010g;
        int hashCode7 = bool3 == null ? 0 : bool3.hashCode();
        Integer num = this.f64011h;
        int hashCode8 = num == null ? 0 : num.hashCode();
        Boolean bool4 = this.f64012i;
        int hashCode9 = bool4 == null ? 0 : bool4.hashCode();
        RemoteLogRecords.RemoteLogLevel remoteLogLevel = this.f64013j;
        if (remoteLogLevel != null) {
            i = remoteLogLevel.hashCode();
        }
        return ((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ hashCode7) * 1000003) ^ hashCode8) * 1000003) ^ hashCode9) * 1000003) ^ i;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    /* renamed from: i */
    public Boolean mo7510i() {
        return this.f64010g;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    /* renamed from: j */
    public Integer mo7509j() {
        return this.f64011h;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    /* renamed from: k */
    public Boolean mo7508k() {
        return this.f64012i;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23118d0
    /* renamed from: l */
    public RemoteLogRecords.RemoteLogLevel mo7507l() {
        return this.f64013j;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RemoteConfigResponse{killSwitch=");
        m8728C.append(this.f64004a);
        m8728C.append(", androidDisplayUrlMacro=");
        m8728C.append(this.f64005b);
        m8728C.append(", androidAdTagUrlMode=");
        m8728C.append(this.f64006c);
        m8728C.append(", androidAdTagDataMacro=");
        m8728C.append(this.f64007d);
        m8728C.append(", androidAdTagDataMode=");
        m8728C.append(this.f64008e);
        m8728C.append(", csmEnabled=");
        m8728C.append(this.f64009f);
        m8728C.append(", liveBiddingEnabled=");
        m8728C.append(this.f64010g);
        m8728C.append(", liveBiddingTimeBudgetInMillis=");
        m8728C.append(this.f64011h);
        m8728C.append(", prefetchOnInitEnabled=");
        m8728C.append(this.f64012i);
        m8728C.append(", remoteLogLevel=");
        m8728C.append(this.f64013j);
        m8728C.append("}");
        return m8728C.toString();
    }
}
