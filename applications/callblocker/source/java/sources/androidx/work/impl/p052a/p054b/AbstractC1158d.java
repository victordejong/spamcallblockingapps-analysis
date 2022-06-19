package androidx.work.impl.p052a.p054b;

import android.content.Context;
import androidx.work.AbstractC1293l;
import androidx.work.impl.p052a.AbstractC1143a;
import androidx.work.impl.utils.p058b.AbstractC1271a;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: androidx.work.impl.a.b.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/d.class */
public abstract class AbstractC1158d<T> {

    /* renamed from: d */
    private static final String f3954d = AbstractC1293l.m17541a("ConstraintTracker");

    /* renamed from: a */
    protected final AbstractC1271a f3955a;

    /* renamed from: b */
    protected final Context f3956b;

    /* renamed from: c */
    T f3957c;

    /* renamed from: e */
    private final Object f3958e = new Object();

    /* renamed from: f */
    private final Set<AbstractC1143a<T>> f3959f = new LinkedHashSet();

    public AbstractC1158d(Context context, AbstractC1271a abstractC1271a) {
        this.f3956b = context.getApplicationContext();
        this.f3955a = abstractC1271a;
    }

    /* renamed from: a */
    public void m17849a(AbstractC1143a<T> abstractC1143a) {
        synchronized (this.f3958e) {
            if (this.f3959f.add(abstractC1143a)) {
                if (this.f3959f.size() == 1) {
                    this.f3957c = mo17837c();
                    AbstractC1293l.m17543a().mo17539b(f3954d, String.format("%s: initial state = %s", getClass().getSimpleName(), this.f3957c), new Throwable[0]);
                    mo17844d();
                }
                abstractC1143a.mo17865a(this.f3957c);
            }
        }
    }

    /* renamed from: a */
    public void m17848a(T t) {
        synchronized (this.f3958e) {
            if (this.f3957c == t || (this.f3957c != null && this.f3957c.equals(t))) {
                return;
            }
            this.f3957c = t;
            final ArrayList arrayList = new ArrayList(this.f3959f);
            this.f3955a.mo17578a().execute(new Runnable() { // from class: androidx.work.impl.a.b.d.1
                @Override // java.lang.Runnable
                public void run() {
                    for (AbstractC1143a abstractC1143a : arrayList) {
                        abstractC1143a.mo17865a(AbstractC1158d.this.f3957c);
                    }
                }
            });
        }
    }

    /* renamed from: b */
    public void m17847b(AbstractC1143a<T> abstractC1143a) {
        synchronized (this.f3958e) {
            if (this.f3959f.remove(abstractC1143a) && this.f3959f.isEmpty()) {
                mo17843e();
            }
        }
    }

    /* renamed from: c */
    public abstract T mo17837c();

    /* renamed from: d */
    public abstract void mo17844d();

    /* renamed from: e */
    public abstract void mo17843e();
}
