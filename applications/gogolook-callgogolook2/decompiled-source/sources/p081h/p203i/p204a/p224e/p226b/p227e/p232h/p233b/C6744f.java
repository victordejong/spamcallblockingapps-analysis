package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.content.Context;
import androidx.loader.content.AsyncTaskLoader;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6893l;
/* renamed from: h.i.a.e.b.e.h.b.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/f.class */
public final class C6744f extends AsyncTaskLoader<Void> implements AbstractC6893l {

    /* renamed from: a */
    public Semaphore f16634a = new Semaphore(0);

    /* renamed from: b */
    public Set<AbstractC6825f> f16635b;

    public C6744f(Context context, Set<AbstractC6825f> set) {
        super(context);
        this.f16635b = set;
    }

    /* renamed from: a */
    public final Void loadInBackground() {
        int i = 0;
        for (AbstractC6825f fVar : this.f16635b) {
            if (fVar.mo21647a(this)) {
                i++;
            }
        }
        try {
            this.f16634a.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6893l
    public final void onComplete() {
        this.f16634a.release();
    }

    @Override // androidx.loader.content.Loader
    public final void onStartLoading() {
        this.f16634a.drainPermits();
        forceLoad();
    }
}
