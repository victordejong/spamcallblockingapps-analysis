package com.criteo.publisher.model;

import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/f.class */
public abstract class f extends z {

    /* renamed from: a  reason: collision with root package name */
    private final String f17590a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17591b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17592c;

    /* renamed from: d  reason: collision with root package name */
    private final String f17593d;
    private final String e;
    private final String f;
    private final Map<String, Object> g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, String str2, String str3, String str4, String str5, String str6, Map<String, Object> map) {
        this.f17590a = str;
        Objects.requireNonNull(str2, "Null deviceIdType");
        this.f17591b = str2;
        Objects.requireNonNull(str3, "Null deviceOs");
        this.f17592c = str3;
        this.f17593d = str4;
        this.e = str5;
        this.f = str6;
        Objects.requireNonNull(map, "Null ext");
        this.g = map;
    }

    @Override // com.criteo.publisher.model.z
    public String a() {
        return this.f17590a;
    }

    @Override // com.criteo.publisher.model.z
    public String b() {
        return this.f17591b;
    }

    @Override // com.criteo.publisher.model.z
    public String c() {
        return this.f17592c;
    }

    @Override // com.criteo.publisher.model.z
    public Map<String, Object> d() {
        return this.g;
    }

    @Override // com.criteo.publisher.model.z
    public String e() {
        return this.f17593d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        if ((r0 = r3.e) != null) goto L_0x0080;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0091, code lost:
        if ((r0 = r3.f) != null) goto L_0x009e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b6, code lost:
        if (r3.g.equals(r0.d()) == false) goto L_0x00bc;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof com.criteo.publisher.model.z
            if (r0 == 0) goto L_0x00c0
            r0 = r4
            com.criteo.publisher.model.z r0 = (com.criteo.publisher.model.z) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f17590a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0028
            r0 = r4
            java.lang.String r0 = r0.a()
            if (r0 != 0) goto L_0x00bc
            goto L_0x0033
        L_0x0028:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
        L_0x0033:
            r0 = r3
            java.lang.String r0 = r0.f17591b
            r1 = r4
            java.lang.String r1 = r1.b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
            r0 = r3
            java.lang.String r0 = r0.f17592c
            r1 = r4
            java.lang.String r1 = r1.c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
            r0 = r3
            java.lang.String r0 = r0.f17593d
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0062
            r0 = r4
            java.lang.String r0 = r0.e()
            if (r0 != 0) goto L_0x00bc
            goto L_0x006d
        L_0x0062:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.e()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
        L_0x006d:
            r0 = r3
            java.lang.String r0 = r0.e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0080
            r0 = r4
            java.lang.String r0 = r0.f()
            if (r0 != 0) goto L_0x00bc
            goto L_0x008b
        L_0x0080:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
        L_0x008b:
            r0 = r3
            java.lang.String r0 = r0.f
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x009e
            r0 = r4
            java.lang.String r0 = r0.g()
            if (r0 != 0) goto L_0x00bc
            goto L_0x00a9
        L_0x009e:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.g()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
        L_0x00a9:
            r0 = r3
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.g
            r1 = r4
            java.util.Map r1 = r1.d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
            goto L_0x00be
        L_0x00bc:
            r0 = 0
            r5 = r0
        L_0x00be:
            r0 = r5
            return r0
        L_0x00c0:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.f.equals(java.lang.Object):boolean");
    }

    @Override // com.criteo.publisher.model.z
    public String f() {
        return this.e;
    }

    @Override // com.criteo.publisher.model.z
    public String g() {
        return this.f;
    }

    public int hashCode() {
        String str = this.f17590a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.f17591b.hashCode();
        int hashCode3 = this.f17592c.hashCode();
        String str2 = this.f17593d;
        int hashCode4 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.e;
        int hashCode5 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ i) * 1000003) ^ this.g.hashCode();
    }

    public String toString() {
        return "User{deviceId=" + this.f17590a + ", deviceIdType=" + this.f17591b + ", deviceOs=" + this.f17592c + ", mopubConsent=" + this.f17593d + ", uspIab=" + this.e + ", uspOptout=" + this.f + ", ext=" + this.g + "}";
    }
}
