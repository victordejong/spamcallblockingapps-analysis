package kotlin.p079d.p080a;

import kotlin.p079d.C1655a;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.d.a.a */
/* loaded from: classes-dex2jar.jar:kotlin/d/a/a.class */
public class C1657a extends C1655a {
    @Override // kotlin.p079d.C1655a
    /* renamed from: a */
    public void mo3137a(Throwable th, Throwable th2) {
        C1694h.m3117b(th, "cause");
        C1694h.m3117b(th2, "exception");
        th.addSuppressed(th2);
    }
}
