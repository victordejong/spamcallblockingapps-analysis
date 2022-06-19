package p193e.p1451f.p1452a.p1480t.p1481k;

import android.util.Log;
import n3.k.h.g;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1480t.p1481k.AbstractC22633d;
/* renamed from: e.f.a.t.k.a */
/* loaded from: classes-dex2jar.jar:e/f/a/t/k/a.class */
public final class C22625a {

    /* renamed from: a */
    public static final AbstractC22630e<Object> f62651a = new C22626a();

    /* renamed from: e.f.a.t.k.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/k/a$a.class */
    public class C22626a implements AbstractC22630e<Object> {
        @Override // p193e.p1451f.p1452a.p1480t.p1481k.C22625a.AbstractC22630e
        /* renamed from: a */
        public void mo8011a(Object obj) {
        }
    }

    /* renamed from: e.f.a.t.k.a$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/k/a$b.class */
    public interface AbstractC22627b<T> {
        T create();
    }

    /* renamed from: e.f.a.t.k.a$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/k/a$c.class */
    public static final class C22628c<T> implements AbstractC26555e<T> {

        /* renamed from: a */
        public final AbstractC22627b<T> f62652a;

        /* renamed from: b */
        public final AbstractC22630e<T> f62653b;

        /* renamed from: c */
        public final AbstractC26555e<T> f62654c;

        public C22628c(AbstractC26555e<T> abstractC26555e, AbstractC22627b<T> abstractC22627b, AbstractC22630e<T> abstractC22630e) {
            this.f62654c = abstractC26555e;
            this.f62652a = abstractC22627b;
            this.f62653b = abstractC22630e;
        }

        @Override // p1727n3.p1807k.p1820h.AbstractC26555e
        /* renamed from: a */
        public T mo1689a() {
            T mo1689a = this.f62654c.mo1689a();
            T t = mo1689a;
            if (mo1689a == null) {
                T create = this.f62652a.create();
                t = create;
                if (Log.isLoggable("FactoryPools", 2)) {
                    StringBuilder m8728C = C22128a.m8728C("Created new ");
                    m8728C.append(create.getClass());
                    m8728C.toString();
                    t = create;
                }
            }
            if (t instanceof AbstractC22629d) {
                ((AbstractC22633d.C22635b) ((AbstractC22629d) t).mo8012d()).f62655a = false;
            }
            return t;
        }

        @Override // p1727n3.p1807k.p1820h.AbstractC26555e
        /* renamed from: b */
        public boolean mo1688b(T t) {
            if (t instanceof AbstractC22629d) {
                ((AbstractC22633d.C22635b) ((AbstractC22629d) t).mo8012d()).f62655a = true;
            }
            this.f62653b.mo8011a(t);
            return this.f62654c.mo1688b(t);
        }
    }

    /* renamed from: e.f.a.t.k.a$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/k/a$d.class */
    public interface AbstractC22629d {
        /* renamed from: d */
        AbstractC22633d mo8012d();
    }

    /* renamed from: e.f.a.t.k.a$e */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/k/a$e.class */
    public interface AbstractC22630e<T> {
        /* renamed from: a */
        void mo8011a(T t);
    }

    /* renamed from: a */
    public static <T extends AbstractC22629d> AbstractC26555e<T> m8013a(int i, AbstractC22627b<T> abstractC22627b) {
        return new C22628c(new g(i), abstractC22627b, f62651a);
    }
}
