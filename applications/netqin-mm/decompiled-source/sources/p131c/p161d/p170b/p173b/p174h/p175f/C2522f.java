package p131c.p161d.p170b.p173b.p174h.p175f;

import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import java.util.Arrays;
import p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k;
/* renamed from: c.d.b.b.h.f.f */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/f.class */
public final class C2522f extends AbstractC2533k {

    /* renamed from: a */
    public final long f9537a;

    /* renamed from: b */
    public final Integer f9538b;

    /* renamed from: c */
    public final long f9539c;

    /* renamed from: d */
    public final byte[] f9540d;

    /* renamed from: e */
    public final String f9541e;

    /* renamed from: f */
    public final long f9542f;

    /* renamed from: g */
    public final NetworkConnectionInfo f9543g;

    /* renamed from: c.d.b.b.h.f.f$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/f$b.class */
    public static final class C2524b extends AbstractC2533k.AbstractC2534a {

        /* renamed from: a */
        public Long f9544a;

        /* renamed from: b */
        public Integer f9545b;

        /* renamed from: c */
        public Long f9546c;

        /* renamed from: d */
        public byte[] f9547d;

        /* renamed from: e */
        public String f9548e;

        /* renamed from: f */
        public Long f9549f;

        /* renamed from: g */
        public NetworkConnectionInfo f9550g;

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k.AbstractC2534a
        /* renamed from: a */
        public AbstractC2533k.AbstractC2534a mo29590a(long j) {
            this.f9544a = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k.AbstractC2534a
        /* renamed from: a */
        public AbstractC2533k.AbstractC2534a mo29589a(NetworkConnectionInfo networkConnectionInfo) {
            this.f9550g = networkConnectionInfo;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k.AbstractC2534a
        /* renamed from: a */
        public AbstractC2533k.AbstractC2534a mo29588a(Integer num) {
            this.f9545b = num;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k.AbstractC2534a
        /* renamed from: a */
        public AbstractC2533k.AbstractC2534a mo29587a(String str) {
            this.f9548e = str;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k.AbstractC2534a
        /* renamed from: a */
        public AbstractC2533k.AbstractC2534a mo29586a(byte[] bArr) {
            this.f9547d = bArr;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k.AbstractC2534a
        /* renamed from: a */
        public AbstractC2533k mo29591a() {
            String str = "";
            if (this.f9544a == null) {
                str = " eventTimeMs";
            }
            String str2 = str;
            if (this.f9546c == null) {
                str2 = str + " eventUptimeMs";
            }
            String str3 = str2;
            if (this.f9549f == null) {
                str3 = str2 + " timezoneOffsetSeconds";
            }
            if (str3.isEmpty()) {
                return new C2522f(this.f9544a.longValue(), this.f9545b, this.f9546c.longValue(), this.f9547d, this.f9548e, this.f9549f.longValue(), this.f9550g);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k.AbstractC2534a
        /* renamed from: b */
        public AbstractC2533k.AbstractC2534a mo29585b(long j) {
            this.f9546c = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k.AbstractC2534a
        /* renamed from: c */
        public AbstractC2533k.AbstractC2534a mo29584c(long j) {
            this.f9549f = Long.valueOf(j);
            return this;
        }
    }

    public C2522f(long j, Integer num, long j2, byte[] bArr, String str, long j3, NetworkConnectionInfo networkConnectionInfo) {
        this.f9537a = j;
        this.f9538b = num;
        this.f9539c = j2;
        this.f9540d = bArr;
        this.f9541e = str;
        this.f9542f = j3;
        this.f9543g = networkConnectionInfo;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k
    /* renamed from: a */
    public Integer mo29601a() {
        return this.f9538b;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k
    /* renamed from: b */
    public long mo29598b() {
        return this.f9537a;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k
    /* renamed from: c */
    public long mo29597c() {
        return this.f9539c;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k
    /* renamed from: d */
    public NetworkConnectionInfo mo29596d() {
        return this.f9543g;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k
    /* renamed from: e */
    public byte[] mo29595e() {
        return this.f9540d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
        if (r5.f9542f != r0.mo29593g()) goto L_0x00bc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        if ((r0 = r5.f9543g) != null) goto L_0x00ae;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r6
            boolean r0 = r0 instanceof p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k
            if (r0 == 0) goto L_0x00c0
            r0 = r6
            c.d.b.b.h.f.k r0 = (p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k) r0
            r8 = r0
            r0 = r5
            long r0 = r0.f9537a
            r1 = r8
            long r1 = r1.mo29598b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00bc
            r0 = r5
            java.lang.Integer r0 = r0.f9538b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0034
            r0 = r8
            java.lang.Integer r0 = r0.mo29601a()
            if (r0 != 0) goto L_0x00bc
            goto L_0x003f
        L_0x0034:
            r0 = r6
            r1 = r8
            java.lang.Integer r1 = r1.mo29601a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
        L_0x003f:
            r0 = r5
            long r0 = r0.f9539c
            r1 = r8
            long r1 = r1.mo29597c()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00bc
            r0 = r5
            byte[] r0 = r0.f9540d
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof p131c.p161d.p170b.p173b.p174h.p175f.C2522f
            if (r0 == 0) goto L_0x0063
            r0 = r8
            c.d.b.b.h.f.f r0 = (p131c.p161d.p170b.p173b.p174h.p175f.C2522f) r0
            byte[] r0 = r0.f9540d
            r6 = r0
            goto L_0x0068
        L_0x0063:
            r0 = r8
            byte[] r0 = r0.mo29595e()
            r6 = r0
        L_0x0068:
            r0 = r9
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x00bc
            r0 = r5
            java.lang.String r0 = r0.f9541e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0084
            r0 = r8
            java.lang.String r0 = r0.mo29594f()
            if (r0 != 0) goto L_0x00bc
            goto L_0x008f
        L_0x0084:
            r0 = r6
            r1 = r8
            java.lang.String r1 = r1.mo29594f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
        L_0x008f:
            r0 = r5
            long r0 = r0.f9542f
            r1 = r8
            long r1 = r1.mo29593g()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00bc
            r0 = r5
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo r0 = r0.f9543g
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x00ae
            r0 = r8
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo r0 = r0.mo29596d()
            if (r0 != 0) goto L_0x00bc
            goto L_0x00be
        L_0x00ae:
            r0 = r6
            r1 = r8
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo r1 = r1.mo29596d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
            goto L_0x00be
        L_0x00bc:
            r0 = 0
            r7 = r0
        L_0x00be:
            r0 = r7
            return r0
        L_0x00c0:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p173b.p174h.p175f.C2522f.equals(java.lang.Object):boolean");
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k
    /* renamed from: f */
    public String mo29594f() {
        return this.f9541e;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2533k
    /* renamed from: g */
    public long mo29593g() {
        return this.f9542f;
    }

    public int hashCode() {
        long j = this.f9537a;
        int i = (int) (j ^ (j >>> 32));
        Integer num = this.f9538b;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.f9539c;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        int hashCode2 = Arrays.hashCode(this.f9540d);
        String str = this.f9541e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f9542f;
        int i4 = (int) ((j3 >>> 32) ^ j3);
        NetworkConnectionInfo networkConnectionInfo = this.f9543g;
        if (networkConnectionInfo != null) {
            i2 = networkConnectionInfo.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i4) * 1000003) ^ i2;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f9537a + ", eventCode=" + this.f9538b + ", eventUptimeMs=" + this.f9539c + ", sourceExtension=" + Arrays.toString(this.f9540d) + ", sourceExtensionJsonProto3=" + this.f9541e + ", timezoneOffsetSeconds=" + this.f9542f + ", networkConnectionInfo=" + this.f9543g + "}";
    }
}
