package androidx.work.impl.p006k.p008f;

import android.content.Context;
import androidx.work.AbstractC0555f;
import androidx.work.impl.p006k.AbstractC0577a;
import androidx.work.impl.utils.p010j.AbstractC0607a;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.work.impl.k.f.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k/f/d.class */
public abstract class AbstractC0580d<T> {

    /* renamed from: f */
    private static final String f3064f = AbstractC0555f.m11738f("ConstraintTracker");

    /* renamed from: a */
    protected final AbstractC0607a f3065a;

    /* renamed from: b */
    protected final Context f3066b;

    /* renamed from: c */
    private final Object f3067c = new Object();

    /* renamed from: d */
    private final Set<AbstractC0577a<T>> f3068d = new LinkedHashSet();

    /* renamed from: e */
    T f3069e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.k.f.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/k/f/d$a.class */
    public class RunnableC0581a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ List f3070b;

        RunnableC0581a(List list) {
            AbstractC0580d.this = r4;
            this.f3070b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (AbstractC0577a abstractC0577a : this.f3070b) {
                abstractC0577a.m11696a(AbstractC0580d.this.f3069e);
            }
        }
    }

    AbstractC0580d(Context context, AbstractC0607a abstractC0607a) {
        this.f3066b = context.getApplicationContext();
        this.f3065a = abstractC0607a;
    }

    /* renamed from: a */
    public void m11687a(AbstractC0577a<T> abstractC0577a) {
        synchronized (this.f3067c) {
            if (this.f3068d.add(abstractC0577a)) {
                if (this.f3068d.size() == 1) {
                    this.f3069e = m11686b();
                    AbstractC0555f.m11741c().m11743a(f3064f, String.format("%s: initial state = %s", getClass().getSimpleName(), this.f3069e), new Throwable[0]);
                    m11683e();
                }
                abstractC0577a.m11696a(this.f3069e);
            }
        }
    }

    /* renamed from: b */
    public abstract T m11686b();

    /* renamed from: c */
    public void m11685c(AbstractC0577a<T> abstractC0577a) {
        synchronized (this.f3067c) {
            if (this.f3068d.remove(abstractC0577a) && this.f3068d.isEmpty()) {
                m11682f();
            }
        }
    }

    /* renamed from: d */
    public void m11684d(T t) {
        synchronized (this.f3067c) {
            T t2 = this.f3069e;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.f3069e = t;
                this.f3065a.m11595a().execute(new RunnableC0581a(new ArrayList(this.f3068d)));
            }
        }
    }

    /* renamed from: e */
    public abstract void m11683e();

    /* renamed from: f */
    public abstract void m11682f();
}
