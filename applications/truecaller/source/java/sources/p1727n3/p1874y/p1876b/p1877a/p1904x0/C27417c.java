package p1727n3.p1874y.p1876b.p1877a.p1904x0;
/* renamed from: n3.y.b.a.x0.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/c.class */
public final class C27417c {

    /* renamed from: a */
    public boolean f77155a;

    /* renamed from: a */
    public boolean m372a() {
        synchronized (this) {
            if (this.f77155a) {
                return false;
            }
            this.f77155a = true;
            notifyAll();
            return true;
        }
    }
}
