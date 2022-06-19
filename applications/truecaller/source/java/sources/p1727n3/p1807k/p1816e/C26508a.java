package p1727n3.p1807k.p1816e;
/* renamed from: n3.k.e.a */
/* loaded from: classes-dex2jar.jar:n3/k/e/a.class */
public final class C26508a {

    /* renamed from: a */
    public boolean f74296a;

    /* renamed from: b */
    public AbstractC26509a f74297b;

    /* renamed from: c */
    public boolean f74298c;

    /* renamed from: n3.k.e.a$a */
    /* loaded from: classes-dex2jar.jar:n3/k/e/a$a.class */
    public interface AbstractC26509a {
        /* renamed from: f0 */
        void mo1049f0();
    }

    /* renamed from: a */
    public void m1722a() {
        synchronized (this) {
            if (this.f74296a) {
                return;
            }
            this.f74296a = true;
            this.f74298c = true;
            AbstractC26509a abstractC26509a = this.f74297b;
            if (abstractC26509a != null) {
                try {
                    abstractC26509a.mo1049f0();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f74298c = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            synchronized (this) {
                this.f74298c = false;
                notifyAll();
            }
        }
    }

    /* renamed from: b */
    public void m1721b(AbstractC26509a abstractC26509a) {
        synchronized (this) {
            while (this.f74298c) {
                try {
                    wait();
                } catch (InterruptedException e) {
                }
            }
            if (this.f74297b == abstractC26509a) {
                return;
            }
            this.f74297b = abstractC26509a;
            if (!this.f74296a) {
                return;
            }
            abstractC26509a.mo1049f0();
        }
    }
}
