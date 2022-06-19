package p193e.p194a.p1011l.p1033v2.p1037i.p1039b;

import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.v2.i.b.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/b/a.class */
public final class C17288a {

    /* renamed from: a */
    public final NewFeatureLabelType f48504a;

    /* renamed from: b */
    public final boolean f48505b;

    /* renamed from: c */
    public final String f48506c;

    /* renamed from: d */
    public final String f48507d;

    public C17288a(NewFeatureLabelType newFeatureLabelType, boolean z, String str, String str2) {
        l.e(newFeatureLabelType, "type");
        l.e(str, "title");
        l.e(str2, "description");
        this.f48504a = newFeatureLabelType;
        this.f48505b = z;
        this.f48506c = str;
        this.f48507d = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17288a)) {
                return false;
            }
            C17288a c17288a = (C17288a) obj;
            return l.a(this.f48504a, c17288a.f48504a) && this.f48505b == c17288a.f48505b && l.a(this.f48506c, c17288a.f48506c) && l.a(this.f48507d, c17288a.f48507d);
        }
        return true;
    }

    public int hashCode() {
        NewFeatureLabelType newFeatureLabelType = this.f48504a;
        int i = 0;
        int hashCode = newFeatureLabelType != null ? newFeatureLabelType.hashCode() : 0;
        boolean z = this.f48505b;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        String str = this.f48506c;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f48507d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CardNewFeatureLabel(type=");
        m8728C.append(this.f48504a);
        m8728C.append(", shouldPromote=");
        m8728C.append(this.f48505b);
        m8728C.append(", title=");
        m8728C.append(this.f48506c);
        m8728C.append(", description=");
        return C22128a.m8618h(m8728C, this.f48507d, ")");
    }
}
