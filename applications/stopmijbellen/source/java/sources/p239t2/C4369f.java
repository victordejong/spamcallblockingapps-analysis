package p239t2;

import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import p239t2.AbstractC4380l;
/* renamed from: t2.f */
/* loaded from: classes-dex2jar.jar:t2/f.class */
public final class C4369f extends AbstractC4380l {

    /* renamed from: a */
    public final long f13643a;

    /* renamed from: b */
    public final Integer f13644b;

    /* renamed from: c */
    public final long f13645c;

    /* renamed from: d */
    public final byte[] f13646d;

    /* renamed from: e */
    public final String f13647e;

    /* renamed from: f */
    public final long f13648f;

    /* renamed from: g */
    public final AbstractC4384o f13649g;

    /* renamed from: t2.f$b */
    /* loaded from: classes-dex2jar.jar:t2/f$b.class */
    public static final class C4371b extends AbstractC4380l.AbstractC4381a {

        /* renamed from: a */
        public Long f13650a;

        /* renamed from: b */
        public Integer f13651b;

        /* renamed from: c */
        public Long f13652c;

        /* renamed from: d */
        public byte[] f13653d;

        /* renamed from: e */
        public String f13654e;

        /* renamed from: f */
        public Long f13655f;

        /* renamed from: g */
        public AbstractC4384o f13656g;
    }

    public C4369f(long j, Integer num, long j2, byte[] bArr, String str, long j3, AbstractC4384o abstractC4384o, C4370a c4370a) {
        this.f13643a = j;
        this.f13644b = num;
        this.f13645c = j2;
        this.f13646d = bArr;
        this.f13647e = str;
        this.f13648f = j3;
        this.f13649g = abstractC4384o;
    }

    @Override // p239t2.AbstractC4380l
    /* renamed from: a */
    public Integer mo993a() {
        return this.f13644b;
    }

    @Override // p239t2.AbstractC4380l
    /* renamed from: b */
    public long mo992b() {
        return this.f13643a;
    }

    @Override // p239t2.AbstractC4380l
    /* renamed from: c */
    public long mo991c() {
        return this.f13645c;
    }

    @Override // p239t2.AbstractC4380l
    /* renamed from: d */
    public AbstractC4384o mo990d() {
        return this.f13649g;
    }

    @Override // p239t2.AbstractC4380l
    /* renamed from: e */
    public byte[] mo989e() {
        return this.f13646d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
        if (r5.f13648f != r0.mo987g()) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        if ((r0 = r5.f13649g) != null) goto L35;
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
            boolean r0 = r0 instanceof p239t2.AbstractC4380l
            if (r0 == 0) goto Lc0
            r0 = r6
            t2.l r0 = (p239t2.AbstractC4380l) r0
            r8 = r0
            r0 = r5
            long r0 = r0.f13643a
            r1 = r8
            long r1 = r1.mo992b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            java.lang.Integer r0 = r0.f13644b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L34
            r0 = r8
            java.lang.Integer r0 = r0.mo993a()
            if (r0 != 0) goto Lbc
            goto L3f
        L34:
            r0 = r6
            r1 = r8
            java.lang.Integer r1 = r1.mo993a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L3f:
            r0 = r5
            long r0 = r0.f13645c
            r1 = r8
            long r1 = r1.mo991c()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            byte[] r0 = r0.f13646d
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof p239t2.C4369f
            if (r0 == 0) goto L63
            r0 = r8
            t2.f r0 = (p239t2.C4369f) r0
            byte[] r0 = r0.f13646d
            r6 = r0
            goto L68
        L63:
            r0 = r8
            byte[] r0 = r0.mo989e()
            r6 = r0
        L68:
            r0 = r9
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto Lbc
            r0 = r5
            java.lang.String r0 = r0.f13647e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L84
            r0 = r8
            java.lang.String r0 = r0.mo988f()
            if (r0 != 0) goto Lbc
            goto L8f
        L84:
            r0 = r6
            r1 = r8
            java.lang.String r1 = r1.mo988f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L8f:
            r0 = r5
            long r0 = r0.f13648f
            r1 = r8
            long r1 = r1.mo987g()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            t2.o r0 = r0.f13649g
            r6 = r0
            r0 = r6
            if (r0 != 0) goto Lae
            r0 = r8
            t2.o r0 = r0.mo990d()
            if (r0 != 0) goto Lbc
            goto Lbe
        Lae:
            r0 = r6
            r1 = r8
            t2.o r1 = r1.mo990d()
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
        throw new UnsupportedOperationException("Method not decompiled: p239t2.C4369f.equals(java.lang.Object):boolean");
    }

    @Override // p239t2.AbstractC4380l
    /* renamed from: f */
    public String mo988f() {
        return this.f13647e;
    }

    @Override // p239t2.AbstractC4380l
    /* renamed from: g */
    public long mo987g() {
        return this.f13648f;
    }

    public int hashCode() {
        long j = this.f13643a;
        int i = (int) (j ^ (j >>> 32));
        Integer num = this.f13644b;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.f13645c;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        int hashCode2 = Arrays.hashCode(this.f13646d);
        String str = this.f13647e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f13648f;
        int i4 = (int) ((j3 >>> 32) ^ j3);
        AbstractC4384o abstractC4384o = this.f13649g;
        if (abstractC4384o != null) {
            i2 = abstractC4384o.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i4) * 1000003) ^ i2;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("LogEvent{eventTimeMs=");
        m8752j.append(this.f13643a);
        m8752j.append(", eventCode=");
        m8752j.append(this.f13644b);
        m8752j.append(", eventUptimeMs=");
        m8752j.append(this.f13645c);
        m8752j.append(", sourceExtension=");
        m8752j.append(Arrays.toString(this.f13646d));
        m8752j.append(", sourceExtensionJsonProto3=");
        m8752j.append(this.f13647e);
        m8752j.append(", timezoneOffsetSeconds=");
        m8752j.append(this.f13648f);
        m8752j.append(", networkConnectionInfo=");
        m8752j.append(this.f13649g);
        m8752j.append("}");
        return m8752j.toString();
    }
}
