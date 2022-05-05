package p033i.p034a.p046d.p050e.p051a0;

import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p033i.p034a.p035a.p036f.AbstractC0302r;
import p033i.p034a.p046d.p050e.p053c0.AbstractC0375k;
/* renamed from: i.a.d.e.a0.n$b */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/a0/n$b.class */
final class n$b {

    /* renamed from: a */
    private final ReentrantReadWriteLock f898a;

    /* renamed from: b */
    private long f899b;

    /* renamed from: c */
    private long f900c;

    /* renamed from: d */
    private long f901d;

    /* renamed from: e */
    private long f902e;

    private n$b() {
        this.f898a = new ReentrantReadWriteLock();
        this.f899b = 0L;
        this.f900c = 0L;
        this.f901d = Long.MAX_VALUE;
        this.f902e = Long.MIN_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m308d(n$b n_b) {
        this.f898a.writeLock().lock();
        long j = this.f900c;
        if (j == 0) {
            this.f898a.writeLock().unlock();
            return;
        }
        long j2 = this.f899b;
        long j3 = this.f901d;
        long j4 = this.f902e;
        this.f900c = 0L;
        this.f899b = 0L;
        this.f901d = Long.MAX_VALUE;
        this.f902e = Long.MIN_VALUE;
        this.f898a.writeLock().unlock();
        n_b.f898a.writeLock().lock();
        n_b.f900c += j;
        n_b.f899b += j2;
        n_b.f901d = Math.min(j3, n_b.f901d);
        n_b.f902e = Math.max(j4, n_b.f902e);
        n_b.f898a.writeLock().unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m307e(long j) {
        this.f898a.writeLock().lock();
        this.f900c++;
        this.f899b += j;
        this.f901d = Math.min(j, this.f901d);
        this.f902e = Math.max(j, this.f902e);
        this.f898a.writeLock().unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public AbstractC0375k.g m306f(long j, long j2, AbstractC0302r rVar) {
        this.f898a.readLock().lock();
        long j3 = this.f900c;
        AbstractC0375k.g d = j3 == 0 ? null : AbstractC0375k.g.d(j, j2, rVar, j3, this.f899b, Arrays.asList(AbstractC0375k.AbstractC0380n.m284a(0.0d, this.f901d), AbstractC0375k.AbstractC0380n.m284a(100.0d, this.f902e)));
        this.f898a.readLock().unlock();
        return d;
    }
}
