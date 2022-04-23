package p081h.p203i.p392f.p393a.p394b.p395d;

import androidx.collection.LruCache;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p081h.p203i.p392f.p393a.p394b.AbstractC10181a;
import p081h.p203i.p392f.p393a.p394b.AbstractC10182b;
/* renamed from: h.i.f.a.b.d.c */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/b/d/c.class */
public class C10194c<T extends AbstractC10182b> implements AbstractC10190a<T> {

    /* renamed from: a */
    public final AbstractC10190a<T> f22970a;

    /* renamed from: b */
    public final LruCache<Integer, Set<? extends AbstractC10181a<T>>> f22971b = new LruCache<>(5);

    /* renamed from: c */
    public final ReadWriteLock f22972c = new ReentrantReadWriteLock();

    /* renamed from: h.i.f.a.b.d.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/d/c$a.class */
    public class RunnableC10195a implements Runnable {

        /* renamed from: a */
        public final int f22973a;

        public RunnableC10195a(int i) {
            this.f22973a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep((long) ((Math.random() * 500.0d) + 500.0d));
            } catch (InterruptedException e) {
            }
            C10194c.this.m13177a(this.f22973a);
        }
    }

    public C10194c(AbstractC10190a<T> aVar) {
        this.f22970a = aVar;
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p395d.AbstractC10190a
    /* renamed from: a */
    public Set<? extends AbstractC10181a<T>> mo13178a(double d) {
        int i = (int) d;
        Set<? extends AbstractC10181a<T>> a = m13177a(i);
        int i2 = i + 1;
        if (this.f22971b.get(Integer.valueOf(i2)) == null) {
            new Thread(new RunnableC10195a(i2)).start();
        }
        int i3 = i - 1;
        if (this.f22971b.get(Integer.valueOf(i3)) == null) {
            new Thread(new RunnableC10195a(i3)).start();
        }
        return a;
    }

    /* renamed from: a */
    public final Set<? extends AbstractC10181a<T>> m13177a(int i) {
        this.f22972c.readLock().lock();
        Set<? extends AbstractC10181a<T>> set = this.f22971b.get(Integer.valueOf(i));
        this.f22972c.readLock().unlock();
        Set<? extends AbstractC10181a<T>> set2 = set;
        if (set == null) {
            this.f22972c.writeLock().lock();
            Set<? extends AbstractC10181a<T>> set3 = this.f22971b.get(Integer.valueOf(i));
            set2 = set3;
            if (set3 == null) {
                set2 = this.f22970a.mo13178a(i);
                this.f22971b.put(Integer.valueOf(i), set2);
            }
            this.f22972c.writeLock().unlock();
        }
        return set2;
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p395d.AbstractC10190a
    /* renamed from: a */
    public void mo13179a() {
        this.f22970a.mo13179a();
        m13174b();
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p395d.AbstractC10190a
    /* renamed from: a */
    public void mo13175a(Collection<T> collection) {
        this.f22970a.mo13175a(collection);
        m13174b();
    }

    /* renamed from: b */
    public final void m13174b() {
        this.f22971b.evictAll();
    }
}
