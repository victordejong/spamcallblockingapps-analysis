package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* renamed from: com.criteo.publisher.model.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/d.class */
public abstract class AbstractC2025d extends AbstractC2053x {

    /* renamed from: a */
    public final String f2210a;

    /* renamed from: b */
    public final String f2211b;

    /* renamed from: c */
    public final String f2212c;

    /* renamed from: d */
    public final String f2213d;

    /* renamed from: e */
    public final String f2214e;

    /* renamed from: f */
    public final String f2215f;

    public AbstractC2025d(@Nullable String str, String str2, String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        this.f2210a = str;
        if (str2 != null) {
            this.f2211b = str2;
            if (str3 != null) {
                this.f2212c = str3;
                this.f2213d = str4;
                this.f2214e = str5;
                this.f2215f = str6;
                return;
            }
            throw new NullPointerException("Null deviceOs");
        }
        throw new NullPointerException("Null deviceIdType");
    }

    @Override // com.criteo.publisher.model.AbstractC2053x
    @Nullable
    /* renamed from: a */
    public String mo35787a() {
        return this.f2210a;
    }

    @Override // com.criteo.publisher.model.AbstractC2053x
    @NonNull
    /* renamed from: b */
    public String mo35784b() {
        return this.f2211b;
    }

    @Override // com.criteo.publisher.model.AbstractC2053x
    @NonNull
    /* renamed from: c */
    public String mo35783c() {
        return this.f2212c;
    }

    @Override // com.criteo.publisher.model.AbstractC2053x
    @Nullable
    /* renamed from: d */
    public String mo35782d() {
        return this.f2213d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        if ((r0 = r3.f2214e) != null) goto L_0x0080;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0091, code lost:
        if ((r0 = r3.f2215f) != null) goto L_0x009e;
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
            boolean r0 = r0 instanceof com.criteo.publisher.model.AbstractC2053x
            if (r0 == 0) goto L_0x00b0
            r0 = r4
            com.criteo.publisher.model.x r0 = (com.criteo.publisher.model.AbstractC2053x) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f2210a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0028
            r0 = r4
            java.lang.String r0 = r0.mo35787a()
            if (r0 != 0) goto L_0x00ac
            goto L_0x0033
        L_0x0028:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo35787a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00ac
        L_0x0033:
            r0 = r3
            java.lang.String r0 = r0.f2211b
            r1 = r4
            java.lang.String r1 = r1.mo35784b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00ac
            r0 = r3
            java.lang.String r0 = r0.f2212c
            r1 = r4
            java.lang.String r1 = r1.mo35783c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00ac
            r0 = r3
            java.lang.String r0 = r0.f2213d
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0062
            r0 = r4
            java.lang.String r0 = r0.mo35782d()
            if (r0 != 0) goto L_0x00ac
            goto L_0x006d
        L_0x0062:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo35782d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00ac
        L_0x006d:
            r0 = r3
            java.lang.String r0 = r0.f2214e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0080
            r0 = r4
            java.lang.String r0 = r0.mo35780f()
            if (r0 != 0) goto L_0x00ac
            goto L_0x008b
        L_0x0080:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo35780f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00ac
        L_0x008b:
            r0 = r3
            java.lang.String r0 = r0.f2215f
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x009e
            r0 = r4
            java.lang.String r0 = r0.mo35779g()
            if (r0 != 0) goto L_0x00ac
            goto L_0x00ae
        L_0x009e:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo35779g()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00ac
            goto L_0x00ae
        L_0x00ac:
            r0 = 0
            r5 = r0
        L_0x00ae:
            r0 = r5
            return r0
        L_0x00b0:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.AbstractC2025d.equals(java.lang.Object):boolean");
    }

    @Override // com.criteo.publisher.model.AbstractC2053x
    @Nullable
    /* renamed from: f */
    public String mo35780f() {
        return this.f2214e;
    }

    @Override // com.criteo.publisher.model.AbstractC2053x
    @Nullable
    /* renamed from: g */
    public String mo35779g() {
        return this.f2215f;
    }

    public int hashCode() {
        String str = this.f2210a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.f2211b.hashCode();
        int hashCode3 = this.f2212c.hashCode();
        String str2 = this.f2213d;
        int hashCode4 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f2214e;
        int hashCode5 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f2215f;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ i;
    }

    public String toString() {
        return "User{deviceId=" + this.f2210a + ", deviceIdType=" + this.f2211b + ", deviceOs=" + this.f2212c + ", mopubConsent=" + this.f2213d + ", uspIab=" + this.f2214e + ", uspOptout=" + this.f2215f + CssParser.BLOCK_END;
    }
}
