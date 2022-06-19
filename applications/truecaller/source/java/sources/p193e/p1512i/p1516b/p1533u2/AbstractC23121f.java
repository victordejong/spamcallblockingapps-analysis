package p193e.p1512i.p1516b.p1533u2;

import e.m.e.d0.b;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.f */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/f.class */
public abstract class AbstractC23121f extends AbstractC23103b0 {

    /* renamed from: a */
    public final String f63998a;

    /* renamed from: b */
    public final String f63999b;

    /* renamed from: c */
    public final String f64000c;

    /* renamed from: d */
    public final int f64001d;

    /* renamed from: e */
    public final String f64002e;

    /* renamed from: f */
    public final String f64003f;

    public AbstractC23121f(String str, String str2, String str3, int i, String str4, String str5) {
        Objects.requireNonNull(str, "Null criteoPublisherId");
        this.f63998a = str;
        Objects.requireNonNull(str2, "Null bundleId");
        this.f63999b = str2;
        Objects.requireNonNull(str3, "Null sdkVersion");
        this.f64000c = str3;
        this.f64001d = i;
        this.f64002e = str4;
        Objects.requireNonNull(str5, "Null deviceOs");
        this.f64003f = str5;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23103b0
    /* renamed from: a */
    public String mo7522a() {
        return this.f63999b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23103b0
    @b("cpId")
    /* renamed from: b */
    public String mo7521b() {
        return this.f63998a;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23103b0
    /* renamed from: c */
    public String mo7520c() {
        return this.f64002e;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23103b0
    /* renamed from: d */
    public String mo7519d() {
        return this.f64003f;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23103b0
    @b("rtbProfileId")
    /* renamed from: e */
    public int mo7518e() {
        return this.f64001d;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23103b0)) {
            return false;
        }
        AbstractC23103b0 abstractC23103b0 = (AbstractC23103b0) obj;
        if (!this.f63998a.equals(abstractC23103b0.mo7521b()) || !this.f63999b.equals(abstractC23103b0.mo7522a()) || !this.f64000c.equals(abstractC23103b0.mo7517f()) || this.f64001d != abstractC23103b0.mo7518e() || ((str = this.f64002e) != null ? !str.equals(abstractC23103b0.mo7520c()) : abstractC23103b0.mo7520c() != null) || !this.f64003f.equals(abstractC23103b0.mo7519d())) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23103b0
    /* renamed from: f */
    public String mo7517f() {
        return this.f64000c;
    }

    public int hashCode() {
        int hashCode = this.f63998a.hashCode();
        int hashCode2 = this.f63999b.hashCode();
        int hashCode3 = this.f64000c.hashCode();
        int i = this.f64001d;
        String str = this.f64002e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f64003f.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RemoteConfigRequest{criteoPublisherId=");
        m8728C.append(this.f63998a);
        m8728C.append(", bundleId=");
        m8728C.append(this.f63999b);
        m8728C.append(", sdkVersion=");
        m8728C.append(this.f64000c);
        m8728C.append(", profileId=");
        m8728C.append(this.f64001d);
        m8728C.append(", deviceId=");
        m8728C.append(this.f64002e);
        m8728C.append(", deviceOs=");
        return C22128a.m8618h(m8728C, this.f64003f, "}");
    }
}
