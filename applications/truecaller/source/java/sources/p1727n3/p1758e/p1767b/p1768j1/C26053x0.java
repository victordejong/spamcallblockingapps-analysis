package p1727n3.p1758e.p1767b.p1768j1;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25943c1;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.C27010k0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.j1.x0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/x0.class */
public final class C26053x0<T> implements AbstractC25943c1<T> {

    /* renamed from: a */
    public final C27010k0<C26055b<T>> f72723a = new C27010k0<>();

    /* renamed from: b */
    public final Map<AbstractC25943c1.AbstractC25944a<T>, C26054a<T>> f72724b = new HashMap();

    /* renamed from: n3.e.b.j1.x0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/x0$a.class */
    public static final class C26054a<T> implements AbstractC27012l0<C26055b<T>> {

        /* renamed from: a */
        public final AtomicBoolean f72725a = new AtomicBoolean(true);

        /* renamed from: b */
        public final AbstractC25943c1.AbstractC25944a<T> f72726b;

        /* renamed from: c */
        public final Executor f72727c;

        public C26054a(Executor executor, AbstractC25943c1.AbstractC25944a<T> abstractC25944a) {
            this.f72727c = executor;
            this.f72726b = abstractC25944a;
        }

        @Override // p1727n3.p1868v.AbstractC27012l0
        public void onChanged(Object obj) {
            this.f72727c.execute(new RunnableC26050w0(this, (C26055b) obj));
        }
    }

    /* renamed from: n3.e.b.j1.x0$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/x0$b.class */
    public static final class C26055b<T> {

        /* renamed from: a */
        public T f72728a;

        /* renamed from: b */
        public Throwable f72729b = null;

        public C26055b(T t, Throwable th) {
            this.f72728a = t;
        }

        /* renamed from: a */
        public boolean m2770a() {
            return this.f72729b == null;
        }

        public String toString() {
            String str;
            StringBuilder m8728C = C22128a.m8728C("[Result: <");
            if (m2770a()) {
                StringBuilder m8728C2 = C22128a.m8728C("Value: ");
                m8728C2.append(this.f72728a);
                str = m8728C2.toString();
            } else {
                StringBuilder m8728C3 = C22128a.m8728C("Error: ");
                m8728C3.append(this.f72729b);
                str = m8728C3.toString();
            }
            return C22128a.m8618h(m8728C, str, ">]");
        }
    }
}
