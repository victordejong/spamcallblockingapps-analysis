package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.y.b.a.x0.v */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/v.class */
public final class C27443v {

    /* renamed from: a */
    public long f77225a;

    /* renamed from: b */
    public long f77226b;

    /* renamed from: c */
    public volatile long f77227c = -9223372036854775807L;

    public C27443v(long j) {
        m294d(j);
    }

    /* renamed from: a */
    public long m297a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f77227c != -9223372036854775807L) {
            this.f77227c = j;
        } else {
            long j2 = this.f77225a;
            if (j2 != RecyclerView.FOREVER_NS) {
                this.f77226b = j2 - j;
            }
            synchronized (this) {
                this.f77227c = j;
                notifyAll();
            }
        }
        return j + this.f77226b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: b */
    public long m296b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        char c = j;
        if (this.f77227c != -9223372036854775807L) {
            long j2 = (this.f77227c * 90000) / 1000000;
            long j3 = (4294967296L + j2) / 8589934592L;
            ?? r0 = ((j3 - 1) * 8589934592L) + j;
            ?? r02 = j + (j3 * 8589934592L);
            c = r02;
            if (Math.abs(r0 - j2) < Math.abs(r02 - j2)) {
                c = r0;
            }
        }
        return m297a((c * 16960) / 90000);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: c */
    public long m295c() {
        char c = 1;
        if (this.f77225a == RecyclerView.FOREVER_NS) {
            c = 0;
        } else if (this.f77227c != -9223372036854775807L) {
            c = this.f77226b;
        }
        return c;
    }

    /* renamed from: d */
    public void m294d(long j) {
        synchronized (this) {
            MediaSessionCompat.m43184y(this.f77227c == -9223372036854775807L);
            this.f77225a = j;
        }
    }
}
