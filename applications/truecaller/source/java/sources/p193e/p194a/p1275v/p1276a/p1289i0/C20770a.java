package p193e.p194a.p1275v.p1276a.p1289i0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1275v.p1276a.p1289i0.C20773d;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
/* renamed from: e.a.v.a.i0.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/i0/a.class */
public final class C20770a {

    /* renamed from: a */
    public final String f58404a;

    /* renamed from: b */
    public final String f58405b;

    /* renamed from: c */
    public final boolean f58406c;

    /* renamed from: d */
    public final a<s> f58407d;

    /* renamed from: e */
    public final a<s> f58408e;

    /* renamed from: f */
    public final l<Integer, s> f58409f;

    /* renamed from: g */
    public final a<s> f58410g;

    /* renamed from: h */
    public final a<s> f58411h;

    /* renamed from: i */
    public final C20773d.C20774a f58412i;

    /* JADX WARN: Multi-variable type inference failed */
    public C20770a(String str, String str2, boolean z, a<s> aVar, a<s> aVar2, l<? super Integer, s> lVar, a<s> aVar3, a<s> aVar4, C20773d.C20774a c20774a) {
        s1.z.c.l.e(str, "numberForDisplay");
        s1.z.c.l.e(aVar, "onClicked");
        s1.z.c.l.e(aVar2, "onLongClicked");
        s1.z.c.l.e(lVar, "onSimButtonClicked");
        s1.z.c.l.e(aVar3, "onSmsButtonClicked");
        s1.z.c.l.e(aVar4, "onCallContextButtonClicked");
        this.f58404a = str;
        this.f58405b = str2;
        this.f58406c = z;
        this.f58407d = aVar;
        this.f58408e = aVar2;
        this.f58409f = lVar;
        this.f58410g = aVar3;
        this.f58411h = aVar4;
        this.f58412i = c20774a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20770a)) {
                return false;
            }
            C20770a c20770a = (C20770a) obj;
            return s1.z.c.l.a(this.f58404a, c20770a.f58404a) && s1.z.c.l.a(this.f58405b, c20770a.f58405b) && this.f58406c == c20770a.f58406c && s1.z.c.l.a(this.f58407d, c20770a.f58407d) && s1.z.c.l.a(this.f58408e, c20770a.f58408e) && s1.z.c.l.a(this.f58409f, c20770a.f58409f) && s1.z.c.l.a(this.f58410g, c20770a.f58410g) && s1.z.c.l.a(this.f58411h, c20770a.f58411h) && s1.z.c.l.a(this.f58412i, c20770a.f58412i);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f58404a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f58405b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.f58406c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        a<s> aVar = this.f58407d;
        int hashCode3 = aVar != null ? aVar.hashCode() : 0;
        a<s> aVar2 = this.f58408e;
        int hashCode4 = aVar2 != null ? aVar2.hashCode() : 0;
        l<Integer, s> lVar = this.f58409f;
        int hashCode5 = lVar != null ? lVar.hashCode() : 0;
        a<s> aVar3 = this.f58410g;
        int hashCode6 = aVar3 != null ? aVar3.hashCode() : 0;
        a<s> aVar4 = this.f58411h;
        int hashCode7 = aVar4 != null ? aVar4.hashCode() : 0;
        C20773d.C20774a c20774a = this.f58412i;
        if (c20774a != null) {
            i = c20774a.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ContactNumber(numberForDisplay=");
        m8728C.append(this.f58404a);
        m8728C.append(", numberDetails=");
        m8728C.append(this.f58405b);
        m8728C.append(", isCallContextCapable=");
        m8728C.append(this.f58406c);
        m8728C.append(", onClicked=");
        m8728C.append(this.f58407d);
        m8728C.append(", onLongClicked=");
        m8728C.append(this.f58408e);
        m8728C.append(", onSimButtonClicked=");
        m8728C.append(this.f58409f);
        m8728C.append(", onSmsButtonClicked=");
        m8728C.append(this.f58410g);
        m8728C.append(", onCallContextButtonClicked=");
        m8728C.append(this.f58411h);
        m8728C.append(", category=");
        m8728C.append(this.f58412i);
        m8728C.append(")");
        return m8728C.toString();
    }
}
