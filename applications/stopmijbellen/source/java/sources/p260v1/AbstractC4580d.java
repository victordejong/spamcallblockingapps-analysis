package p260v1;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import p003a2.AbstractC0008a;
import p003a2.C0009b;
import p186o1.AbstractC3824h;
import p238t1.AbstractC4352a;
/* renamed from: v1.d */
/* loaded from: classes-dex2jar.jar:v1/d.class */
public abstract class AbstractC4580d<T> {

    /* renamed from: f */
    public static final String f14156f = AbstractC3824h.m1773e("ConstraintTracker");

    /* renamed from: a */
    public final AbstractC0008a f14157a;

    /* renamed from: b */
    public final Context f14158b;

    /* renamed from: c */
    public final Object f14159c = new Object();

    /* renamed from: d */
    public final Set<AbstractC4352a<T>> f14160d = new LinkedHashSet();

    /* renamed from: e */
    public T f14161e;

    /* renamed from: v1.d$a */
    /* loaded from: classes-dex2jar.jar:v1/d$a.class */
    public class RunnableC4581a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f14162a;

        public RunnableC4581a(List list) {
            AbstractC4580d.this = r4;
            this.f14162a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (AbstractC4352a abstractC4352a : this.f14162a) {
                abstractC4352a.mo914a(AbstractC4580d.this.f14161e);
            }
        }
    }

    public AbstractC4580d(Context context, AbstractC0008a abstractC0008a) {
        this.f14158b = context.getApplicationContext();
        this.f14157a = abstractC0008a;
    }

    /* renamed from: a */
    public abstract T mo754a();

    /* renamed from: b */
    public void m760b(AbstractC4352a<T> abstractC4352a) {
        synchronized (this.f14159c) {
            if (this.f14160d.remove(abstractC4352a) && this.f14160d.isEmpty()) {
                mo757e();
            }
        }
    }

    /* renamed from: c */
    public void m759c(T t) {
        synchronized (this.f14159c) {
            T t2 = this.f14161e;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.f14161e = t;
                ((C0009b) this.f14157a).f10c.execute(new RunnableC4581a(new ArrayList(this.f14160d)));
            }
        }
    }

    /* renamed from: d */
    public abstract void mo758d();

    /* renamed from: e */
    public abstract void mo757e();
}
