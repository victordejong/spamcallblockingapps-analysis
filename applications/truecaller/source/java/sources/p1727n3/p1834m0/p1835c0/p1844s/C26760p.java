package p1727n3.p1834m0.p1835c0.p1844s;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26850t;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.c0.s.p */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/p.class */
public final class C26760p {

    /* renamed from: s */
    public static final String f74900s = AbstractC26839p.m1295e("WorkSpec");

    /* renamed from: t */
    public static final AbstractC25640a<List<C26763c>, List<C26855x>> f74901t = new C26761a();

    /* renamed from: a */
    public String f74902a;

    /* renamed from: b */
    public C26855x.EnumC26856a f74903b;

    /* renamed from: c */
    public String f74904c;

    /* renamed from: d */
    public String f74905d;

    /* renamed from: e */
    public C26829f f74906e;

    /* renamed from: f */
    public C26829f f74907f;

    /* renamed from: g */
    public long f74908g;

    /* renamed from: h */
    public long f74909h;

    /* renamed from: i */
    public long f74910i;

    /* renamed from: j */
    public C26825d f74911j;

    /* renamed from: k */
    public int f74912k;

    /* renamed from: l */
    public EnumC26674a f74913l;

    /* renamed from: m */
    public long f74914m;

    /* renamed from: n */
    public long f74915n;

    /* renamed from: o */
    public long f74916o;

    /* renamed from: p */
    public long f74917p;

    /* renamed from: q */
    public boolean f74918q;

    /* renamed from: r */
    public EnumC26850t f74919r;

    /* renamed from: n3.m0.c0.s.p$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/p$a.class */
    public class C26761a implements AbstractC25640a<List<C26763c>, List<C26855x>> {
        @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
        public List<C26855x> apply(List<C26763c> list) {
            ArrayList arrayList;
            List<C26763c> list2 = list;
            if (list2 == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(list2.size());
                for (C26763c c26763c : list2) {
                    arrayList.add(c26763c.m1357a());
                }
            }
            return arrayList;
        }
    }

    /* renamed from: n3.m0.c0.s.p$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/p$b.class */
    public static class C26762b {

        /* renamed from: a */
        public String f74920a;

        /* renamed from: b */
        public C26855x.EnumC26856a f74921b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C26762b)) {
                return false;
            }
            C26762b c26762b = (C26762b) obj;
            if (this.f74921b == c26762b.f74921b) {
                return this.f74920a.equals(c26762b.f74920a);
            }
            return false;
        }

        public int hashCode() {
            return this.f74921b.hashCode() + (this.f74920a.hashCode() * 31);
        }
    }

    /* renamed from: n3.m0.c0.s.p$c */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/p$c.class */
    public static class C26763c {

        /* renamed from: a */
        public String f74922a;

        /* renamed from: b */
        public C26855x.EnumC26856a f74923b;

        /* renamed from: c */
        public C26829f f74924c;

        /* renamed from: d */
        public int f74925d;

        /* renamed from: e */
        public List<String> f74926e;

        /* renamed from: f */
        public List<C26829f> f74927f;

        /* renamed from: a */
        public C26855x m1357a() {
            List<C26829f> list = this.f74927f;
            return new C26855x(UUID.fromString(this.f74922a), this.f74923b, this.f74924c, this.f74926e, (list == null || list.isEmpty()) ? C26829f.f75077c : this.f74927f.get(0), this.f74925d);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C26763c)) {
                return false;
            }
            C26763c c26763c = (C26763c) obj;
            if (this.f74925d != c26763c.f74925d) {
                return false;
            }
            String str = this.f74922a;
            if (str != null) {
                if (!str.equals(c26763c.f74922a)) {
                    return false;
                }
            } else if (c26763c.f74922a != null) {
                return false;
            }
            if (this.f74923b != c26763c.f74923b) {
                return false;
            }
            C26829f c26829f = this.f74924c;
            if (c26829f != null) {
                if (!c26829f.equals(c26763c.f74924c)) {
                    return false;
                }
            } else if (c26763c.f74924c != null) {
                return false;
            }
            List<String> list = this.f74926e;
            if (list != null) {
                if (!list.equals(c26763c.f74926e)) {
                    return false;
                }
            } else if (c26763c.f74926e != null) {
                return false;
            }
            List<C26829f> list2 = this.f74927f;
            List<C26829f> list3 = c26763c.f74927f;
            if (list2 != null) {
                z = list2.equals(list3);
            } else if (list3 != null) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f74922a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            C26855x.EnumC26856a enumC26856a = this.f74923b;
            int hashCode2 = enumC26856a != null ? enumC26856a.hashCode() : 0;
            C26829f c26829f = this.f74924c;
            int hashCode3 = c26829f != null ? c26829f.hashCode() : 0;
            int i2 = this.f74925d;
            List<String> list = this.f74926e;
            int hashCode4 = list != null ? list.hashCode() : 0;
            List<C26829f> list2 = this.f74927f;
            if (list2 != null) {
                i = list2.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + i;
        }
    }

    public C26760p(String str, String str2) {
        this.f74903b = C26855x.EnumC26856a.ENQUEUED;
        C26829f c26829f = C26829f.f75077c;
        this.f74906e = c26829f;
        this.f74907f = c26829f;
        this.f74911j = C26825d.f75057i;
        this.f74913l = EnumC26674a.EXPONENTIAL;
        this.f74914m = 30000L;
        this.f74917p = -1L;
        this.f74919r = EnumC26850t.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f74902a = str;
        this.f74904c = str2;
    }

    public C26760p(C26760p c26760p) {
        this.f74903b = C26855x.EnumC26856a.ENQUEUED;
        C26829f c26829f = C26829f.f75077c;
        this.f74906e = c26829f;
        this.f74907f = c26829f;
        this.f74911j = C26825d.f75057i;
        this.f74913l = EnumC26674a.EXPONENTIAL;
        this.f74914m = 30000L;
        this.f74917p = -1L;
        this.f74919r = EnumC26850t.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f74902a = c26760p.f74902a;
        this.f74904c = c26760p.f74904c;
        this.f74903b = c26760p.f74903b;
        this.f74905d = c26760p.f74905d;
        this.f74906e = new C26829f(c26760p.f74906e);
        this.f74907f = new C26829f(c26760p.f74907f);
        this.f74908g = c26760p.f74908g;
        this.f74909h = c26760p.f74909h;
        this.f74910i = c26760p.f74910i;
        this.f74911j = new C26825d(c26760p.f74911j);
        this.f74912k = c26760p.f74912k;
        this.f74913l = c26760p.f74913l;
        this.f74914m = c26760p.f74914m;
        this.f74915n = c26760p.f74915n;
        this.f74916o = c26760p.f74916o;
        this.f74917p = c26760p.f74917p;
        this.f74918q = c26760p.f74918q;
        this.f74919r = c26760p.f74919r;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* renamed from: a */
    public long m1361a() {
        char c;
        char c2;
        if (this.f74903b == C26855x.EnumC26856a.ENQUEUED && this.f74912k > 0) {
            boolean z = false;
            if (this.f74913l == EnumC26674a.LINEAR) {
                z = true;
            }
            char scalb = z ? this.f74914m * this.f74912k : Math.scalb((float) this.f74914m, this.f74912k - 1);
            c2 = this.f74915n;
            c = Math.min(18000000L, (long) scalb);
        } else {
            char c3 = 0;
            if (m1359c()) {
                long currentTimeMillis = System.currentTimeMillis();
                char c4 = this.f74915n;
                int i = (c4 > 0L ? 1 : (c4 == 0L ? 0 : -1));
                if (i == 0) {
                    c4 = this.f74908g + currentTimeMillis;
                }
                long j = this.f74910i;
                ?? r0 = this.f74909h;
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
            ?? r02 = this.f74915n;
            c = r02;
            if (r02 == 0) {
                c = System.currentTimeMillis();
            }
            c2 = this.f74908g;
        }
        return c + c2;
    }

    /* renamed from: b */
    public boolean m1360b() {
        return !C26825d.f75057i.equals(this.f74911j);
    }

    /* renamed from: c */
    public boolean m1359c() {
        return this.f74909h != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public void m1358d(long j, long j2) {
        char c = j;
        if (j < 900000) {
            AbstractC26839p.m1296c().mo1291f(f74900s, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L), new Throwable[0]);
            c = 48032;
        }
        char c2 = j2;
        if (j2 < 300000) {
            AbstractC26839p.m1296c().mo1291f(f74900s, String.format("Flex duration lesser than minimum allowed value; Changed to %s", 300000L), new Throwable[0]);
            c2 = 37856;
        }
        char c3 = c2;
        if (c2 > c) {
            AbstractC26839p.m1296c().mo1291f(f74900s, String.format("Flex duration greater than interval duration; Changed to %s", Long.valueOf(c)), new Throwable[0]);
            c3 = c;
        }
        this.f74909h = c;
        this.f74910i = c3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C26760p.class != obj.getClass()) {
            return false;
        }
        C26760p c26760p = (C26760p) obj;
        if (this.f74908g != c26760p.f74908g || this.f74909h != c26760p.f74909h || this.f74910i != c26760p.f74910i || this.f74912k != c26760p.f74912k || this.f74914m != c26760p.f74914m || this.f74915n != c26760p.f74915n || this.f74916o != c26760p.f74916o || this.f74917p != c26760p.f74917p || this.f74918q != c26760p.f74918q || !this.f74902a.equals(c26760p.f74902a) || this.f74903b != c26760p.f74903b || !this.f74904c.equals(c26760p.f74904c)) {
            return false;
        }
        String str = this.f74905d;
        if (str != null) {
            if (!str.equals(c26760p.f74905d)) {
                return false;
            }
        } else if (c26760p.f74905d != null) {
            return false;
        }
        if (!this.f74906e.equals(c26760p.f74906e) || !this.f74907f.equals(c26760p.f74907f) || !this.f74911j.equals(c26760p.f74911j) || this.f74913l != c26760p.f74913l) {
            return false;
        }
        if (this.f74919r != c26760p.f74919r) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f74904c, (this.f74903b.hashCode() + (this.f74902a.hashCode() * 31)) * 31, 31);
        String str = this.f74905d;
        int hashCode = str != null ? str.hashCode() : 0;
        int hashCode2 = this.f74906e.hashCode();
        int hashCode3 = this.f74907f.hashCode();
        long j = this.f74908g;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f74909h;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        long j3 = this.f74910i;
        int i3 = (int) (j3 ^ (j3 >>> 32));
        int hashCode4 = this.f74911j.hashCode();
        int i4 = this.f74912k;
        int hashCode5 = this.f74913l.hashCode();
        long j4 = this.f74914m;
        int i5 = (int) (j4 ^ (j4 >>> 32));
        long j5 = this.f74915n;
        int i6 = (int) (j5 ^ (j5 >>> 32));
        long j6 = this.f74916o;
        int i7 = (int) (j6 ^ (j6 >>> 32));
        long j7 = this.f74917p;
        return this.f74919r.hashCode() + ((((((((((((hashCode5 + ((((hashCode4 + ((((((((hashCode3 + ((hashCode2 + ((m8579q2 + hashCode) * 31)) * 31)) * 31) + i) * 31) + i2) * 31) + i3) * 31)) * 31) + i4) * 31)) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.f74918q ? 1 : 0)) * 31);
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("{WorkSpec: "), this.f74902a, "}");
    }
}
