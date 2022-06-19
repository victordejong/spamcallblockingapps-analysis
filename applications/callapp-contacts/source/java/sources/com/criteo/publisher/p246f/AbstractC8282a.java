package com.criteo.publisher.p246f;

import com.criteo.publisher.p246f.AbstractC8320s;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.criteo.publisher.f.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/a.class */
public abstract class AbstractC8282a extends AbstractC8320s {

    /* renamed from: a */
    private final Long f29853a;

    /* renamed from: b */
    private final Long f29854b;

    /* renamed from: c */
    private final boolean f29855c;

    /* renamed from: d */
    private final boolean f29856d;

    /* renamed from: e */
    private final Long f29857e;

    /* renamed from: f */
    private final String f29858f;

    /* renamed from: g */
    private final String f29859g;

    /* renamed from: h */
    private final Integer f29860h;

    /* renamed from: i */
    private final Integer f29861i;

    /* renamed from: j */
    private final boolean f29862j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.f.a$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/a$b.class */
    public static final class C8284b extends AbstractC8320s.AbstractC8321a {

        /* renamed from: a */
        private Long f29863a;

        /* renamed from: b */
        private Long f29864b;

        /* renamed from: c */
        private Boolean f29865c;

        /* renamed from: d */
        private Boolean f29866d;

        /* renamed from: e */
        private Long f29867e;

        /* renamed from: f */
        private String f29868f;

        /* renamed from: g */
        private String f29869g;

        /* renamed from: h */
        private Integer f29870h;

        /* renamed from: i */
        private Integer f29871i;

        /* renamed from: j */
        private Boolean f29872j;

        public C8284b() {
        }

        private C8284b(AbstractC8320s abstractC8320s) {
            this.f29863a = abstractC8320s.mo25884a();
            this.f29864b = abstractC8320s.mo25881b();
            this.f29865c = Boolean.valueOf(abstractC8320s.mo25880c());
            this.f29866d = Boolean.valueOf(abstractC8320s.mo25879d());
            this.f29867e = abstractC8320s.mo25878e();
            this.f29868f = abstractC8320s.mo25877f();
            this.f29869g = abstractC8320s.mo25876g();
            this.f29870h = abstractC8320s.mo25875h();
            this.f29871i = abstractC8320s.mo25874i();
            this.f29872j = Boolean.valueOf(abstractC8320s.mo25873j());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: a */
        public final AbstractC8320s.AbstractC8321a mo25869a(Integer num) {
            this.f29870h = num;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: a */
        public final AbstractC8320s.AbstractC8321a mo25868a(Long l) {
            this.f29863a = l;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: a */
        public final AbstractC8320s.AbstractC8321a mo25867a(String str) {
            Objects.requireNonNull(str, "Null impressionId");
            this.f29868f = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: a */
        public final AbstractC8320s.AbstractC8321a mo25866a(boolean z) {
            this.f29865c = Boolean.valueOf(z);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: a */
        public final AbstractC8320s mo25870a() {
            String str = "";
            if (this.f29865c == null) {
                str = " cdbCallTimeout";
            }
            String str2 = str;
            if (this.f29866d == null) {
                str2 = str + " cachedBidUsed";
            }
            String str3 = str2;
            if (this.f29868f == null) {
                str3 = str2 + " impressionId";
            }
            String str4 = str3;
            if (this.f29872j == null) {
                str4 = str3 + " readyToSend";
            }
            if (str4.isEmpty()) {
                return new C8299i(this.f29863a, this.f29864b, this.f29865c.booleanValue(), this.f29866d.booleanValue(), this.f29867e, this.f29868f, this.f29869g, this.f29870h, this.f29871i, this.f29872j.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: b */
        public final AbstractC8320s.AbstractC8321a mo25865b(Integer num) {
            this.f29871i = num;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: b */
        public final AbstractC8320s.AbstractC8321a mo25864b(Long l) {
            this.f29864b = l;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: b */
        public final AbstractC8320s.AbstractC8321a mo25863b(String str) {
            this.f29869g = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: b */
        public final AbstractC8320s.AbstractC8321a mo25862b(boolean z) {
            this.f29866d = Boolean.valueOf(z);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: c */
        public final AbstractC8320s.AbstractC8321a mo25861c(Long l) {
            this.f29867e = l;
            return this;
        }

        @Override // com.criteo.publisher.p246f.AbstractC8320s.AbstractC8321a
        /* renamed from: c */
        public final AbstractC8320s.AbstractC8321a mo25860c(boolean z) {
            this.f29872j = Boolean.valueOf(z);
            return this;
        }
    }

    public AbstractC8282a(Long l, Long l2, boolean z, boolean z2, Long l3, String str, String str2, Integer num, Integer num2, boolean z3) {
        this.f29853a = l;
        this.f29854b = l2;
        this.f29855c = z;
        this.f29856d = z2;
        this.f29857e = l3;
        Objects.requireNonNull(str, "Null impressionId");
        this.f29858f = str;
        this.f29859g = str2;
        this.f29860h = num;
        this.f29861i = num2;
        this.f29862j = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: a */
    public final Long mo25884a() {
        return this.f29853a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: b */
    public final Long mo25881b() {
        return this.f29854b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: c */
    public final boolean mo25880c() {
        return this.f29855c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: d */
    public final boolean mo25879d() {
        return this.f29856d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: e */
    public final Long mo25878e() {
        return this.f29857e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0090, code lost:
        if (r3.f29858f.equals(r0.mo25877f()) == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0099, code lost:
        if ((r0 = r3.f29859g) != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b7, code lost:
        if ((r0 = r3.f29860h) != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d5, code lost:
        if ((r0 = r3.f29861i) != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f5, code lost:
        if (r3.f29862j != r0.mo25873j()) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.p246f.AbstractC8282a.equals(java.lang.Object):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: f */
    public final String mo25877f() {
        return this.f29858f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: g */
    public final String mo25876g() {
        return this.f29859g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: h */
    public final Integer mo25875h() {
        return this.f29860h;
    }

    public int hashCode() {
        Long l = this.f29853a;
        int i = 0;
        int hashCode = l == null ? 0 : l.hashCode();
        Long l2 = this.f29854b;
        int hashCode2 = l2 == null ? 0 : l2.hashCode();
        int i2 = 1231;
        int i3 = this.f29855c ? 1231 : 1237;
        int i4 = this.f29856d ? 1231 : 1237;
        Long l3 = this.f29857e;
        int hashCode3 = l3 == null ? 0 : l3.hashCode();
        int hashCode4 = this.f29858f.hashCode();
        String str = this.f29859g;
        int hashCode5 = str == null ? 0 : str.hashCode();
        Integer num = this.f29860h;
        int hashCode6 = num == null ? 0 : num.hashCode();
        Integer num2 = this.f29861i;
        if (num2 != null) {
            i = num2.hashCode();
        }
        if (!this.f29862j) {
            i2 = 1237;
        }
        return ((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i) * 1000003) ^ i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: i */
    public final Integer mo25874i() {
        return this.f29861i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: j */
    public final boolean mo25873j() {
        return this.f29862j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.p246f.AbstractC8320s
    /* renamed from: k */
    public final AbstractC8320s.AbstractC8321a mo25872k() {
        return new C8284b(this);
    }

    public String toString() {
        return "Metric{cdbCallStartTimestamp=" + this.f29853a + ", cdbCallEndTimestamp=" + this.f29854b + ", cdbCallTimeout=" + this.f29855c + ", cachedBidUsed=" + this.f29856d + ", elapsedTimestamp=" + this.f29857e + ", impressionId=" + this.f29858f + ", requestGroupId=" + this.f29859g + ", zoneId=" + this.f29860h + ", profileId=" + this.f29861i + ", readyToSend=" + this.f29862j + "}";
    }
}
