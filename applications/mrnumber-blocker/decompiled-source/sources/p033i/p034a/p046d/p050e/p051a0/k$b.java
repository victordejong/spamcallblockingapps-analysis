package p033i.p034a.p046d.p050e.p051a0;

import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p033i.p034a.p035a.p036f.AbstractC0302r;
import p033i.p034a.p046d.p050e.p053c0.AbstractC0375k;
/* renamed from: i.a.d.e.a0.k$b */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/a0/k$b.class */
final class k$b {

    /* renamed from: a */
    private final ReentrantReadWriteLock f893a;

    /* renamed from: b */
    private double f894b;

    /* renamed from: c */
    private long f895c;

    /* renamed from: d */
    private double f896d;

    /* renamed from: e */
    private double f897e;

    private k$b() {
        this.f893a = new ReentrantReadWriteLock();
        this.f894b = 0.0d;
        this.f895c = 0L;
        this.f896d = Double.POSITIVE_INFINITY;
        this.f897e = Double.NEGATIVE_INFINITY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public AbstractC0375k.g m312c(long j, long j2, AbstractC0302r rVar) {
        this.f893a.readLock().lock();
        long j3 = this.f895c;
        AbstractC0375k.g d = j3 == 0 ? null : AbstractC0375k.g.d(j, j2, rVar, j3, this.f894b, Arrays.asList(AbstractC0375k.AbstractC0380n.m284a(0.0d, this.f896d), AbstractC0375k.AbstractC0380n.m284a(100.0d, this.f897e)));
        this.f893a.readLock().unlock();
        return d;
    }

    /* renamed from: b */
    public void m313b(k$b k_b) {
        this.f893a.writeLock().lock();
        long j = this.f895c;
        if (j == 0) {
            this.f893a.writeLock().unlock();
            return;
        }
        double d = this.f894b;
        double d2 = this.f896d;
        double d3 = this.f897e;
        this.f895c = 0L;
        this.f894b = 0.0d;
        this.f896d = Double.POSITIVE_INFINITY;
        this.f897e = Double.NEGATIVE_INFINITY;
        this.f893a.writeLock().unlock();
        k_b.f893a.writeLock().lock();
        k_b.f895c += j;
        k_b.f894b += d;
        k_b.f896d = Math.min(d2, k_b.f896d);
        k_b.f897e = Math.max(d3, k_b.f897e);
        k_b.f893a.writeLock().unlock();
    }
}
