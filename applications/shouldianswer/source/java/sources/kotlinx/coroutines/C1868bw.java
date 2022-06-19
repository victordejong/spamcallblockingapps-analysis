package kotlinx.coroutines;

import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.bw */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bw.class */
public final class C1868bw implements AbstractC1812au, AbstractC1939p {

    /* renamed from: a */
    public static final C1868bw f4612a = new C1868bw();

    private C1868bw() {
    }

    @Override // kotlinx.coroutines.AbstractC1812au
    /* renamed from: a */
    public void mo2730a() {
    }

    @Override // kotlinx.coroutines.AbstractC1939p
    /* renamed from: b */
    public boolean mo2527b(Throwable th) {
        C1694h.m3117b(th, "cause");
        return false;
    }

    public String toString() {
        return "NonDisposableHandle";
    }
}
