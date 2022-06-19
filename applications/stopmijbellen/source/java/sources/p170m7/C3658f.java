package p170m7;
/* renamed from: m7.f */
/* loaded from: classes2-dex2jar.jar:m7/f.class */
public class C3658f implements AbstractC3653a {

    /* renamed from: a */
    public boolean f11985a;

    /* renamed from: b */
    public boolean f11986b;

    /* renamed from: c */
    public AbstractC3653a f11987c;

    /* renamed from: m7.f$a */
    /* loaded from: classes2-dex2jar.jar:m7/f$a.class */
    public static final class C3659a extends C3658f {
        public C3659a() {
            mo1927c();
        }
    }

    /* renamed from: m7.f$b */
    /* loaded from: classes2-dex2jar.jar:m7/f$b.class */
    public static final class C3660b extends C3658f {
        public C3660b() {
            cancel();
        }
    }

    static {
        new C3659a();
        new C3660b();
    }

    /* renamed from: b */
    public void mo488b() {
    }

    /* renamed from: c */
    public boolean mo1927c() {
        synchronized (this) {
            if (this.f11986b) {
                return false;
            }
            if (this.f11985a) {
                return false;
            }
            this.f11985a = true;
            this.f11987c = null;
            return true;
        }
    }

    @Override // p170m7.AbstractC3653a
    public boolean cancel() {
        synchronized (this) {
            if (this.f11985a) {
                return false;
            }
            if (this.f11986b) {
                return true;
            }
            this.f11986b = true;
            AbstractC3653a abstractC3653a = this.f11987c;
            this.f11987c = null;
            if (abstractC3653a != null) {
                abstractC3653a.cancel();
            }
            mo488b();
            return true;
        }
    }

    /* renamed from: d */
    public boolean mo1926d(AbstractC3653a abstractC3653a) {
        synchronized (this) {
            if (this.f11985a) {
                return false;
            }
            this.f11987c = abstractC3653a;
            return true;
        }
    }

    @Override // p170m7.AbstractC3653a
    public boolean isCancelled() {
        boolean z;
        AbstractC3653a abstractC3653a;
        synchronized (this) {
            if (!this.f11986b && ((abstractC3653a = this.f11987c) == null || !abstractC3653a.isCancelled())) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    public boolean isDone() {
        return this.f11985a;
    }
}
