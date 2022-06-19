package kotlinx.coroutines;

import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.d */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/d.class */
public final class C1889d extends AbstractC1817az {

    /* renamed from: b */
    private final Thread f4630b;

    public C1889d(Thread thread) {
        C1694h.m3117b(thread, "thread");
        this.f4630b = thread;
    }

    @Override // kotlinx.coroutines.AbstractC1817az
    /* renamed from: a */
    protected Thread mo2689a() {
        return this.f4630b;
    }
}
