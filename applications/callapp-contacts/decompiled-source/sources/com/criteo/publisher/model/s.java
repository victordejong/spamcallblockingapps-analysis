package com.criteo.publisher.model;

import com.criteo.publisher.m0.l;
import com.criteo.publisher.model.b0.n;
import com.criteo.publisher.q;
import com.mopub.network.ImpressionData;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import kotlin.Lazy;
import kotlin.TypeCastException;
import kotlin.h;
import kotlin.h.d;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/s.class */
public class s {
    public static final a n = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Lazy f17629a;

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f17630b;
    @com.google.gson.annotations.b(a = "impId")

    /* renamed from: c  reason: collision with root package name */
    private final String f17631c;
    @com.google.gson.annotations.b(a = "placementId")

    /* renamed from: d  reason: collision with root package name */
    private final String f17632d;
    @com.google.gson.annotations.b(a = "zoneId")
    private final Integer e;
    @com.google.gson.annotations.b(a = "cpm")
    private final String f;
    @com.google.gson.annotations.b(a = ImpressionData.CURRENCY)
    private final String g;
    @com.google.gson.annotations.b(a = "width")
    private final int h;
    @com.google.gson.annotations.b(a = "height")
    private final int i;
    @com.google.gson.annotations.b(a = "displayUrl")
    private final String j;
    @com.google.gson.annotations.b(a = "native")
    private final n k;
    @com.google.gson.annotations.b(a = "ttl")
    private int l;
    private long m;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/s$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final s a(JSONObject json) {
            ByteArrayInputStream byteArrayInputStream;
            p.c(json, "json");
            l z = q.a().z();
            p.a((Object) z, "DependencyProvider.getIn…).provideJsonSerializer()");
            String jSONObject = json.toString();
            p.a((Object) jSONObject, "json.toString()");
            Charset charset = d.f36719a;
            if (jSONObject != null) {
                byte[] bytes = jSONObject.getBytes(charset);
                p.a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
                try {
                    Object a2 = z.a(s.class, new ByteArrayInputStream(bytes));
                    p.a(a2, "jsonSerializer.read(CdbR…eSlot::class.java, input)");
                    th = null;
                    return (s) a2;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/s$b.class */
    static final class b extends r implements Function0<Double> {
        b() {
            super(0);
        }

        /* renamed from: a */
        public final Double invoke() {
            return kotlin.h.p.d(s.this.a());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/s$c.class */
    static final class c extends r implements Function0<Boolean> {
        c() {
            super(0);
        }

        public final boolean a() {
            return s.this.g() != null;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(a());
        }
    }

    public s() {
        this(null, null, null, null, null, 0, 0, null, null, 0, 0L, 2047, null);
    }

    public s(String str, String str2, Integer num, String cpm, String str3, int i, int i2, String str4, n nVar, int i3, long j) {
        p.c(cpm, "cpm");
        this.f17631c = str;
        this.f17632d = str2;
        this.e = num;
        this.f = cpm;
        this.g = str3;
        this.h = i;
        this.i = i2;
        this.j = str4;
        this.k = nVar;
        this.l = i3;
        this.m = j;
        this.f17629a = h.a(new b());
        this.f17630b = h.a(new c());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ s(java.lang.String r15, java.lang.String r16, java.lang.Integer r17, java.lang.String r18, java.lang.String r19, int r20, int r21, java.lang.String r22, com.criteo.publisher.model.b0.n r23, int r24, long r25, int r27, kotlin.jvm.internal.DefaultConstructorMarker r28) {
        /*
            r14 = this;
            r0 = 0
            r28 = r0
            r0 = r27
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000f
            r0 = 0
            r15 = r0
            goto L_0x000f
        L_0x000f:
            r0 = r27
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001b
            r0 = 0
            r16 = r0
            goto L_0x001b
        L_0x001b:
            r0 = r27
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0027
            r0 = 0
            r17 = r0
            goto L_0x0027
        L_0x0027:
            r0 = r27
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0036
            java.lang.String r0 = "0.0"
            r18 = r0
            goto L_0x0036
        L_0x0036:
            r0 = r27
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0044
            r0 = 0
            r19 = r0
            goto L_0x0044
        L_0x0044:
            r0 = 0
            r29 = r0
            r0 = r27
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0055
            r0 = 0
            r20 = r0
            goto L_0x0055
        L_0x0055:
            r0 = r27
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0063
            r0 = 0
            r21 = r0
            goto L_0x0063
        L_0x0063:
            r0 = r27
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0072
            r0 = 0
            r22 = r0
            goto L_0x0072
        L_0x0072:
            r0 = r27
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0082
            r0 = r28
            r23 = r0
            goto L_0x0082
        L_0x0082:
            r0 = r27
            r1 = 512(0x200, float:7.175E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0092
            r0 = r29
            r24 = r0
            goto L_0x0092
        L_0x0092:
            r0 = r27
            r1 = 1024(0x400, float:1.435E-42)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x00a1
            r0 = 0
            r25 = r0
            goto L_0x00a1
        L_0x00a1:
            r0 = r14
            r1 = r15
            r2 = r16
            r3 = r17
            r4 = r18
            r5 = r19
            r6 = r20
            r7 = r21
            r8 = r22
            r9 = r23
            r10 = r24
            r11 = r25
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.s.<init>(java.lang.String, java.lang.String, java.lang.Integer, java.lang.String, java.lang.String, int, int, java.lang.String, com.criteo.publisher.model.b0.n, int, long, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public static final s a(JSONObject jSONObject) {
        return n.a(jSONObject);
    }

    public String a() {
        return this.f;
    }

    public void a(int i) {
        this.l = i;
    }

    public void a(long j) {
        this.m = j;
    }

    public boolean a(com.criteo.publisher.h clock) {
        p.c(clock, "clock");
        return ((long) (j() * 1000)) + i() <= clock.a();
    }

    public Double b() {
        return (Double) this.f17629a.a();
    }

    public String c() {
        return this.g;
    }

    public String d() {
        return this.j;
    }

    public int e() {
        return this.i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return p.a((Object) f(), (Object) sVar.f()) && p.a((Object) h(), (Object) sVar.h()) && p.a(l(), sVar.l()) && p.a((Object) a(), (Object) sVar.a()) && p.a((Object) c(), (Object) sVar.c()) && k() == sVar.k() && e() == sVar.e() && p.a((Object) d(), (Object) sVar.d()) && p.a(g(), sVar.g()) && j() == sVar.j() && i() == sVar.i();
    }

    public String f() {
        return this.f17631c;
    }

    public n g() {
        return this.k;
    }

    public String h() {
        return this.f17632d;
    }

    public int hashCode() {
        String f = f();
        int i = 0;
        int hashCode = f != null ? f.hashCode() : 0;
        String h = h();
        int hashCode2 = h != null ? h.hashCode() : 0;
        Integer l = l();
        int hashCode3 = l != null ? l.hashCode() : 0;
        String a2 = a();
        int hashCode4 = a2 != null ? a2.hashCode() : 0;
        String c2 = c();
        int hashCode5 = c2 != null ? c2.hashCode() : 0;
        int k = k();
        int e = e();
        String d2 = d();
        int hashCode6 = d2 != null ? d2.hashCode() : 0;
        n g = g();
        if (g != null) {
            i = g.hashCode();
        }
        int j = j();
        long i2 = i();
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + k) * 31) + e) * 31) + hashCode6) * 31) + i) * 31) + j) * 31) + ((int) (i2 ^ (i2 >>> 32)));
    }

    public long i() {
        return this.m;
    }

    public int j() {
        return this.l;
    }

    public int k() {
        return this.h;
    }

    public Integer l() {
        return this.e;
    }

    public boolean m() {
        return ((Boolean) this.f17630b.a()).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008a, code lost:
        if (com.criteo.publisher.m0.t.a(d()) != false) goto L_0x0072;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean n() {
        /*
            r5 = this;
            r0 = r5
            java.lang.Double r0 = r0.b()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0011
            r0 = r6
            double r0 = r0.doubleValue()
            r7 = r0
            goto L_0x0015
        L_0x0011:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r7 = r0
        L_0x0015:
            r0 = 0
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0024
            r0 = 1
            r10 = r0
            goto L_0x0027
        L_0x0024:
            r0 = 0
            r10 = r0
        L_0x0027:
            r0 = r5
            java.lang.Double r0 = r0.b()
            boolean r0 = kotlin.jvm.internal.p.a(r0)
            if (r0 == 0) goto L_0x003e
            r0 = r5
            int r0 = r0.j()
            if (r0 != 0) goto L_0x003e
            r0 = 1
            r11 = r0
            goto L_0x0041
        L_0x003e:
            r0 = 0
            r11 = r0
        L_0x0041:
            r0 = r5
            java.lang.Double r0 = r0.b()
            boolean r0 = kotlin.jvm.internal.p.a(r0)
            if (r0 == 0) goto L_0x0058
            r0 = r5
            int r0 = r0.j()
            if (r0 <= 0) goto L_0x0058
            r0 = 1
            r12 = r0
            goto L_0x005b
        L_0x0058:
            r0 = 0
            r12 = r0
        L_0x005b:
            r0 = r9
            r13 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0090
            r0 = r9
            r13 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0090
            r0 = r12
            if (r0 == 0) goto L_0x0078
        L_0x0072:
            r0 = 1
            r13 = r0
            goto L_0x0090
        L_0x0078:
            r0 = r5
            boolean r0 = r0.m()
            if (r0 != 0) goto L_0x0072
            r0 = r9
            r13 = r0
            r0 = r5
            java.lang.String r0 = r0.d()
            boolean r0 = com.criteo.publisher.m0.t.a(r0)
            if (r0 == 0) goto L_0x0090
            goto L_0x0072
        L_0x0090:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.s.n():boolean");
    }

    public String toString() {
        return "CdbResponseSlot(impressionId=" + f() + ", placementId=" + h() + ", zoneId=" + l() + ", cpm=" + a() + ", currency=" + c() + ", width=" + k() + ", height=" + e() + ", displayUrl=" + d() + ", nativeAssets=" + g() + ", ttlInSeconds=" + j() + ", timeOfDownload=" + i() + ")";
    }
}
