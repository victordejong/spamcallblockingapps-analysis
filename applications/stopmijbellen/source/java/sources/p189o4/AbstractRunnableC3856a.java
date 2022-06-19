package p189o4;

import p220r4.C4203l;
/* renamed from: o4.a */
/* loaded from: classes-dex2jar.jar:o4/a.class */
public abstract class AbstractRunnableC3856a implements Runnable {

    /* renamed from: a */
    public final C4203l f12345a;

    public AbstractRunnableC3856a() {
        this.f12345a = null;
    }

    public AbstractRunnableC3856a(C4203l c4203l) {
        this.f12345a = c4203l;
    }

    /* renamed from: b */
    public abstract void mo1750b();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo1750b();
        } catch (Exception e) {
            C4203l c4203l = this.f12345a;
            if (c4203l == null) {
                return;
            }
            c4203l.m1294a(e);
        }
    }
}
