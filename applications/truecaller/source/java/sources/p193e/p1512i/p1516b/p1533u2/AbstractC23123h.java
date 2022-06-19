package p193e.p1512i.p1516b.p1533u2;

import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.h */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/h.class */
public abstract class AbstractC23123h extends AbstractC23120e0 {

    /* renamed from: a */
    public final String f64014a;

    /* renamed from: b */
    public final String f64015b;

    /* renamed from: c */
    public final String f64016c;

    /* renamed from: d */
    public final String f64017d;

    /* renamed from: e */
    public final String f64018e;

    /* renamed from: f */
    public final String f64019f;

    /* renamed from: g */
    public final Map<String, Object> f64020g;

    public AbstractC23123h(String str, String str2, String str3, String str4, String str5, String str6, Map<String, Object> map) {
        this.f64014a = str;
        Objects.requireNonNull(str2, "Null deviceIdType");
        this.f64015b = str2;
        Objects.requireNonNull(str3, "Null deviceOs");
        this.f64016c = str3;
        this.f64017d = str4;
        this.f64018e = str5;
        this.f64019f = str6;
        Objects.requireNonNull(map, "Null ext");
        this.f64020g = map;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23120e0
    /* renamed from: a */
    public String mo7506a() {
        return this.f64014a;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23120e0
    /* renamed from: b */
    public String mo7505b() {
        return this.f64015b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23120e0
    /* renamed from: c */
    public String mo7504c() {
        return this.f64016c;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23120e0
    /* renamed from: d */
    public Map<String, Object> mo7503d() {
        return this.f64020g;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23120e0
    /* renamed from: e */
    public String mo7502e() {
        return this.f64017d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        if ((r0 = r3.f64018e) != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0091, code lost:
        if ((r0 = r3.f64019f) != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b6, code lost:
        if (r3.f64020g.equals(r0.mo7503d()) == false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof p193e.p1512i.p1516b.p1533u2.AbstractC23120e0
            if (r0 == 0) goto Lc0
            r0 = r4
            e.i.b.u2.e0 r0 = (p193e.p1512i.p1516b.p1533u2.AbstractC23120e0) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f64014a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L28
            r0 = r4
            java.lang.String r0 = r0.mo7506a()
            if (r0 != 0) goto Lbc
            goto L33
        L28:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo7506a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L33:
            r0 = r3
            java.lang.String r0 = r0.f64015b
            r1 = r4
            java.lang.String r1 = r1.mo7505b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
            r0 = r3
            java.lang.String r0 = r0.f64016c
            r1 = r4
            java.lang.String r1 = r1.mo7504c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
            r0 = r3
            java.lang.String r0 = r0.f64017d
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L62
            r0 = r4
            java.lang.String r0 = r0.mo7502e()
            if (r0 != 0) goto Lbc
            goto L6d
        L62:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo7502e()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L6d:
            r0 = r3
            java.lang.String r0 = r0.f64018e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L80
            r0 = r4
            java.lang.String r0 = r0.mo7501f()
            if (r0 != 0) goto Lbc
            goto L8b
        L80:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo7501f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L8b:
            r0 = r3
            java.lang.String r0 = r0.f64019f
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L9e
            r0 = r4
            java.lang.String r0 = r0.mo7500g()
            if (r0 != 0) goto Lbc
            goto La9
        L9e:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo7500g()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        La9:
            r0 = r3
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f64020g
            r1 = r4
            java.util.Map r1 = r1.mo7503d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
            goto Lbe
        Lbc:
            r0 = 0
            r5 = r0
        Lbe:
            r0 = r5
            return r0
        Lc0:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.p1533u2.AbstractC23123h.equals(java.lang.Object):boolean");
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23120e0
    /* renamed from: f */
    public String mo7501f() {
        return this.f64018e;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23120e0
    /* renamed from: g */
    public String mo7500g() {
        return this.f64019f;
    }

    public int hashCode() {
        String str = this.f64014a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.f64015b.hashCode();
        int hashCode3 = this.f64016c.hashCode();
        String str2 = this.f64017d;
        int hashCode4 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f64018e;
        int hashCode5 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f64019f;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ i) * 1000003) ^ this.f64020g.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("User{deviceId=");
        m8728C.append(this.f64014a);
        m8728C.append(", deviceIdType=");
        m8728C.append(this.f64015b);
        m8728C.append(", deviceOs=");
        m8728C.append(this.f64016c);
        m8728C.append(", mopubConsent=");
        m8728C.append(this.f64017d);
        m8728C.append(", uspIab=");
        m8728C.append(this.f64018e);
        m8728C.append(", uspOptout=");
        m8728C.append(this.f64019f);
        m8728C.append(", ext=");
        m8728C.append(this.f64020g);
        m8728C.append("}");
        return m8728C.toString();
    }
}
