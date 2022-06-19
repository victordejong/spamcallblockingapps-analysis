package p193e.p1577m.p1578a.p1596c.p1636q1;
/* renamed from: e.m.a.c.q1.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/i.class */
public final class C24779i {

    /* renamed from: a */
    public boolean f69451a;

    /* renamed from: a */
    public boolean m4590a() {
        synchronized (this) {
            if (this.f69451a) {
                return false;
            }
            this.f69451a = true;
            notifyAll();
            return true;
        }
    }
}
