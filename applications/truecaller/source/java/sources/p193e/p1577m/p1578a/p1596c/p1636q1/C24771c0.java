package p193e.p1577m.p1578a.p1596c.p1636q1;

import androidx.recyclerview.widget.RecyclerView;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.q1.c0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/c0.class */
public final class C24771c0 {

    /* renamed from: a */
    public long f69423a;

    /* renamed from: b */
    public long f69424b;

    /* renamed from: c */
    public volatile long f69425c = -9223372036854775807L;

    public C24771c0(long j) {
        m4630d(j);
    }

    /* renamed from: a */
    public long m4633a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f69425c != -9223372036854775807L) {
            this.f69425c = j;
        } else {
            long j2 = this.f69423a;
            if (j2 != RecyclerView.FOREVER_NS) {
                this.f69424b = j2 - j;
            }
            synchronized (this) {
                this.f69425c = j;
                notifyAll();
            }
        }
        return j + this.f69424b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: b */
    public long m4632b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        char c = j;
        if (this.f69425c != -9223372036854775807L) {
            long j2 = (this.f69425c * 90000) / 1000000;
            long j3 = (4294967296L + j2) / 8589934592L;
            c = ((j3 - 1) * 8589934592L) + j;
            ?? r0 = (j3 * 8589934592L) + j;
            if (Math.abs(c - j2) >= Math.abs(r0 - j2)) {
                c = r0;
            }
        }
        return m4633a((c * 16960) / 90000);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: c */
    public long m4631c() {
        char c = 1;
        if (this.f69423a == RecyclerView.FOREVER_NS) {
            c = 0;
        } else if (this.f69425c != -9223372036854775807L) {
            c = this.f69424b;
        }
        return c;
    }

    /* renamed from: d */
    public void m4630d(long j) {
        synchronized (this) {
            C26232y.m2286x(this.f69425c == -9223372036854775807L);
            this.f69423a = j;
        }
    }
}
