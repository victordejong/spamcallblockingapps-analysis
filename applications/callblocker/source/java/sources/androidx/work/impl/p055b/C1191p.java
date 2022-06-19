package androidx.work.impl.p055b;

import androidx.p003a.p004a.p007c.AbstractC0075a;
import androidx.work.AbstractC1293l;
import androidx.work.C1129c;
import androidx.work.C1133e;
import androidx.work.C1308s;
import androidx.work.EnumC1125a;
import java.util.List;
/* renamed from: androidx.work.impl.b.p */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/p.class */
public final class C1191p {

    /* renamed from: a */
    public String f4013a;

    /* renamed from: b */
    public C1308s.EnumC1309a f4014b;

    /* renamed from: c */
    public String f4015c;

    /* renamed from: d */
    public String f4016d;

    /* renamed from: e */
    public C1133e f4017e;

    /* renamed from: f */
    public C1133e f4018f;

    /* renamed from: g */
    public long f4019g;

    /* renamed from: h */
    public long f4020h;

    /* renamed from: i */
    public long f4021i;

    /* renamed from: j */
    public C1129c f4022j;

    /* renamed from: k */
    public int f4023k;

    /* renamed from: l */
    public EnumC1125a f4024l;

    /* renamed from: m */
    public long f4025m;

    /* renamed from: n */
    public long f4026n;

    /* renamed from: o */
    public long f4027o;

    /* renamed from: p */
    public long f4028p;

    /* renamed from: q */
    public boolean f4029q;

    /* renamed from: s */
    private static final String f4012s = AbstractC1293l.m17541a("WorkSpec");

    /* renamed from: r */
    public static final AbstractC0075a<List<Object>, List<C1308s>> f4011r = new AbstractC0075a<List<Object>, List<C1308s>>() { // from class: androidx.work.impl.b.p.1
    };

    /* renamed from: androidx.work.impl.b.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/b/p$a.class */
    public static class C1193a {

        /* renamed from: a */
        public String f4030a;

        /* renamed from: b */
        public C1308s.EnumC1309a f4031b;

        public boolean equals(Object obj) {
            boolean z;
            if (this == obj) {
                z = true;
            } else {
                z = false;
                if (obj instanceof C1193a) {
                    C1193a c1193a = (C1193a) obj;
                    z = false;
                    if (this.f4031b == c1193a.f4031b) {
                        z = this.f4030a.equals(c1193a.f4030a);
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.f4030a.hashCode() * 31) + this.f4031b.hashCode();
        }
    }

    public C1191p(C1191p c1191p) {
        this.f4014b = C1308s.EnumC1309a.ENQUEUED;
        this.f4017e = C1133e.f3915a;
        this.f4018f = C1133e.f3915a;
        this.f4022j = C1129c.f3895a;
        this.f4024l = EnumC1125a.EXPONENTIAL;
        this.f4025m = 30000L;
        this.f4028p = -1L;
        this.f4013a = c1191p.f4013a;
        this.f4015c = c1191p.f4015c;
        this.f4014b = c1191p.f4014b;
        this.f4016d = c1191p.f4016d;
        this.f4017e = new C1133e(c1191p.f4017e);
        this.f4018f = new C1133e(c1191p.f4018f);
        this.f4019g = c1191p.f4019g;
        this.f4020h = c1191p.f4020h;
        this.f4021i = c1191p.f4021i;
        this.f4022j = new C1129c(c1191p.f4022j);
        this.f4023k = c1191p.f4023k;
        this.f4024l = c1191p.f4024l;
        this.f4025m = c1191p.f4025m;
        this.f4026n = c1191p.f4026n;
        this.f4027o = c1191p.f4027o;
        this.f4028p = c1191p.f4028p;
        this.f4029q = c1191p.f4029q;
    }

    public C1191p(String str, String str2) {
        this.f4014b = C1308s.EnumC1309a.ENQUEUED;
        this.f4017e = C1133e.f3915a;
        this.f4018f = C1133e.f3915a;
        this.f4022j = C1129c.f3895a;
        this.f4024l = EnumC1125a.EXPONENTIAL;
        this.f4025m = 30000L;
        this.f4028p = -1L;
        this.f4013a = str;
        this.f4015c = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m17807a(long j) {
        char c = j;
        if (j < 900000) {
            AbstractC1293l.m17543a().mo17537d(f4012s, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L), new Throwable[0]);
            c = 48032;
        }
        m17806a(c, c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* renamed from: a */
    public void m17806a(long j, long j2) {
        int i = (j > 900000L ? 1 : (j == 900000L ? 0 : -1));
        ?? r10 = j;
        if (i < 0) {
            AbstractC1293l.m17543a().mo17537d(f4012s, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L), new Throwable[0]);
            r10 = 900000;
        }
        int i2 = (j2 > 300000L ? 1 : (j2 == 300000L ? 0 : -1));
        ?? r12 = j2;
        if (i2 < 0) {
            AbstractC1293l.m17543a().mo17537d(f4012s, String.format("Flex duration lesser than minimum allowed value; Changed to %s", 300000L), new Throwable[0]);
            r12 = 300000;
        }
        char c = r12;
        if (r12 > r10) {
            AbstractC1293l.m17543a().mo17537d(f4012s, String.format("Flex duration greater than interval duration; Changed to %s", Long.valueOf((long) r10)), new Throwable[0]);
            c = r10;
        }
        this.f4020h = r10;
        this.f4021i = c;
    }

    /* renamed from: a */
    public boolean m17808a() {
        return this.f4020h != 0;
    }

    /* renamed from: b */
    public boolean m17805b() {
        return this.f4014b == C1308s.EnumC1309a.ENQUEUED && this.f4023k > 0;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* renamed from: c */
    public long m17804c() {
        char currentTimeMillis;
        boolean z = true;
        char c = 0;
        if (m17805b()) {
            if (this.f4024l != EnumC1125a.LINEAR) {
                z = false;
            }
            currentTimeMillis = Math.min(18000000L, (long) (z ? this.f4025m * this.f4023k : Math.scalb((float) this.f4025m, this.f4023k - 1))) + this.f4026n;
        } else if (m17808a()) {
            char currentTimeMillis2 = this.f4026n == 0 ? System.currentTimeMillis() + this.f4019g : this.f4026n;
            if (this.f4021i != this.f4020h) {
                if (this.f4026n == 0) {
                    c = (-1) * this.f4021i;
                }
                currentTimeMillis = currentTimeMillis2 + this.f4020h + c;
            } else {
                if (this.f4026n != 0) {
                    c = this.f4020h;
                }
                currentTimeMillis = currentTimeMillis2 + c;
            }
        } else {
            currentTimeMillis = (this.f4026n == 0 ? System.currentTimeMillis() : this.f4026n) + this.f4019g;
        }
        return currentTimeMillis;
    }

    /* renamed from: d */
    public boolean m17803d() {
        return !C1129c.f3895a.equals(this.f4022j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e8, code lost:
        if (r5.f4016d.equals(r0.f4016d) != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p055b.C1191p.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f4013a.hashCode();
        int hashCode2 = this.f4014b.hashCode();
        int hashCode3 = this.f4015c.hashCode();
        int hashCode4 = this.f4016d != null ? this.f4016d.hashCode() : 0;
        int hashCode5 = this.f4017e.hashCode();
        int hashCode6 = this.f4018f.hashCode();
        int i2 = (int) (this.f4019g ^ (this.f4019g >>> 32));
        int i3 = (int) (this.f4020h ^ (this.f4020h >>> 32));
        int i4 = (int) (this.f4021i ^ (this.f4021i >>> 32));
        int hashCode7 = this.f4022j.hashCode();
        int i5 = this.f4023k;
        int hashCode8 = this.f4024l.hashCode();
        int i6 = (int) (this.f4025m ^ (this.f4025m >>> 32));
        int i7 = (int) (this.f4026n ^ (this.f4026n >>> 32));
        int i8 = (int) (this.f4027o ^ (this.f4027o >>> 32));
        int i9 = (int) (this.f4028p ^ (this.f4028p >>> 32));
        if (this.f4029q) {
            i = 1;
        }
        return ((((((((((((((((((((((((((hashCode4 + (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31)) * 31) + hashCode5) * 31) + hashCode6) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode7) * 31) + i5) * 31) + hashCode8) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + i;
    }

    public String toString() {
        return "{WorkSpec: " + this.f4013a + "}";
    }
}
