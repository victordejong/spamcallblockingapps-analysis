package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.AbstractC4640k;
import java.util.Arrays;
/* renamed from: com.google.android.datatransport.cct.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/f.class */
final class C4629f extends AbstractC4640k {

    /* renamed from: a */
    private final long f14157a;

    /* renamed from: b */
    private final Integer f14158b;

    /* renamed from: c */
    private final long f14159c;

    /* renamed from: d */
    private final byte[] f14160d;

    /* renamed from: e */
    private final String f14161e;

    /* renamed from: f */
    private final long f14162f;

    /* renamed from: g */
    private final NetworkConnectionInfo f14163g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.cct.internal.f$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/f$b.class */
    public static final class C4631b extends AbstractC4640k.AbstractC4641a {

        /* renamed from: a */
        private Long f14164a;

        /* renamed from: b */
        private Integer f14165b;

        /* renamed from: c */
        private Long f14166c;

        /* renamed from: d */
        private byte[] f14167d;

        /* renamed from: e */
        private String f14168e;

        /* renamed from: f */
        private Long f14169f;

        /* renamed from: g */
        private NetworkConnectionInfo f14170g;

        @Override // com.google.android.datatransport.cct.internal.AbstractC4640k.AbstractC4641a
        /* renamed from: a */
        public AbstractC4640k mo22101a() {
            String str = "";
            if (this.f14164a == null) {
                str = " eventTimeMs";
            }
            String str2 = str;
            if (this.f14166c == null) {
                str2 = str + " eventUptimeMs";
            }
            String str3 = str2;
            if (this.f14169f == null) {
                str3 = str2 + " timezoneOffsetSeconds";
            }
            if (str3.isEmpty()) {
                return new C4629f(this.f14164a.longValue(), this.f14165b, this.f14166c.longValue(), this.f14167d, this.f14168e, this.f14169f.longValue(), this.f14170g);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4640k.AbstractC4641a
        /* renamed from: b */
        public AbstractC4640k.AbstractC4641a mo22100b(Integer num) {
            this.f14165b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4640k.AbstractC4641a
        /* renamed from: c */
        public AbstractC4640k.AbstractC4641a mo22099c(long j) {
            this.f14164a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4640k.AbstractC4641a
        /* renamed from: d */
        public AbstractC4640k.AbstractC4641a mo22098d(long j) {
            this.f14166c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4640k.AbstractC4641a
        /* renamed from: e */
        public AbstractC4640k.AbstractC4641a mo22097e(NetworkConnectionInfo networkConnectionInfo) {
            this.f14170g = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4640k.AbstractC4641a
        /* renamed from: f */
        AbstractC4640k.AbstractC4641a mo22096f(byte[] bArr) {
            this.f14167d = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4640k.AbstractC4641a
        /* renamed from: g */
        AbstractC4640k.AbstractC4641a mo22095g(String str) {
            this.f14168e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4640k.AbstractC4641a
        /* renamed from: h */
        public AbstractC4640k.AbstractC4641a mo22094h(long j) {
            this.f14169f = Long.valueOf(j);
            return this;
        }
    }

    private C4629f(long j, Integer num, long j2, byte[] bArr, String str, long j3, NetworkConnectionInfo networkConnectionInfo) {
        this.f14157a = j;
        this.f14158b = num;
        this.f14159c = j2;
        this.f14160d = bArr;
        this.f14161e = str;
        this.f14162f = j3;
        this.f14163g = networkConnectionInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4640k
    /* renamed from: b */
    public Integer mo22110b() {
        return this.f14158b;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4640k
    /* renamed from: c */
    public long mo22109c() {
        return this.f14157a;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4640k
    /* renamed from: d */
    public long mo22108d() {
        return this.f14159c;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4640k
    /* renamed from: e */
    public NetworkConnectionInfo mo22107e() {
        return this.f14163g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
        if (r5.f14162f != r0.mo22104h()) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        if ((r0 = r5.f14163g) != null) goto L35;
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
            boolean r0 = r0 instanceof com.google.android.datatransport.cct.internal.AbstractC4640k
            if (r0 == 0) goto Lc0
            r0 = r6
            com.google.android.datatransport.cct.internal.k r0 = (com.google.android.datatransport.cct.internal.AbstractC4640k) r0
            r8 = r0
            r0 = r5
            long r0 = r0.f14157a
            r1 = r8
            long r1 = r1.mo22109c()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            java.lang.Integer r0 = r0.f14158b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L34
            r0 = r8
            java.lang.Integer r0 = r0.mo22110b()
            if (r0 != 0) goto Lbc
            goto L3f
        L34:
            r0 = r6
            r1 = r8
            java.lang.Integer r1 = r1.mo22110b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L3f:
            r0 = r5
            long r0 = r0.f14159c
            r1 = r8
            long r1 = r1.mo22108d()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            byte[] r0 = r0.f14160d
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof com.google.android.datatransport.cct.internal.C4629f
            if (r0 == 0) goto L63
            r0 = r8
            com.google.android.datatransport.cct.internal.f r0 = (com.google.android.datatransport.cct.internal.C4629f) r0
            byte[] r0 = r0.f14160d
            r6 = r0
            goto L68
        L63:
            r0 = r8
            byte[] r0 = r0.mo22106f()
            r6 = r0
        L68:
            r0 = r9
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto Lbc
            r0 = r5
            java.lang.String r0 = r0.f14161e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L84
            r0 = r8
            java.lang.String r0 = r0.mo22105g()
            if (r0 != 0) goto Lbc
            goto L8f
        L84:
            r0 = r6
            r1 = r8
            java.lang.String r1 = r1.mo22105g()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L8f:
            r0 = r5
            long r0 = r0.f14162f
            r1 = r8
            long r1 = r1.mo22104h()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo r0 = r0.f14163g
            r6 = r0
            r0 = r6
            if (r0 != 0) goto Lae
            r0 = r8
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo r0 = r0.mo22107e()
            if (r0 != 0) goto Lbc
            goto Lbe
        Lae:
            r0 = r6
            r1 = r8
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo r1 = r1.mo22107e()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
            goto Lbe
        Lbc:
            r0 = 0
            r7 = r0
        Lbe:
            r0 = r7
            return r0
        Lc0:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.cct.internal.C4629f.equals(java.lang.Object):boolean");
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4640k
    /* renamed from: f */
    public byte[] mo22106f() {
        return this.f14160d;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4640k
    /* renamed from: g */
    public String mo22105g() {
        return this.f14161e;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4640k
    /* renamed from: h */
    public long mo22104h() {
        return this.f14162f;
    }

    public int hashCode() {
        long j = this.f14157a;
        int i = (int) (j ^ (j >>> 32));
        Integer num = this.f14158b;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.f14159c;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        int hashCode2 = Arrays.hashCode(this.f14160d);
        String str = this.f14161e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f14162f;
        int i4 = (int) ((j3 >>> 32) ^ j3);
        NetworkConnectionInfo networkConnectionInfo = this.f14163g;
        if (networkConnectionInfo != null) {
            i2 = networkConnectionInfo.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i4) * 1000003) ^ i2;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f14157a + ", eventCode=" + this.f14158b + ", eventUptimeMs=" + this.f14159c + ", sourceExtension=" + Arrays.toString(this.f14160d) + ", sourceExtensionJsonProto3=" + this.f14161e + ", timezoneOffsetSeconds=" + this.f14162f + ", networkConnectionInfo=" + this.f14163g + "}";
    }
}
