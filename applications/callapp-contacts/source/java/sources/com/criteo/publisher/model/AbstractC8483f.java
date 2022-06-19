package com.criteo.publisher.model;

import java.util.Map;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.f */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/f.class */
public abstract class AbstractC8483f extends AbstractC8516z {

    /* renamed from: a */
    private final String f30291a;

    /* renamed from: b */
    private final String f30292b;

    /* renamed from: c */
    private final String f30293c;

    /* renamed from: d */
    private final String f30294d;

    /* renamed from: e */
    private final String f30295e;

    /* renamed from: f */
    private final String f30296f;

    /* renamed from: g */
    private final Map<String, Object> f30297g;

    public AbstractC8483f(String str, String str2, String str3, String str4, String str5, String str6, Map<String, Object> map) {
        this.f30291a = str;
        Objects.requireNonNull(str2, "Null deviceIdType");
        this.f30292b = str2;
        Objects.requireNonNull(str3, "Null deviceOs");
        this.f30293c = str3;
        this.f30294d = str4;
        this.f30295e = str5;
        this.f30296f = str6;
        Objects.requireNonNull(map, "Null ext");
        this.f30297g = map;
    }

    @Override // com.criteo.publisher.model.AbstractC8516z
    /* renamed from: a */
    public String mo25485a() {
        return this.f30291a;
    }

    @Override // com.criteo.publisher.model.AbstractC8516z
    /* renamed from: b */
    public String mo25482b() {
        return this.f30292b;
    }

    @Override // com.criteo.publisher.model.AbstractC8516z
    /* renamed from: c */
    public String mo25481c() {
        return this.f30293c;
    }

    @Override // com.criteo.publisher.model.AbstractC8516z
    /* renamed from: d */
    public Map<String, Object> mo25480d() {
        return this.f30297g;
    }

    @Override // com.criteo.publisher.model.AbstractC8516z
    /* renamed from: e */
    public String mo25479e() {
        return this.f30294d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        if ((r0 = r3.f30295e) != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0091, code lost:
        if ((r0 = r3.f30296f) != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b6, code lost:
        if (r3.f30297g.equals(r0.mo25480d()) == false) goto L37;
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
            boolean r0 = r0 instanceof com.criteo.publisher.model.AbstractC8516z
            if (r0 == 0) goto Lc0
            r0 = r4
            com.criteo.publisher.model.z r0 = (com.criteo.publisher.model.AbstractC8516z) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f30291a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L28
            r0 = r4
            java.lang.String r0 = r0.mo25485a()
            if (r0 != 0) goto Lbc
            goto L33
        L28:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo25485a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L33:
            r0 = r3
            java.lang.String r0 = r0.f30292b
            r1 = r4
            java.lang.String r1 = r1.mo25482b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
            r0 = r3
            java.lang.String r0 = r0.f30293c
            r1 = r4
            java.lang.String r1 = r1.mo25481c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
            r0 = r3
            java.lang.String r0 = r0.f30294d
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L62
            r0 = r4
            java.lang.String r0 = r0.mo25479e()
            if (r0 != 0) goto Lbc
            goto L6d
        L62:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo25479e()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L6d:
            r0 = r3
            java.lang.String r0 = r0.f30295e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L80
            r0 = r4
            java.lang.String r0 = r0.mo25478f()
            if (r0 != 0) goto Lbc
            goto L8b
        L80:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo25478f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L8b:
            r0 = r3
            java.lang.String r0 = r0.f30296f
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L9e
            r0 = r4
            java.lang.String r0 = r0.mo25477g()
            if (r0 != 0) goto Lbc
            goto La9
        L9e:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo25477g()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        La9:
            r0 = r3
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f30297g
            r1 = r4
            java.util.Map r1 = r1.mo25480d()
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
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.AbstractC8483f.equals(java.lang.Object):boolean");
    }

    @Override // com.criteo.publisher.model.AbstractC8516z
    /* renamed from: f */
    public String mo25478f() {
        return this.f30295e;
    }

    @Override // com.criteo.publisher.model.AbstractC8516z
    /* renamed from: g */
    public String mo25477g() {
        return this.f30296f;
    }

    public int hashCode() {
        String str = this.f30291a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.f30292b.hashCode();
        int hashCode3 = this.f30293c.hashCode();
        String str2 = this.f30294d;
        int hashCode4 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f30295e;
        int hashCode5 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f30296f;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ i) * 1000003) ^ this.f30297g.hashCode();
    }

    public String toString() {
        return "User{deviceId=" + this.f30291a + ", deviceIdType=" + this.f30292b + ", deviceOs=" + this.f30293c + ", mopubConsent=" + this.f30294d + ", uspIab=" + this.f30295e + ", uspOptout=" + this.f30296f + ", ext=" + this.f30297g + "}";
    }
}
