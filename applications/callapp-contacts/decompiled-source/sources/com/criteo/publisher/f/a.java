package com.criteo.publisher.f;

import com.criteo.publisher.f.s;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/a.class */
abstract class a extends s {

    /* renamed from: a  reason: collision with root package name */
    private final Long f17233a;

    /* renamed from: b  reason: collision with root package name */
    private final Long f17234b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f17235c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f17236d;
    private final Long e;
    private final String f;
    private final String g;
    private final Integer h;
    private final Integer i;
    private final boolean j;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/a$b.class */
    static final class b extends s.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f17237a;

        /* renamed from: b  reason: collision with root package name */
        private Long f17238b;

        /* renamed from: c  reason: collision with root package name */
        private Boolean f17239c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f17240d;
        private Long e;
        private String f;
        private String g;
        private Integer h;
        private Integer i;
        private Boolean j;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(s sVar) {
            this.f17237a = sVar.a();
            this.f17238b = sVar.b();
            this.f17239c = Boolean.valueOf(sVar.c());
            this.f17240d = Boolean.valueOf(sVar.d());
            this.e = sVar.e();
            this.f = sVar.f();
            this.g = sVar.g();
            this.h = sVar.h();
            this.i = sVar.i();
            this.j = Boolean.valueOf(sVar.j());
        }

        @Override // com.criteo.publisher.f.s.a
        final s.a a(Integer num) {
            this.h = num;
            return this;
        }

        @Override // com.criteo.publisher.f.s.a
        final s.a a(Long l) {
            this.f17237a = l;
            return this;
        }

        @Override // com.criteo.publisher.f.s.a
        final s.a a(String str) {
            Objects.requireNonNull(str, "Null impressionId");
            this.f = str;
            return this;
        }

        @Override // com.criteo.publisher.f.s.a
        final s.a a(boolean z) {
            this.f17239c = Boolean.valueOf(z);
            return this;
        }

        @Override // com.criteo.publisher.f.s.a
        final s a() {
            String str = "";
            if (this.f17239c == null) {
                str = " cdbCallTimeout";
            }
            String str2 = str;
            if (this.f17240d == null) {
                str2 = str + " cachedBidUsed";
            }
            String str3 = str2;
            if (this.f == null) {
                str3 = str2 + " impressionId";
            }
            String str4 = str3;
            if (this.j == null) {
                str4 = str3 + " readyToSend";
            }
            if (str4.isEmpty()) {
                return new i(this.f17237a, this.f17238b, this.f17239c.booleanValue(), this.f17240d.booleanValue(), this.e, this.f, this.g, this.h, this.i, this.j.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        @Override // com.criteo.publisher.f.s.a
        final s.a b(Integer num) {
            this.i = num;
            return this;
        }

        @Override // com.criteo.publisher.f.s.a
        final s.a b(Long l) {
            this.f17238b = l;
            return this;
        }

        @Override // com.criteo.publisher.f.s.a
        final s.a b(String str) {
            this.g = str;
            return this;
        }

        @Override // com.criteo.publisher.f.s.a
        final s.a b(boolean z) {
            this.f17240d = Boolean.valueOf(z);
            return this;
        }

        @Override // com.criteo.publisher.f.s.a
        final s.a c(Long l) {
            this.e = l;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.f.s.a
        public final s.a c(boolean z) {
            this.j = Boolean.valueOf(z);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Long l, Long l2, boolean z, boolean z2, Long l3, String str, String str2, Integer num, Integer num2, boolean z3) {
        this.f17233a = l;
        this.f17234b = l2;
        this.f17235c = z;
        this.f17236d = z2;
        this.e = l3;
        Objects.requireNonNull(str, "Null impressionId");
        this.f = str;
        this.g = str2;
        this.h = num;
        this.i = num2;
        this.j = z3;
    }

    @Override // com.criteo.publisher.f.s
    final Long a() {
        return this.f17233a;
    }

    @Override // com.criteo.publisher.f.s
    final Long b() {
        return this.f17234b;
    }

    @Override // com.criteo.publisher.f.s
    final boolean c() {
        return this.f17235c;
    }

    @Override // com.criteo.publisher.f.s
    final boolean d() {
        return this.f17236d;
    }

    @Override // com.criteo.publisher.f.s
    final Long e() {
        return this.e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0090, code lost:
        if (r3.f.equals(r0.f()) == false) goto L_0x00fb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0099, code lost:
        if ((r0 = r3.g) != null) goto L_0x00a6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b7, code lost:
        if ((r0 = r3.h) != null) goto L_0x00c4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d5, code lost:
        if ((r0 = r3.i) != null) goto L_0x00e2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f5, code lost:
        if (r3.j != r0.j()) goto L_0x00fb;
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
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.f.a.equals(java.lang.Object):boolean");
    }

    @Override // com.criteo.publisher.f.s
    final String f() {
        return this.f;
    }

    @Override // com.criteo.publisher.f.s
    final String g() {
        return this.g;
    }

    @Override // com.criteo.publisher.f.s
    final Integer h() {
        return this.h;
    }

    public int hashCode() {
        Long l = this.f17233a;
        int i = 0;
        int hashCode = l == null ? 0 : l.hashCode();
        Long l2 = this.f17234b;
        int hashCode2 = l2 == null ? 0 : l2.hashCode();
        int i2 = 1231;
        int i3 = this.f17235c ? 1231 : 1237;
        int i4 = this.f17236d ? 1231 : 1237;
        Long l3 = this.e;
        int hashCode3 = l3 == null ? 0 : l3.hashCode();
        int hashCode4 = this.f.hashCode();
        String str = this.g;
        int hashCode5 = str == null ? 0 : str.hashCode();
        Integer num = this.h;
        int hashCode6 = num == null ? 0 : num.hashCode();
        Integer num2 = this.i;
        if (num2 != null) {
            i = num2.hashCode();
        }
        if (!this.j) {
            i2 = 1237;
        }
        return ((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i) * 1000003) ^ i2;
    }

    @Override // com.criteo.publisher.f.s
    final Integer i() {
        return this.i;
    }

    @Override // com.criteo.publisher.f.s
    final boolean j() {
        return this.j;
    }

    @Override // com.criteo.publisher.f.s
    final s.a k() {
        return new b(this);
    }

    public String toString() {
        return "Metric{cdbCallStartTimestamp=" + this.f17233a + ", cdbCallEndTimestamp=" + this.f17234b + ", cdbCallTimeout=" + this.f17235c + ", cachedBidUsed=" + this.f17236d + ", elapsedTimestamp=" + this.e + ", impressionId=" + this.f + ", requestGroupId=" + this.g + ", zoneId=" + this.h + ", profileId=" + this.i + ", readyToSend=" + this.j + "}";
    }
}
