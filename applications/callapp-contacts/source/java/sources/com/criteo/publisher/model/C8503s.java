package com.criteo.publisher.model;

import com.criteo.publisher.AbstractC8336h;
import com.criteo.publisher.C8520q;
import com.criteo.publisher.model.p257b0.AbstractC8474n;
import com.criteo.publisher.p256m0.C8441l;
import com.google.firebase.crashlytics.internal.common.IdManager;
import com.google.gson.annotations.AbstractC15952b;
import com.mopub.network.ImpressionData;
import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18405d;
import kotlin.p532h.C18425p;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.model.s */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/s.class */
public class C8503s {

    /* renamed from: n */
    public static final C8504a f30343n = new C8504a(null);

    /* renamed from: a */
    private final Lazy f30344a;

    /* renamed from: b */
    private final Lazy f30345b;
    @AbstractC15952b(m7988a = "impId")

    /* renamed from: c */
    private final String f30346c;
    @AbstractC15952b(m7988a = "placementId")

    /* renamed from: d */
    private final String f30347d;
    @AbstractC15952b(m7988a = "zoneId")

    /* renamed from: e */
    private final Integer f30348e;
    @AbstractC15952b(m7988a = "cpm")

    /* renamed from: f */
    private final String f30349f;
    @AbstractC15952b(m7988a = ImpressionData.CURRENCY)

    /* renamed from: g */
    private final String f30350g;
    @AbstractC15952b(m7988a = "width")

    /* renamed from: h */
    private final int f30351h;
    @AbstractC15952b(m7988a = "height")

    /* renamed from: i */
    private final int f30352i;
    @AbstractC15952b(m7988a = "displayUrl")

    /* renamed from: j */
    private final String f30353j;
    @AbstractC15952b(m7988a = "native")

    /* renamed from: k */
    private final AbstractC8474n f30354k;
    @AbstractC15952b(m7988a = "ttl")

    /* renamed from: l */
    private int f30355l;

    /* renamed from: m */
    private long f30356m;

    /* renamed from: com.criteo.publisher.model.s$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/s$a.class */
    public static final class C8504a {
        private C8504a() {
        }

        public /* synthetic */ C8504a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final C8503s m25536a(JSONObject json) {
            ByteArrayInputStream byteArrayInputStream;
            C18524p.m3841c(json, "json");
            C8441l m25383z = C8520q.m25449a().m25383z();
            C18524p.m3849a((Object) m25383z, "DependencyProvider.getIn…).provideJsonSerializer()");
            String jSONObject = json.toString();
            C18524p.m3849a((Object) jSONObject, "json.toString()");
            Charset charset = C18405d.f63516a;
            if (jSONObject != null) {
                byte[] bytes = jSONObject.getBytes(charset);
                C18524p.m3849a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
                try {
                    Object m25681a = m25383z.m25681a(C8503s.class, new ByteArrayInputStream(bytes));
                    C18524p.m3849a(m25681a, "jsonSerializer.read(CdbR…eSlot::class.java, input)");
                    th = null;
                    return (C8503s) m25681a;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.s$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/s$b.class */
    public static final class C8505b extends AbstractC18526r implements Function0<Double> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8505b() {
            super(0);
            C8503s.this = r4;
        }

        /* renamed from: a */
        public final Double invoke() {
            return C18425p.m3971d(C8503s.this.m25554a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.s$c */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/s$c.class */
    public static final class C8506c extends AbstractC18526r implements Function0<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8506c() {
            super(0);
            C8503s.this = r4;
        }

        /* renamed from: a */
        public final boolean m25534a() {
            return C8503s.this.m25544g() != null;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(m25534a());
        }
    }

    public C8503s() {
        this(null, null, null, null, null, 0, 0, null, null, 0, 0L, 2047, null);
    }

    public C8503s(String str, String str2, Integer num, String cpm, String str3, int i, int i2, String str4, AbstractC8474n abstractC8474n, int i3, long j) {
        C18524p.m3841c(cpm, "cpm");
        this.f30346c = str;
        this.f30347d = str2;
        this.f30348e = num;
        this.f30349f = cpm;
        this.f30350g = str3;
        this.f30351h = i;
        this.f30352i = i2;
        this.f30353j = str4;
        this.f30354k = abstractC8474n;
        this.f30355l = i3;
        this.f30356m = j;
        this.f30344a = C18399h.m3897a(new C8505b());
        this.f30345b = C18399h.m3897a(new C8506c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    public /* synthetic */ C8503s(String str, String str2, Integer num, String str3, String str4, int i, int i2, String str5, AbstractC8474n abstractC8474n, int i3, long j, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : str2, (i4 & 4) != 0 ? null : num, (i4 & 8) != 0 ? IdManager.DEFAULT_VERSION_NAME : str3, (i4 & 16) != 0 ? null : str4, (i4 & 32) != 0 ? 0 : i, (i4 & 64) != 0 ? 0 : i2, (i4 & 128) != 0 ? null : str5, (i4 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? null : abstractC8474n, (i4 & 512) != 0 ? 0 : i3, (i4 & 1024) != 0 ? 0 : j);
    }

    /* renamed from: a */
    public static final C8503s m25550a(JSONObject jSONObject) {
        return f30343n.m25536a(jSONObject);
    }

    /* renamed from: a */
    public String m25554a() {
        return this.f30349f;
    }

    /* renamed from: a */
    public void m25553a(int i) {
        this.f30355l = i;
    }

    /* renamed from: a */
    public void m25552a(long j) {
        this.f30356m = j;
    }

    /* renamed from: a */
    public boolean m25551a(AbstractC8336h clock) {
        C18524p.m3841c(clock, "clock");
        return ((long) (m25541j() * 1000)) + m25542i() <= clock.mo25381a();
    }

    /* renamed from: b */
    public Double m25549b() {
        return (Double) this.f30344a.mo1102a();
    }

    /* renamed from: c */
    public String m25548c() {
        return this.f30350g;
    }

    /* renamed from: d */
    public String m25547d() {
        return this.f30353j;
    }

    /* renamed from: e */
    public int m25546e() {
        return this.f30352i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8503s)) {
                return false;
            }
            C8503s c8503s = (C8503s) obj;
            return C18524p.m3850a((Object) m25545f(), (Object) c8503s.m25545f()) && C18524p.m3850a((Object) m25543h(), (Object) c8503s.m25543h()) && C18524p.m3850a(m25539l(), c8503s.m25539l()) && C18524p.m3850a((Object) m25554a(), (Object) c8503s.m25554a()) && C18524p.m3850a((Object) m25548c(), (Object) c8503s.m25548c()) && m25540k() == c8503s.m25540k() && m25546e() == c8503s.m25546e() && C18524p.m3850a((Object) m25547d(), (Object) c8503s.m25547d()) && C18524p.m3850a(m25544g(), c8503s.m25544g()) && m25541j() == c8503s.m25541j() && m25542i() == c8503s.m25542i();
        }
        return true;
    }

    /* renamed from: f */
    public String m25545f() {
        return this.f30346c;
    }

    /* renamed from: g */
    public AbstractC8474n m25544g() {
        return this.f30354k;
    }

    /* renamed from: h */
    public String m25543h() {
        return this.f30347d;
    }

    public int hashCode() {
        String m25545f = m25545f();
        int i = 0;
        int hashCode = m25545f != null ? m25545f.hashCode() : 0;
        String m25543h = m25543h();
        int hashCode2 = m25543h != null ? m25543h.hashCode() : 0;
        Integer m25539l = m25539l();
        int hashCode3 = m25539l != null ? m25539l.hashCode() : 0;
        String m25554a = m25554a();
        int hashCode4 = m25554a != null ? m25554a.hashCode() : 0;
        String m25548c = m25548c();
        int hashCode5 = m25548c != null ? m25548c.hashCode() : 0;
        int m25540k = m25540k();
        int m25546e = m25546e();
        String m25547d = m25547d();
        int hashCode6 = m25547d != null ? m25547d.hashCode() : 0;
        AbstractC8474n m25544g = m25544g();
        if (m25544g != null) {
            i = m25544g.hashCode();
        }
        int m25541j = m25541j();
        long m25542i = m25542i();
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + m25540k) * 31) + m25546e) * 31) + hashCode6) * 31) + i) * 31) + m25541j) * 31) + ((int) (m25542i ^ (m25542i >>> 32)));
    }

    /* renamed from: i */
    public long m25542i() {
        return this.f30356m;
    }

    /* renamed from: j */
    public int m25541j() {
        return this.f30355l;
    }

    /* renamed from: k */
    public int m25540k() {
        return this.f30351h;
    }

    /* renamed from: l */
    public Integer m25539l() {
        return this.f30348e;
    }

    /* renamed from: m */
    public boolean m25538m() {
        return ((Boolean) this.f30345b.mo1102a()).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008a, code lost:
        if (com.criteo.publisher.p256m0.C8449t.m25667a(m25547d()) != false) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m25537n() {
        /*
            r5 = this;
            r0 = r5
            java.lang.Double r0 = r0.m25549b()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L11
            r0 = r6
            double r0 = r0.doubleValue()
            r7 = r0
            goto L15
        L11:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r7 = r0
        L15:
            r0 = 0
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L24
            r0 = 1
            r10 = r0
            goto L27
        L24:
            r0 = 0
            r10 = r0
        L27:
            r0 = r5
            java.lang.Double r0 = r0.m25549b()
            boolean r0 = kotlin.jvm.internal.C18524p.m3853a(r0)
            if (r0 == 0) goto L3e
            r0 = r5
            int r0 = r0.m25541j()
            if (r0 != 0) goto L3e
            r0 = 1
            r11 = r0
            goto L41
        L3e:
            r0 = 0
            r11 = r0
        L41:
            r0 = r5
            java.lang.Double r0 = r0.m25549b()
            boolean r0 = kotlin.jvm.internal.C18524p.m3853a(r0)
            if (r0 == 0) goto L58
            r0 = r5
            int r0 = r0.m25541j()
            if (r0 <= 0) goto L58
            r0 = 1
            r12 = r0
            goto L5b
        L58:
            r0 = 0
            r12 = r0
        L5b:
            r0 = r9
            r13 = r0
            r0 = r10
            if (r0 != 0) goto L90
            r0 = r9
            r13 = r0
            r0 = r11
            if (r0 != 0) goto L90
            r0 = r12
            if (r0 == 0) goto L78
        L72:
            r0 = 1
            r13 = r0
            goto L90
        L78:
            r0 = r5
            boolean r0 = r0.m25538m()
            if (r0 != 0) goto L72
            r0 = r9
            r13 = r0
            r0 = r5
            java.lang.String r0 = r0.m25547d()
            boolean r0 = com.criteo.publisher.p256m0.C8449t.m25667a(r0)
            if (r0 == 0) goto L90
            goto L72
        L90:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.C8503s.m25537n():boolean");
    }

    public String toString() {
        return "CdbResponseSlot(impressionId=" + m25545f() + ", placementId=" + m25543h() + ", zoneId=" + m25539l() + ", cpm=" + m25554a() + ", currency=" + m25548c() + ", width=" + m25540k() + ", height=" + m25546e() + ", displayUrl=" + m25547d() + ", nativeAssets=" + m25544g() + ", ttlInSeconds=" + m25541j() + ", timeOfDownload=" + m25542i() + ")";
    }
}
