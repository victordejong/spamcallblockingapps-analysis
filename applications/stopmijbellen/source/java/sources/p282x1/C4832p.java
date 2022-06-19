package p282x1;

import android.support.p012v4.media.C0082b;
import androidx.work.C0680b;
import com.google.android.gms.internal.ads.C1676a;
import p186o1.AbstractC3824h;
import p186o1.C3816b;
import p186o1.EnumC3836m;
import p237t.C4350g;
/* renamed from: x1.p */
/* loaded from: classes-dex2jar.jar:x1/p.class */
public final class C4832p {

    /* renamed from: a */
    public String f14831a;

    /* renamed from: b */
    public EnumC3836m f14832b;

    /* renamed from: c */
    public String f14833c;

    /* renamed from: d */
    public String f14834d;

    /* renamed from: e */
    public C0680b f14835e;

    /* renamed from: f */
    public C0680b f14836f;

    /* renamed from: g */
    public long f14837g;

    /* renamed from: h */
    public long f14838h;

    /* renamed from: i */
    public long f14839i;

    /* renamed from: j */
    public C3816b f14840j;

    /* renamed from: k */
    public int f14841k;

    /* renamed from: l */
    public int f14842l;

    /* renamed from: m */
    public long f14843m;

    /* renamed from: n */
    public long f14844n;

    /* renamed from: o */
    public long f14845o;

    /* renamed from: p */
    public long f14846p;

    /* renamed from: q */
    public boolean f14847q;

    /* renamed from: r */
    public int f14848r;

    /* renamed from: x1.p$a */
    /* loaded from: classes-dex2jar.jar:x1/p$a.class */
    public static class C4833a {

        /* renamed from: a */
        public String f14849a;

        /* renamed from: b */
        public EnumC3836m f14850b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C4833a)) {
                return false;
            }
            C4833a c4833a = (C4833a) obj;
            if (this.f14850b == c4833a.f14850b) {
                return this.f14849a.equals(c4833a.f14849a);
            }
            return false;
        }

        public int hashCode() {
            return this.f14850b.hashCode() + (this.f14849a.hashCode() * 31);
        }
    }

    static {
        AbstractC3824h.m1773e("WorkSpec");
    }

    public C4832p(String str, String str2) {
        this.f14832b = EnumC3836m.ENQUEUED;
        C0680b c0680b = C0680b.f2639b;
        this.f14835e = c0680b;
        this.f14836f = c0680b;
        this.f14840j = C3816b.f12293i;
        this.f14842l = 1;
        this.f14843m = 30000L;
        this.f14846p = -1L;
        this.f14848r = 1;
        this.f14831a = str;
        this.f14833c = str2;
    }

    public C4832p(C4832p c4832p) {
        this.f14832b = EnumC3836m.ENQUEUED;
        C0680b c0680b = C0680b.f2639b;
        this.f14835e = c0680b;
        this.f14836f = c0680b;
        this.f14840j = C3816b.f12293i;
        this.f14842l = 1;
        this.f14843m = 30000L;
        this.f14846p = -1L;
        this.f14848r = 1;
        this.f14831a = c4832p.f14831a;
        this.f14833c = c4832p.f14833c;
        this.f14832b = c4832p.f14832b;
        this.f14834d = c4832p.f14834d;
        this.f14835e = new C0680b(c4832p.f14835e);
        this.f14836f = new C0680b(c4832p.f14836f);
        this.f14837g = c4832p.f14837g;
        this.f14838h = c4832p.f14838h;
        this.f14839i = c4832p.f14839i;
        this.f14840j = new C3816b(c4832p.f14840j);
        this.f14841k = c4832p.f14841k;
        this.f14842l = c4832p.f14842l;
        this.f14843m = c4832p.f14843m;
        this.f14844n = c4832p.f14844n;
        this.f14845o = c4832p.f14845o;
        this.f14846p = c4832p.f14846p;
        this.f14847q = c4832p.f14847q;
        this.f14848r = c4832p.f14848r;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* renamed from: a */
    public long m391a() {
        char c;
        char c2;
        if (this.f14832b == EnumC3836m.ENQUEUED && this.f14841k > 0) {
            boolean z = false;
            if (this.f14842l == 2) {
                z = true;
            }
            char scalb = z ? this.f14843m * this.f14841k : Math.scalb((float) this.f14843m, this.f14841k - 1);
            c2 = this.f14844n;
            c = Math.min(18000000L, (long) scalb);
        } else {
            char c3 = 0;
            if (m389c()) {
                long currentTimeMillis = System.currentTimeMillis();
                char c4 = this.f14844n;
                int i = (c4 > 0L ? 1 : (c4 == 0L ? 0 : -1));
                if (i == 0) {
                    c4 = this.f14837g + currentTimeMillis;
                }
                long j = this.f14839i;
                ?? r0 = this.f14838h;
                boolean z2 = false;
                if (j != r0) {
                    z2 = true;
                }
                if (z2) {
                    if (i == 0) {
                        c3 = j * (-1);
                    }
                    return c4 + r0 + c3;
                }
                if (i != 0) {
                    c3 = r0;
                }
                return c4 + c3;
            }
            ?? r02 = this.f14844n;
            char c5 = r02;
            if (r02 == 0) {
                c5 = System.currentTimeMillis();
            }
            c = c5;
            c2 = this.f14837g;
        }
        return c + c2;
    }

    /* renamed from: b */
    public boolean m390b() {
        return !C3816b.f12293i.equals(this.f14840j);
    }

    /* renamed from: c */
    public boolean m389c() {
        return this.f14838h != 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C4832p.class != obj.getClass()) {
            return false;
        }
        C4832p c4832p = (C4832p) obj;
        if (this.f14837g != c4832p.f14837g || this.f14838h != c4832p.f14838h || this.f14839i != c4832p.f14839i || this.f14841k != c4832p.f14841k || this.f14843m != c4832p.f14843m || this.f14844n != c4832p.f14844n || this.f14845o != c4832p.f14845o || this.f14846p != c4832p.f14846p || this.f14847q != c4832p.f14847q || !this.f14831a.equals(c4832p.f14831a) || this.f14832b != c4832p.f14832b || !this.f14833c.equals(c4832p.f14833c)) {
            return false;
        }
        String str = this.f14834d;
        if (str != null) {
            if (!str.equals(c4832p.f14834d)) {
                return false;
            }
        } else if (c4832p.f14834d != null) {
            return false;
        }
        if (!this.f14835e.equals(c4832p.f14835e) || !this.f14836f.equals(c4832p.f14836f) || !this.f14840j.equals(c4832p.f14840j) || this.f14842l != c4832p.f14842l) {
            return false;
        }
        if (this.f14848r != c4832p.f14848r) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int m4793d = C1676a.m4793d(this.f14833c, (this.f14832b.hashCode() + (this.f14831a.hashCode() * 31)) * 31, 31);
        String str = this.f14834d;
        int hashCode = str != null ? str.hashCode() : 0;
        int hashCode2 = this.f14835e.hashCode();
        int hashCode3 = this.f14836f.hashCode();
        long j = this.f14837g;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f14838h;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        long j3 = this.f14839i;
        int i3 = (int) (j3 ^ (j3 >>> 32));
        int hashCode4 = this.f14840j.hashCode();
        int i4 = this.f14841k;
        int m1021c = C4350g.m1021c(this.f14842l);
        long j4 = this.f14843m;
        int i5 = (int) (j4 ^ (j4 >>> 32));
        long j5 = this.f14844n;
        int i6 = (int) (j5 ^ (j5 >>> 32));
        long j6 = this.f14845o;
        int i7 = (int) (j6 ^ (j6 >>> 32));
        long j7 = this.f14846p;
        return C4350g.m1021c(this.f14848r) + ((((((((((((m1021c + ((((hashCode4 + ((((((((hashCode3 + ((hashCode2 + ((m4793d + hashCode) * 31)) * 31)) * 31) + i) * 31) + i2) * 31) + i3) * 31)) * 31) + i4) * 31)) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.f14847q ? 1 : 0)) * 31);
    }

    public String toString() {
        return C0082b.m8754h(C0082b.m8752j("{WorkSpec: "), this.f14831a, "}");
    }
}
