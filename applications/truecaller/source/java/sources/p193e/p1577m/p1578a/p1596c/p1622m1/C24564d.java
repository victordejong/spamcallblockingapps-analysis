package p193e.p1577m.p1578a.p1596c.p1622m1;
/* renamed from: e.m.a.c.m1.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/d.class */
public final class C24564d extends AbstractC24571j {

    /* renamed from: c */
    public final AbstractC24563c f68673c;

    public C24564d(AbstractC24563c abstractC24563c) {
        this.f68673c = abstractC24563c;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24266f
    public final void release() {
        AbstractC24563c abstractC24563c = this.f68673c;
        synchronized (abstractC24563c.f67307b) {
            clear();
            O[] oArr = abstractC24563c.f67311f;
            int i = abstractC24563c.f67313h;
            abstractC24563c.f67313h = i + 1;
            oArr[i] = this;
            abstractC24563c.m5326g();
        }
    }
}
