package androidx.work.impl.p085a.p087b;

import android.content.Context;
import androidx.work.AbstractC3145k;
import androidx.work.impl.p085a.AbstractC3003a;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: androidx.work.impl.a.b.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/d.class */
public abstract class AbstractC3018d<T> {

    /* renamed from: d */
    private static final String f11183d = AbstractC3145k.m39275a("ConstraintTracker");

    /* renamed from: a */
    protected final AbstractC3119a f11184a;

    /* renamed from: b */
    protected final Context f11185b;

    /* renamed from: c */
    T f11186c;

    /* renamed from: e */
    private final Object f11187e = new Object();

    /* renamed from: f */
    private final Set<AbstractC3003a<T>> f11188f = new LinkedHashSet();

    public AbstractC3018d(Context context, AbstractC3119a abstractC3119a) {
        this.f11185b = context.getApplicationContext();
        this.f11184a = abstractC3119a;
    }

    /* renamed from: a */
    public final void m39454a(AbstractC3003a<T> abstractC3003a) {
        synchronized (this.f11187e) {
            if (this.f11188f.add(abstractC3003a)) {
                if (this.f11188f.size() == 1) {
                    this.f11186c = mo39444b();
                    AbstractC3145k.m39277a();
                    String.format("%s: initial state = %s", getClass().getSimpleName(), this.f11186c);
                    mo39450c();
                }
                abstractC3003a.mo39457a(this.f11186c);
            }
        }
    }

    /* renamed from: a */
    public final void m39453a(T t) {
        synchronized (this.f11187e) {
            T t2 = this.f11186c;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.f11186c = t;
                final ArrayList arrayList = new ArrayList(this.f11188f);
                this.f11184a.mo39303a().execute(new Runnable() { // from class: androidx.work.impl.a.b.d.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        for (AbstractC3003a abstractC3003a : arrayList) {
                            abstractC3003a.mo39457a(AbstractC3018d.this.f11186c);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: b */
    public abstract T mo39444b();

    /* renamed from: b */
    public final void m39452b(AbstractC3003a<T> abstractC3003a) {
        synchronized (this.f11187e) {
            if (this.f11188f.remove(abstractC3003a) && this.f11188f.isEmpty()) {
                mo39449d();
            }
        }
    }

    /* renamed from: c */
    public abstract void mo39450c();

    /* renamed from: d */
    public abstract void mo39449d();
}
