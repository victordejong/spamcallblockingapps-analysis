package androidx.work.impl.p018n;

import androidx.work.AbstractC1404j;
import androidx.work.BackoffPolicy;
import androidx.work.C1234b;
import androidx.work.C1238d;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import java.util.List;
import p020b.p029b.p030a.p033c.AbstractC1482a;
/* renamed from: androidx.work.impl.n.p */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/p.class */
public final class C1344p {

    /* renamed from: a */
    private static final String f5576a = AbstractC1404j.m30159f("WorkSpec");

    /* renamed from: b */
    public static final AbstractC1482a<List<?>, List<?>> f5577b = new C1345a();

    /* renamed from: c */
    public String f5578c;

    /* renamed from: d */
    public WorkInfo$State f5579d;

    /* renamed from: e */
    public String f5580e;

    /* renamed from: f */
    public String f5581f;

    /* renamed from: g */
    public C1238d f5582g;

    /* renamed from: h */
    public C1238d f5583h;

    /* renamed from: i */
    public long f5584i;

    /* renamed from: j */
    public long f5585j;

    /* renamed from: k */
    public long f5586k;

    /* renamed from: l */
    public C1234b f5587l;

    /* renamed from: m */
    public int f5588m;

    /* renamed from: n */
    public BackoffPolicy f5589n;

    /* renamed from: o */
    public long f5590o;

    /* renamed from: p */
    public long f5591p;

    /* renamed from: q */
    public long f5592q;

    /* renamed from: r */
    public long f5593r;

    /* renamed from: s */
    public boolean f5594s;

    /* renamed from: t */
    public OutOfQuotaPolicy f5595t;

    /* renamed from: androidx.work.impl.n.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/p$a.class */
    class C1345a implements AbstractC1482a<List<?>, List<?>> {
        C1345a() {
        }
    }

    /* renamed from: androidx.work.impl.n.p$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/p$b.class */
    public static class C1346b {

        /* renamed from: a */
        public String f5596a;

        /* renamed from: b */
        public WorkInfo$State f5597b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1346b)) {
                return false;
            }
            C1346b c1346b = (C1346b) obj;
            if (this.f5597b == c1346b.f5597b) {
                return this.f5596a.equals(c1346b.f5596a);
            }
            return false;
        }

        public int hashCode() {
            return (this.f5596a.hashCode() * 31) + this.f5597b.hashCode();
        }
    }

    public C1344p(C1344p c1344p) {
        this.f5579d = WorkInfo$State.ENQUEUED;
        C1238d c1238d = C1238d.f5297b;
        this.f5582g = c1238d;
        this.f5583h = c1238d;
        this.f5587l = C1234b.f5276a;
        this.f5589n = BackoffPolicy.EXPONENTIAL;
        this.f5590o = 30000L;
        this.f5593r = -1L;
        this.f5595t = OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f5578c = c1344p.f5578c;
        this.f5580e = c1344p.f5580e;
        this.f5579d = c1344p.f5579d;
        this.f5581f = c1344p.f5581f;
        this.f5582g = new C1238d(c1344p.f5582g);
        this.f5583h = new C1238d(c1344p.f5583h);
        this.f5584i = c1344p.f5584i;
        this.f5585j = c1344p.f5585j;
        this.f5586k = c1344p.f5586k;
        this.f5587l = new C1234b(c1344p.f5587l);
        this.f5588m = c1344p.f5588m;
        this.f5589n = c1344p.f5589n;
        this.f5590o = c1344p.f5590o;
        this.f5591p = c1344p.f5591p;
        this.f5592q = c1344p.f5592q;
        this.f5593r = c1344p.f5593r;
        this.f5594s = c1344p.f5594s;
        this.f5595t = c1344p.f5595t;
    }

    public C1344p(String str, String str2) {
        this.f5579d = WorkInfo$State.ENQUEUED;
        C1238d c1238d = C1238d.f5297b;
        this.f5582g = c1238d;
        this.f5583h = c1238d;
        this.f5587l = C1234b.f5276a;
        this.f5589n = BackoffPolicy.EXPONENTIAL;
        this.f5590o = 30000L;
        this.f5593r = -1L;
        this.f5595t = OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f5578c = str;
        this.f5580e = str2;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* renamed from: a */
    public long m30286a() {
        boolean z = false;
        if (m30284c()) {
            if (this.f5589n == BackoffPolicy.LINEAR) {
                z = true;
            }
            return this.f5591p + Math.min(18000000L, (long) (z ? this.f5590o * this.f5588m : Math.scalb((float) this.f5590o, this.f5588m - 1)));
        }
        char c = 0;
        if (!m30283d()) {
            ?? r0 = this.f5591p;
            char c2 = r0;
            if (r0 == 0) {
                c2 = System.currentTimeMillis();
            }
            return c2 + this.f5584i;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ?? r02 = this.f5591p;
        char c3 = r02 == 0 ? currentTimeMillis + this.f5584i : r02;
        long j = this.f5586k;
        ?? r03 = this.f5585j;
        boolean z2 = false;
        if (j != r03) {
            z2 = true;
        }
        if (z2) {
            if (r02 == 0) {
                c = j * (-1);
            }
            return c3 + r03 + c;
        }
        if (r02 != 0) {
            c = r03;
        }
        return c3 + c;
    }

    /* renamed from: b */
    public boolean m30285b() {
        return !C1234b.f5276a.equals(this.f5587l);
    }

    /* renamed from: c */
    public boolean m30284c() {
        return this.f5579d == WorkInfo$State.ENQUEUED && this.f5588m > 0;
    }

    /* renamed from: d */
    public boolean m30283d() {
        return this.f5585j != 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1344p.class != obj.getClass()) {
            return false;
        }
        C1344p c1344p = (C1344p) obj;
        if (this.f5584i != c1344p.f5584i || this.f5585j != c1344p.f5585j || this.f5586k != c1344p.f5586k || this.f5588m != c1344p.f5588m || this.f5590o != c1344p.f5590o || this.f5591p != c1344p.f5591p || this.f5592q != c1344p.f5592q || this.f5593r != c1344p.f5593r || this.f5594s != c1344p.f5594s || !this.f5578c.equals(c1344p.f5578c) || this.f5579d != c1344p.f5579d || !this.f5580e.equals(c1344p.f5580e)) {
            return false;
        }
        String str = this.f5581f;
        if (str != null) {
            if (!str.equals(c1344p.f5581f)) {
                return false;
            }
        } else if (c1344p.f5581f != null) {
            return false;
        }
        if (!this.f5582g.equals(c1344p.f5582g) || !this.f5583h.equals(c1344p.f5583h) || !this.f5587l.equals(c1344p.f5587l) || this.f5589n != c1344p.f5589n) {
            return false;
        }
        if (this.f5595t != c1344p.f5595t) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f5578c.hashCode();
        int hashCode2 = this.f5579d.hashCode();
        int hashCode3 = this.f5580e.hashCode();
        String str = this.f5581f;
        int hashCode4 = str != null ? str.hashCode() : 0;
        int hashCode5 = this.f5582g.hashCode();
        int hashCode6 = this.f5583h.hashCode();
        long j = this.f5584i;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f5585j;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        long j3 = this.f5586k;
        int i3 = (int) (j3 ^ (j3 >>> 32));
        int hashCode7 = this.f5587l.hashCode();
        int i4 = this.f5588m;
        int hashCode8 = this.f5589n.hashCode();
        long j4 = this.f5590o;
        int i5 = (int) (j4 ^ (j4 >>> 32));
        long j5 = this.f5591p;
        int i6 = (int) (j5 ^ (j5 >>> 32));
        long j6 = this.f5592q;
        int i7 = (int) (j6 ^ (j6 >>> 32));
        long j7 = this.f5593r;
        return (((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i2) * 31) + i3) * 31) + hashCode7) * 31) + i4) * 31) + hashCode8) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.f5594s ? 1 : 0)) * 31) + this.f5595t.hashCode();
    }

    public String toString() {
        return "{WorkSpec: " + this.f5578c + "}";
    }
}
