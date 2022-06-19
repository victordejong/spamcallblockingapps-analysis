package p306z5;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.C1676a;
import p237t.C4350g;
import p306z5.AbstractC5107d;
/* renamed from: z5.a */
/* loaded from: classes-dex2jar.jar:z5/a.class */
public final class C5102a extends AbstractC5107d {

    /* renamed from: b */
    public final String f15459b;

    /* renamed from: c */
    public final int f15460c;

    /* renamed from: d */
    public final String f15461d;

    /* renamed from: e */
    public final String f15462e;

    /* renamed from: f */
    public final long f15463f;

    /* renamed from: g */
    public final long f15464g;

    /* renamed from: h */
    public final String f15465h;

    /* renamed from: z5.a$b */
    /* loaded from: classes-dex2jar.jar:z5/a$b.class */
    public static final class C5104b extends AbstractC5107d.AbstractC5108a {

        /* renamed from: a */
        public String f15466a;

        /* renamed from: b */
        public int f15467b;

        /* renamed from: c */
        public String f15468c;

        /* renamed from: d */
        public String f15469d;

        /* renamed from: e */
        public Long f15470e;

        /* renamed from: f */
        public Long f15471f;

        /* renamed from: g */
        public String f15472g;

        public C5104b() {
        }

        public C5104b(AbstractC5107d abstractC5107d, C5103a c5103a) {
            C5102a c5102a = (C5102a) abstractC5107d;
            this.f15466a = c5102a.f15459b;
            this.f15467b = c5102a.f15460c;
            this.f15468c = c5102a.f15461d;
            this.f15469d = c5102a.f15462e;
            this.f15470e = Long.valueOf(c5102a.f15463f);
            this.f15471f = Long.valueOf(c5102a.f15464g);
            this.f15472g = c5102a.f15465h;
        }

        @Override // p306z5.AbstractC5107d.AbstractC5108a
        /* renamed from: a */
        public AbstractC5107d mo19a() {
            String str = this.f15467b == 0 ? " registrationStatus" : "";
            String str2 = str;
            if (this.f15470e == null) {
                str2 = C1676a.m4789h(str, " expiresInSecs");
            }
            String str3 = str2;
            if (this.f15471f == null) {
                str3 = C1676a.m4789h(str2, " tokenCreationEpochInSecs");
            }
            if (str3.isEmpty()) {
                return new C5102a(this.f15466a, this.f15467b, this.f15468c, this.f15469d, this.f15470e.longValue(), this.f15471f.longValue(), this.f15472g, null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str3));
        }

        @Override // p306z5.AbstractC5107d.AbstractC5108a
        /* renamed from: b */
        public AbstractC5107d.AbstractC5108a mo18b(int i) {
            if (i != 0) {
                this.f15467b = i;
                return this;
            }
            throw new NullPointerException("Null registrationStatus");
        }

        /* renamed from: c */
        public AbstractC5107d.AbstractC5108a m35c(long j) {
            this.f15470e = Long.valueOf(j);
            return this;
        }

        /* renamed from: d */
        public AbstractC5107d.AbstractC5108a m34d(long j) {
            this.f15471f = Long.valueOf(j);
            return this;
        }
    }

    public C5102a(String str, int i, String str2, String str3, long j, long j2, String str4, C5103a c5103a) {
        this.f15459b = str;
        this.f15460c = i;
        this.f15461d = str2;
        this.f15462e = str3;
        this.f15463f = j;
        this.f15464g = j2;
        this.f15465h = str4;
    }

    @Override // p306z5.AbstractC5107d
    /* renamed from: a */
    public String mo30a() {
        return this.f15461d;
    }

    @Override // p306z5.AbstractC5107d
    /* renamed from: b */
    public long mo29b() {
        return this.f15463f;
    }

    @Override // p306z5.AbstractC5107d
    /* renamed from: c */
    public String mo28c() {
        return this.f15459b;
    }

    @Override // p306z5.AbstractC5107d
    /* renamed from: d */
    public String mo27d() {
        return this.f15465h;
    }

    @Override // p306z5.AbstractC5107d
    /* renamed from: e */
    public String mo26e() {
        return this.f15462e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0065, code lost:
        if ((r0 = r5.f15462e) != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0086, code lost:
        if (r5.f15463f != r0.mo29b()) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
        if (r5.f15464g != r0.mo24g()) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009b, code lost:
        if ((r0 = r5.f15465h) != null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r6
            boolean r0 = r0 instanceof p306z5.AbstractC5107d
            if (r0 == 0) goto Lba
            r0 = r6
            z5.d r0 = (p306z5.AbstractC5107d) r0
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.f15459b
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L28
            r0 = r6
            java.lang.String r0 = r0.mo28c()
            if (r0 != 0) goto Lb6
            goto L33
        L28:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo28c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb6
        L33:
            r0 = r5
            int r0 = r0.f15460c
            r1 = r6
            int r1 = r1.mo25f()
            boolean r0 = p237t.C4350g.m1022b(r0, r1)
            if (r0 == 0) goto Lb6
            r0 = r5
            java.lang.String r0 = r0.f15461d
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L54
            r0 = r6
            java.lang.String r0 = r0.mo30a()
            if (r0 != 0) goto Lb6
            goto L5f
        L54:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo30a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb6
        L5f:
            r0 = r5
            java.lang.String r0 = r0.f15462e
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L72
            r0 = r6
            java.lang.String r0 = r0.mo26e()
            if (r0 != 0) goto Lb6
            goto L7d
        L72:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo26e()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb6
        L7d:
            r0 = r5
            long r0 = r0.f15463f
            r1 = r6
            long r1 = r1.mo29b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lb6
            r0 = r5
            long r0 = r0.f15464g
            r1 = r6
            long r1 = r1.mo24g()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lb6
            r0 = r5
            java.lang.String r0 = r0.f15465h
            r8 = r0
            r0 = r8
            if (r0 != 0) goto La8
            r0 = r6
            java.lang.String r0 = r0.mo27d()
            if (r0 != 0) goto Lb6
            goto Lb8
        La8:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo27d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb6
            goto Lb8
        Lb6:
            r0 = 0
            r7 = r0
        Lb8:
            r0 = r7
            return r0
        Lba:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p306z5.C5102a.equals(java.lang.Object):boolean");
    }

    @Override // p306z5.AbstractC5107d
    /* renamed from: f */
    public int mo25f() {
        return this.f15460c;
    }

    @Override // p306z5.AbstractC5107d
    /* renamed from: g */
    public long mo24g() {
        return this.f15464g;
    }

    public int hashCode() {
        String str = this.f15459b;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int m1021c = C4350g.m1021c(this.f15460c);
        String str2 = this.f15461d;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f15462e;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        long j = this.f15463f;
        int i2 = (int) (j ^ (j >>> 32));
        long j2 = this.f15464g;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        String str4 = this.f15465h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ m1021c) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i;
    }

    @Override // p306z5.AbstractC5107d
    /* renamed from: k */
    public AbstractC5107d.AbstractC5108a mo20k() {
        return new C5104b(this, null);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("PersistedInstallationEntry{firebaseInstallationId=");
        m8752j.append(this.f15459b);
        m8752j.append(", registrationStatus=");
        m8752j.append(C0608b.m7619p(this.f15460c));
        m8752j.append(", authToken=");
        m8752j.append(this.f15461d);
        m8752j.append(", refreshToken=");
        m8752j.append(this.f15462e);
        m8752j.append(", expiresInSecs=");
        m8752j.append(this.f15463f);
        m8752j.append(", tokenCreationEpochInSecs=");
        m8752j.append(this.f15464g);
        m8752j.append(", fisError=");
        return C0082b.m8754h(m8752j, this.f15465h, "}");
    }
}
