package androidx.work.impl.p009l;

import androidx.work.AbstractC0555f;
import androidx.work.BackoffPolicy;
import androidx.work.C0548b;
import androidx.work.C0552d;
import androidx.work.WorkInfo$State;
/* renamed from: androidx.work.impl.l.j */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/l/j.class */
public class C0589j {

    /* renamed from: a */
    public String f3085a;

    /* renamed from: b */
    public WorkInfo$State f3086b;

    /* renamed from: c */
    public String f3087c;

    /* renamed from: d */
    public String f3088d;

    /* renamed from: e */
    public C0552d f3089e;

    /* renamed from: f */
    public C0552d f3090f;

    /* renamed from: g */
    public long f3091g;

    /* renamed from: h */
    public long f3092h;

    /* renamed from: i */
    public long f3093i;

    /* renamed from: j */
    public C0548b f3094j;

    /* renamed from: k */
    public int f3095k;

    /* renamed from: l */
    public BackoffPolicy f3096l;

    /* renamed from: m */
    public long f3097m;

    /* renamed from: n */
    public long f3098n;

    /* renamed from: o */
    public long f3099o;

    /* renamed from: p */
    public long f3100p;

    /* renamed from: androidx.work.impl.l.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/l/j$a.class */
    public static class C0590a {

        /* renamed from: a */
        public String f3101a;

        /* renamed from: b */
        public WorkInfo$State f3102b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0590a.class != obj.getClass()) {
                return false;
            }
            C0590a aVar = (C0590a) obj;
            if (this.f3102b != aVar.f3102b) {
                return false;
            }
            return this.f3101a.equals(aVar.f3101a);
        }

        public int hashCode() {
            return (this.f3101a.hashCode() * 31) + this.f3102b.hashCode();
        }
    }

    static {
        AbstractC0555f.m11738f("WorkSpec");
    }

    public C0589j(C0589j jVar) {
        this.f3086b = WorkInfo$State.ENQUEUED;
        C0552d dVar = C0552d.f2983c;
        this.f3089e = dVar;
        this.f3090f = dVar;
        this.f3094j = C0548b.f2962i;
        this.f3096l = BackoffPolicy.EXPONENTIAL;
        this.f3097m = 30000L;
        this.f3100p = -1L;
        this.f3085a = jVar.f3085a;
        this.f3087c = jVar.f3087c;
        this.f3086b = jVar.f3086b;
        this.f3088d = jVar.f3088d;
        this.f3089e = new C0552d(jVar.f3089e);
        this.f3090f = new C0552d(jVar.f3090f);
        this.f3091g = jVar.f3091g;
        this.f3092h = jVar.f3092h;
        this.f3093i = jVar.f3093i;
        this.f3094j = new C0548b(jVar.f3094j);
        this.f3095k = jVar.f3095k;
        this.f3096l = jVar.f3096l;
        this.f3097m = jVar.f3097m;
        this.f3098n = jVar.f3098n;
        this.f3099o = jVar.f3099o;
        this.f3100p = jVar.f3100p;
    }

    public C0589j(String str, String str2) {
        this.f3086b = WorkInfo$State.ENQUEUED;
        C0552d dVar = C0552d.f2983c;
        this.f3089e = dVar;
        this.f3090f = dVar;
        this.f3094j = C0548b.f2962i;
        this.f3096l = BackoffPolicy.EXPONENTIAL;
        this.f3097m = 30000L;
        this.f3100p = -1L;
        this.f3085a = str;
        this.f3087c = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 6 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m11668a() {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p009l.C0589j.m11668a():long");
    }

    /* renamed from: b */
    public boolean m11667b() {
        return !C0548b.f2962i.equals(this.f3094j);
    }

    /* renamed from: c */
    public boolean m11666c() {
        return this.f3086b == WorkInfo$State.ENQUEUED && this.f3095k > 0;
    }

    /* renamed from: d */
    public boolean m11665d() {
        return this.f3092h != 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0589j.class != obj.getClass()) {
            return false;
        }
        C0589j jVar = (C0589j) obj;
        if (this.f3091g != jVar.f3091g || this.f3092h != jVar.f3092h || this.f3093i != jVar.f3093i || this.f3095k != jVar.f3095k || this.f3097m != jVar.f3097m || this.f3098n != jVar.f3098n || this.f3099o != jVar.f3099o || this.f3100p != jVar.f3100p || !this.f3085a.equals(jVar.f3085a) || this.f3086b != jVar.f3086b || !this.f3087c.equals(jVar.f3087c)) {
            return false;
        }
        String str = this.f3088d;
        if (str != null) {
            if (!str.equals(jVar.f3088d)) {
                return false;
            }
        } else if (jVar.f3088d != null) {
            return false;
        }
        if (!this.f3089e.equals(jVar.f3089e) || !this.f3090f.equals(jVar.f3090f) || !this.f3094j.equals(jVar.f3094j)) {
            return false;
        }
        if (this.f3096l != jVar.f3096l) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f3085a.hashCode();
        int hashCode2 = this.f3086b.hashCode();
        int hashCode3 = this.f3087c.hashCode();
        String str = this.f3088d;
        int hashCode4 = str != null ? str.hashCode() : 0;
        int hashCode5 = this.f3089e.hashCode();
        int hashCode6 = this.f3090f.hashCode();
        long j = this.f3091g;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f3092h;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        long j3 = this.f3093i;
        int i3 = (int) (j3 ^ (j3 >>> 32));
        int hashCode7 = this.f3094j.hashCode();
        int i4 = this.f3095k;
        int hashCode8 = this.f3096l.hashCode();
        long j4 = this.f3097m;
        int i5 = (int) (j4 ^ (j4 >>> 32));
        long j5 = this.f3098n;
        int i6 = (int) (j5 ^ (j5 >>> 32));
        long j6 = this.f3099o;
        int i7 = (int) (j6 ^ (j6 >>> 32));
        long j7 = this.f3100p;
        return (((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i2) * 31) + i3) * 31) + hashCode7) * 31) + i4) * 31) + hashCode8) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + ((int) (j7 ^ (j7 >>> 32)));
    }

    public String toString() {
        return "{WorkSpec: " + this.f3085a + "}";
    }
}
