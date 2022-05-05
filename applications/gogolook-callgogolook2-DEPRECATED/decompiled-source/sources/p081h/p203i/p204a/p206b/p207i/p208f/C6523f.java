package p081h.p203i.p204a.p206b.p207i.p208f;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.Arrays;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l;
/* renamed from: h.i.a.b.i.f.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/f.class */
public final class C6523f extends AbstractC6537l {

    /* renamed from: a */
    public final long f16237a;

    /* renamed from: b */
    public final Integer f16238b;

    /* renamed from: c */
    public final long f16239c;

    /* renamed from: d */
    public final byte[] f16240d;

    /* renamed from: e */
    public final String f16241e;

    /* renamed from: f */
    public final long f16242f;

    /* renamed from: g */
    public final AbstractC6542o f16243g;

    /* renamed from: h.i.a.b.i.f.f$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/f$b.class */
    public static final class C6525b extends AbstractC6537l.AbstractC6538a {

        /* renamed from: a */
        public Long f16244a;

        /* renamed from: b */
        public Integer f16245b;

        /* renamed from: c */
        public Long f16246c;

        /* renamed from: d */
        public byte[] f16247d;

        /* renamed from: e */
        public String f16248e;

        /* renamed from: f */
        public Long f16249f;

        /* renamed from: g */
        public AbstractC6542o f16250g;

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l.AbstractC6538a
        /* renamed from: a */
        public AbstractC6537l.AbstractC6538a mo22390a(long j) {
            this.f16244a = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l.AbstractC6538a
        /* renamed from: a */
        public AbstractC6537l.AbstractC6538a mo22389a(@Nullable AbstractC6542o oVar) {
            this.f16250g = oVar;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l.AbstractC6538a
        /* renamed from: a */
        public AbstractC6537l.AbstractC6538a mo22388a(@Nullable Integer num) {
            this.f16245b = num;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l.AbstractC6538a
        /* renamed from: a */
        public AbstractC6537l.AbstractC6538a mo22387a(@Nullable String str) {
            this.f16248e = str;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l.AbstractC6538a
        /* renamed from: a */
        public AbstractC6537l.AbstractC6538a mo22386a(@Nullable byte[] bArr) {
            this.f16247d = bArr;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l.AbstractC6538a
        /* renamed from: a */
        public AbstractC6537l mo22391a() {
            String str = "";
            if (this.f16244a == null) {
                str = " eventTimeMs";
            }
            String str2 = str;
            if (this.f16246c == null) {
                str2 = str + " eventUptimeMs";
            }
            String str3 = str2;
            if (this.f16249f == null) {
                str3 = str2 + " timezoneOffsetSeconds";
            }
            if (str3.isEmpty()) {
                return new C6523f(this.f16244a.longValue(), this.f16245b, this.f16246c.longValue(), this.f16247d, this.f16248e, this.f16249f.longValue(), this.f16250g);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l.AbstractC6538a
        /* renamed from: b */
        public AbstractC6537l.AbstractC6538a mo22385b(long j) {
            this.f16246c = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l.AbstractC6538a
        /* renamed from: c */
        public AbstractC6537l.AbstractC6538a mo22384c(long j) {
            this.f16249f = Long.valueOf(j);
            return this;
        }
    }

    public C6523f(long j, @Nullable Integer num, long j2, @Nullable byte[] bArr, @Nullable String str, long j3, @Nullable AbstractC6542o oVar) {
        this.f16237a = j;
        this.f16238b = num;
        this.f16239c = j2;
        this.f16240d = bArr;
        this.f16241e = str;
        this.f16242f = j3;
        this.f16243g = oVar;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l
    @Nullable
    /* renamed from: a */
    public Integer mo22401a() {
        return this.f16238b;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l
    /* renamed from: b */
    public long mo22398b() {
        return this.f16237a;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l
    /* renamed from: c */
    public long mo22397c() {
        return this.f16239c;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l
    @Nullable
    /* renamed from: d */
    public AbstractC6542o mo22396d() {
        return this.f16243g;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l
    @Nullable
    /* renamed from: e */
    public byte[] mo22395e() {
        return this.f16240d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
        if (r5.f16242f != r0.mo22393g()) goto L_0x00bc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        if ((r0 = r5.f16243g) != null) goto L_0x00ae;
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
            boolean r0 = r0 instanceof p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l
            if (r0 == 0) goto L_0x00c0
            r0 = r6
            h.i.a.b.i.f.l r0 = (p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l) r0
            r8 = r0
            r0 = r5
            long r0 = r0.f16237a
            r1 = r8
            long r1 = r1.mo22398b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00bc
            r0 = r5
            java.lang.Integer r0 = r0.f16238b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0034
            r0 = r8
            java.lang.Integer r0 = r0.mo22401a()
            if (r0 != 0) goto L_0x00bc
            goto L_0x003f
        L_0x0034:
            r0 = r6
            r1 = r8
            java.lang.Integer r1 = r1.mo22401a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
        L_0x003f:
            r0 = r5
            long r0 = r0.f16239c
            r1 = r8
            long r1 = r1.mo22397c()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00bc
            r0 = r5
            byte[] r0 = r0.f16240d
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof p081h.p203i.p204a.p206b.p207i.p208f.C6523f
            if (r0 == 0) goto L_0x0063
            r0 = r8
            h.i.a.b.i.f.f r0 = (p081h.p203i.p204a.p206b.p207i.p208f.C6523f) r0
            byte[] r0 = r0.f16240d
            r6 = r0
            goto L_0x0068
        L_0x0063:
            r0 = r8
            byte[] r0 = r0.mo22395e()
            r6 = r0
        L_0x0068:
            r0 = r9
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x00bc
            r0 = r5
            java.lang.String r0 = r0.f16241e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0084
            r0 = r8
            java.lang.String r0 = r0.mo22394f()
            if (r0 != 0) goto L_0x00bc
            goto L_0x008f
        L_0x0084:
            r0 = r6
            r1 = r8
            java.lang.String r1 = r1.mo22394f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bc
        L_0x008f:
            r0 = r5
            long r0 = r0.f16242f
            r1 = r8
            long r1 = r1.mo22393g()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00bc
            r0 = r5
            h.i.a.b.i.f.o r0 = r0.f16243g
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x00ae
            r0 = r8
            h.i.a.b.i.f.o r0 = r0.mo22396d()
            if (r0 != 0) goto L_0x00bc
            goto L_0x00be
        L_0x00ae:
            r0 = r6
            r1 = r8
            h.i.a.b.i.f.o r1 = r1.mo22396d()
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p206b.p207i.p208f.C6523f.equals(java.lang.Object):boolean");
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l
    @Nullable
    /* renamed from: f */
    public String mo22394f() {
        return this.f16241e;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l
    /* renamed from: g */
    public long mo22393g() {
        return this.f16242f;
    }

    public int hashCode() {
        long j = this.f16237a;
        int i = (int) (j ^ (j >>> 32));
        Integer num = this.f16238b;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.f16239c;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        int hashCode2 = Arrays.hashCode(this.f16240d);
        String str = this.f16241e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f16242f;
        int i4 = (int) ((j3 >>> 32) ^ j3);
        AbstractC6542o oVar = this.f16243g;
        if (oVar != null) {
            i2 = oVar.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i4) * 1000003) ^ i2;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f16237a + ", eventCode=" + this.f16238b + ", eventUptimeMs=" + this.f16239c + ", sourceExtension=" + Arrays.toString(this.f16240d) + ", sourceExtensionJsonProto3=" + this.f16241e + ", timezoneOffsetSeconds=" + this.f16242f + ", networkConnectionInfo=" + this.f16243g + CssParser.BLOCK_END;
    }
}
