package p103g5;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import p103g5.AbstractC2878v;
/* renamed from: g5.r */
/* loaded from: classes-dex2jar.jar:g5/r.class */
public final class C2869r extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b {

    /* renamed from: a */
    public final Double f9771a;

    /* renamed from: b */
    public final int f9772b;

    /* renamed from: c */
    public final boolean f9773c;

    /* renamed from: d */
    public final int f9774d;

    /* renamed from: e */
    public final long f9775e;

    /* renamed from: f */
    public final long f9776f;

    /* renamed from: g5.r$b */
    /* loaded from: classes-dex2jar.jar:g5/r$b.class */
    public static final class C2871b extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b.AbstractC2900a {

        /* renamed from: a */
        public Double f9777a;

        /* renamed from: b */
        public Integer f9778b;

        /* renamed from: c */
        public Boolean f9779c;

        /* renamed from: d */
        public Integer f9780d;

        /* renamed from: e */
        public Long f9781e;

        /* renamed from: f */
        public Long f9782f;

        /* renamed from: a */
        public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b m2963a() {
            String str = this.f9778b == null ? " batteryVelocity" : "";
            String str2 = str;
            if (this.f9779c == null) {
                str2 = C1676a.m4789h(str, " proximityOn");
            }
            String str3 = str2;
            if (this.f9780d == null) {
                str3 = C1676a.m4789h(str2, " orientation");
            }
            String str4 = str3;
            if (this.f9781e == null) {
                str4 = C1676a.m4789h(str3, " ramUsed");
            }
            String str5 = str4;
            if (this.f9782f == null) {
                str5 = C1676a.m4789h(str4, " diskUsed");
            }
            if (str5.isEmpty()) {
                return new C2869r(this.f9777a, this.f9778b.intValue(), this.f9779c.booleanValue(), this.f9780d.intValue(), this.f9781e.longValue(), this.f9782f.longValue(), null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str5));
        }
    }

    public C2869r(Double d, int i, boolean z, int i2, long j, long j2, C2870a c2870a) {
        this.f9771a = d;
        this.f9772b = i;
        this.f9773c = z;
        this.f9774d = i2;
        this.f9775e = j;
        this.f9776f = j2;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b
    /* renamed from: a */
    public Double mo2882a() {
        return this.f9771a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b
    /* renamed from: b */
    public int mo2881b() {
        return this.f9772b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b
    /* renamed from: c */
    public long mo2880c() {
        return this.f9776f;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b
    /* renamed from: d */
    public int mo2879d() {
        return this.f9774d;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b
    /* renamed from: e */
    public long mo2878e() {
        return this.f9775e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
        if (r5.f9776f == r0.mo2880c()) goto L24;
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
            boolean r0 = r0 instanceof p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b
            if (r0 == 0) goto L73
            r0 = r6
            g5.v$d$d$b r0 = (p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b) r0
            r6 = r0
            r0 = r5
            java.lang.Double r0 = r0.f9771a
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L28
            r0 = r6
            java.lang.Double r0 = r0.mo2882a()
            if (r0 != 0) goto L6f
            goto L33
        L28:
            r0 = r8
            r1 = r6
            java.lang.Double r1 = r1.mo2882a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6f
        L33:
            r0 = r5
            int r0 = r0.f9772b
            r1 = r6
            int r1 = r1.mo2881b()
            if (r0 != r1) goto L6f
            r0 = r5
            boolean r0 = r0.f9773c
            r1 = r6
            boolean r1 = r1.mo2877f()
            if (r0 != r1) goto L6f
            r0 = r5
            int r0 = r0.f9774d
            r1 = r6
            int r1 = r1.mo2879d()
            if (r0 != r1) goto L6f
            r0 = r5
            long r0 = r0.f9775e
            r1 = r6
            long r1 = r1.mo2878e()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L6f
            r0 = r5
            long r0 = r0.f9776f
            r1 = r6
            long r1 = r1.mo2880c()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L6f
            goto L71
        L6f:
            r0 = 0
            r7 = r0
        L71:
            r0 = r7
            return r0
        L73:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p103g5.C2869r.equals(java.lang.Object):boolean");
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2899b
    /* renamed from: f */
    public boolean mo2877f() {
        return this.f9773c;
    }

    public int hashCode() {
        Double d = this.f9771a;
        int hashCode = d == null ? 0 : d.hashCode();
        int i = this.f9772b;
        int i2 = this.f9773c ? 1231 : 1237;
        int i3 = this.f9774d;
        long j = this.f9775e;
        int i4 = (int) (j ^ (j >>> 32));
        long j2 = this.f9776f;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Device{batteryLevel=");
        m8752j.append(this.f9771a);
        m8752j.append(", batteryVelocity=");
        m8752j.append(this.f9772b);
        m8752j.append(", proximityOn=");
        m8752j.append(this.f9773c);
        m8752j.append(", orientation=");
        m8752j.append(this.f9774d);
        m8752j.append(", ramUsed=");
        m8752j.append(this.f9775e);
        m8752j.append(", diskUsed=");
        m8752j.append(this.f9776f);
        m8752j.append("}");
        return m8752j.toString();
    }
}
