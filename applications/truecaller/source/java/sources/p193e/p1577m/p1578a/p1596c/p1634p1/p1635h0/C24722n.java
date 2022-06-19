package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import java.util.Iterator;
import java.util.TreeSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.p1.h0.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/n.class */
public final class C24722n {

    /* renamed from: a */
    public final int f69276a;

    /* renamed from: b */
    public final String f69277b;

    /* renamed from: c */
    public final TreeSet<C24734w> f69278c = new TreeSet<>();

    /* renamed from: d */
    public C24730s f69279d;

    /* renamed from: e */
    public boolean f69280e;

    public C24722n(int i, String str, C24730s c24730s) {
        this.f69276a = i;
        this.f69277b = str;
        this.f69279d = c24730s;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* renamed from: a */
    public long m4743a(long j, long j2) {
        C24734w m4742b = m4742b(j);
        boolean z = true;
        if (!m4742b.f69269d) {
            char c = m4742b.f69268c;
            if (c != -1) {
                z = false;
            }
            if (z) {
                c = 65535;
            }
            return -Math.min((long) c, j2);
        }
        long j3 = j + j2;
        char c2 = m4742b.f69267b + m4742b.f69268c;
        char c3 = c2;
        if (c2 < j3) {
            Iterator<C24734w> it = this.f69278c.tailSet(m4742b, false).iterator();
            while (true) {
                c3 = c2;
                if (!it.hasNext()) {
                    break;
                }
                C24734w next = it.next();
                long j4 = next.f69267b;
                if (j4 <= c2) {
                    c3 = Math.max((long) c2, j4 + next.f69268c);
                    c2 = c3;
                    if (c3 >= j3) {
                        break;
                    }
                } else {
                    c3 = c2;
                    break;
                }
            }
        }
        return Math.min(c3 - j, j2);
    }

    /* renamed from: b */
    public C24734w m4742b(long j) {
        C24734w c24734w = new C24734w(this.f69277b, j, -1L, -9223372036854775807L, null);
        C24734w floor = this.f69278c.floor(c24734w);
        if (floor == null || floor.f69267b + floor.f69268c <= j) {
            C24734w ceiling = this.f69278c.ceiling(c24734w);
            String str = this.f69277b;
            return ceiling == null ? new C24734w(str, j, -1L, -9223372036854775807L, null) : new C24734w(str, j, ceiling.f69267b - j, -9223372036854775807L, null);
        }
        return floor;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C24722n.class != obj.getClass()) {
            return false;
        }
        C24722n c24722n = (C24722n) obj;
        if (this.f69276a != c24722n.f69276a || !this.f69277b.equals(c24722n.f69277b) || !this.f69278c.equals(c24722n.f69278c) || !this.f69279d.equals(c24722n.f69279d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f69279d.hashCode() + C22128a.m8579q2(this.f69277b, this.f69276a * 31, 31);
    }
}
