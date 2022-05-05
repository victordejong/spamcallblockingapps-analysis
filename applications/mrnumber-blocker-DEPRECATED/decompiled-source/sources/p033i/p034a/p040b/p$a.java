package p033i.p034a.p040b;
/* renamed from: i.a.b.p$a */
/* loaded from: classes2-dex2jar.jar:i/a/b/p$a.class */
class p$a extends Throwable {

    /* renamed from: f */
    final String f865f = Thread.currentThread().getName();

    /* renamed from: g */
    final long f866g = Thread.currentThread().getId();

    /* renamed from: h */
    final AbstractC0336d f867h;

    /* renamed from: i */
    volatile boolean f868i;

    p$a(AbstractC0336d dVar) {
        super("Thread [" + Thread.currentThread().getName() + "] opened scope for " + dVar + " here:");
        this.f867h = dVar;
    }
}
