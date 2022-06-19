package p120i0;
/* renamed from: i0.b */
/* loaded from: classes-dex2jar.jar:i0/b.class */
public final class C3056b {

    /* renamed from: a */
    public boolean f10388a;

    /* renamed from: b */
    public AbstractC3057a f10389b;

    /* renamed from: c */
    public boolean f10390c;

    /* renamed from: i0.b$a */
    /* loaded from: classes-dex2jar.jar:i0/b$a.class */
    public interface AbstractC3057a {
        /* renamed from: a */
        void mo2665a();
    }

    /* renamed from: a */
    public void m2667a() {
        synchronized (this) {
            if (this.f10388a) {
                return;
            }
            this.f10388a = true;
            this.f10390c = true;
            AbstractC3057a abstractC3057a = this.f10389b;
            if (abstractC3057a != null) {
                try {
                    abstractC3057a.mo2665a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f10390c = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            synchronized (this) {
                this.f10390c = false;
                notifyAll();
            }
        }
    }

    /* renamed from: b */
    public void m2666b(AbstractC3057a abstractC3057a) {
        synchronized (this) {
            while (this.f10390c) {
                try {
                    wait();
                } catch (InterruptedException e) {
                }
            }
            if (this.f10389b == abstractC3057a) {
                return;
            }
            this.f10389b = abstractC3057a;
            if (!this.f10388a) {
                return;
            }
            abstractC3057a.mo2665a();
        }
    }
}
