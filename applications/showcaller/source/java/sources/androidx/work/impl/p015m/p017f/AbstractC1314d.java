package androidx.work.impl.p015m.p017f;

import android.content.Context;
import androidx.work.AbstractC1404j;
import androidx.work.impl.p015m.AbstractC1297a;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.work.impl.m.f.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/d.class */
public abstract class AbstractC1314d<T> {

    /* renamed from: a */
    private static final String f5525a = AbstractC1404j.m30159f("ConstraintTracker");

    /* renamed from: b */
    protected final AbstractC1399a f5526b;

    /* renamed from: c */
    protected final Context f5527c;

    /* renamed from: d */
    private final Object f5528d = new Object();

    /* renamed from: e */
    private final Set<AbstractC1297a<T>> f5529e = new LinkedHashSet();

    /* renamed from: f */
    T f5530f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.m.f.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/d$a.class */
    public class RunnableC1315a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ List f5531d;

        RunnableC1315a(List list) {
            AbstractC1314d.this = r4;
            this.f5531d = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (AbstractC1297a abstractC1297a : this.f5531d) {
                abstractC1297a.mo30342a(AbstractC1314d.this.f5530f);
            }
        }
    }

    public AbstractC1314d(Context context, AbstractC1399a abstractC1399a) {
        this.f5527c = context.getApplicationContext();
        this.f5526b = abstractC1399a;
    }

    /* renamed from: a */
    public void m30324a(AbstractC1297a<T> abstractC1297a) {
        synchronized (this.f5528d) {
            if (this.f5529e.add(abstractC1297a)) {
                if (this.f5529e.size() == 1) {
                    this.f5530f = mo30315b();
                    AbstractC1404j.m30161c().mo30158a(f5525a, String.format("%s: initial state = %s", getClass().getSimpleName(), this.f5530f), new Throwable[0]);
                    mo30321e();
                }
                abstractC1297a.mo30342a(this.f5530f);
            }
        }
    }

    /* renamed from: b */
    public abstract T mo30315b();

    /* renamed from: c */
    public void m30323c(AbstractC1297a<T> abstractC1297a) {
        synchronized (this.f5528d) {
            if (this.f5529e.remove(abstractC1297a) && this.f5529e.isEmpty()) {
                mo30320f();
            }
        }
    }

    /* renamed from: d */
    public void m30322d(T t) {
        synchronized (this.f5528d) {
            T t2 = this.f5530f;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.f5530f = t;
                this.f5526b.mo30173a().execute(new RunnableC1315a(new ArrayList(this.f5529e)));
            }
        }
    }

    /* renamed from: e */
    public abstract void mo30321e();

    /* renamed from: f */
    public abstract void mo30320f();
}
