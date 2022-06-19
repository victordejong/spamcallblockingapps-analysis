package p193e.p1512i.p1516b.p1533u2;

import e.m.e.d0.b;
import java.util.Collection;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.d */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/d.class */
public abstract class AbstractC23117d extends AbstractC23129s {

    /* renamed from: a */
    public final String f63990a;

    /* renamed from: b */
    public final String f63991b;

    /* renamed from: c */
    public final Boolean f63992c;

    /* renamed from: d */
    public final Boolean f63993d;

    /* renamed from: e */
    public final Collection<String> f63994e;

    public AbstractC23117d(String str, String str2, Boolean bool, Boolean bool2, Collection<String> collection) {
        Objects.requireNonNull(str, "Null getImpressionId");
        this.f63990a = str;
        Objects.requireNonNull(str2, "Null getPlacementId");
        this.f63991b = str2;
        this.f63992c = bool;
        this.f63993d = bool2;
        Objects.requireNonNull(collection, "Null getSizes");
        this.f63994e = collection;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23129s
    @b("impId")
    /* renamed from: a */
    public String mo7490a() {
        return this.f63990a;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23129s
    @b("placementId")
    /* renamed from: b */
    public String mo7489b() {
        return this.f63991b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23129s
    @b("sizes")
    /* renamed from: c */
    public Collection<String> mo7488c() {
        return this.f63994e;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23129s
    @b("interstitial")
    /* renamed from: d */
    public Boolean mo7487d() {
        return this.f63993d;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23129s
    @b("isNative")
    /* renamed from: e */
    public Boolean mo7486e() {
        return this.f63992c;
    }

    public boolean equals(Object obj) {
        Boolean bool;
        Boolean bool2;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23129s)) {
            return false;
        }
        AbstractC23129s abstractC23129s = (AbstractC23129s) obj;
        if (!this.f63990a.equals(abstractC23129s.mo7490a()) || !this.f63991b.equals(abstractC23129s.mo7489b()) || ((bool = this.f63992c) != null ? !bool.equals(abstractC23129s.mo7486e()) : abstractC23129s.mo7486e() != null) || ((bool2 = this.f63993d) != null ? !bool2.equals(abstractC23129s.mo7487d()) : abstractC23129s.mo7487d() != null) || !this.f63994e.equals(abstractC23129s.mo7488c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f63990a.hashCode();
        int hashCode2 = this.f63991b.hashCode();
        Boolean bool = this.f63992c;
        int i = 0;
        int hashCode3 = bool == null ? 0 : bool.hashCode();
        Boolean bool2 = this.f63993d;
        if (bool2 != null) {
            i = bool2.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ this.f63994e.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CdbRequestSlot{getImpressionId=");
        m8728C.append(this.f63990a);
        m8728C.append(", getPlacementId=");
        m8728C.append(this.f63991b);
        m8728C.append(", isNativeAd=");
        m8728C.append(this.f63992c);
        m8728C.append(", isInterstitial=");
        m8728C.append(this.f63993d);
        m8728C.append(", getSizes=");
        m8728C.append(this.f63994e);
        m8728C.append("}");
        return m8728C.toString();
    }
}
