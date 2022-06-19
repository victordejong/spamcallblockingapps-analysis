package p148k7;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: k7.u */
/* loaded from: classes2-dex2jar.jar:k7/u.class */
public class C3376u implements Closeable {

    /* renamed from: a */
    public Selector f11410a;

    /* renamed from: b */
    public AtomicBoolean f11411b = new AtomicBoolean(false);

    /* renamed from: c */
    public Semaphore f11412c = new Semaphore(0);

    public C3376u(Selector selector) {
        this.f11410a = selector;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f11410a.close();
    }

    /* renamed from: d */
    public Set<SelectionKey> m2333d() {
        return this.f11410a.keys();
    }

    /* renamed from: k */
    public void m2332k(long j) throws IOException {
        try {
            this.f11412c.drainPermits();
            this.f11410a.select(j);
        } finally {
            this.f11412c.release(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        }
    }

    /* renamed from: l */
    public void m2331l() {
        boolean tryAcquire = this.f11412c.tryAcquire();
        this.f11410a.wakeup();
        if (!tryAcquire) {
            return;
        }
        if (this.f11411b.getAndSet(true)) {
            this.f11410a.wakeup();
            return;
        }
        for (int i = 0; i < 100; i++) {
            try {
                try {
                    this.f11412c.tryAcquire(10L, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                }
            } finally {
                this.f11411b.set(false);
            }
        }
        this.f11410a.wakeup();
    }
}
