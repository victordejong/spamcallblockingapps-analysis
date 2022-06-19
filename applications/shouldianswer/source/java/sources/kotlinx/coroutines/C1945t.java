package kotlinx.coroutines;

import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.t */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/t.class */
public class C1945t {

    /* renamed from: a */
    public final Throwable f4697a;

    public C1945t(Throwable th) {
        C1694h.m3117b(th, "cause");
        this.f4697a = th;
    }

    public String toString() {
        return C1789ag.m2954b(this) + '[' + this.f4697a + ']';
    }
}
