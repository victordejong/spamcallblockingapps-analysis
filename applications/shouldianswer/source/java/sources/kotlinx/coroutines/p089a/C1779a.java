package kotlinx.coroutines.p089a;

import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.C1808aq;
/* renamed from: kotlinx.coroutines.a.a */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/a/a.class */
public final class C1779a {
    /* renamed from: a */
    public static final <R, T> void m2970a(AbstractC1674m<? super R, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m, R r, AbstractC1641c<? super T> abstractC1641c) {
        C1694h.m3117b(abstractC1674m, "receiver$0");
        C1694h.m3117b(abstractC1641c, "completion");
        try {
            C1808aq.m2935a(C1622b.m3176a(C1622b.m3175a(abstractC1674m, r, abstractC1641c)), C1775o.f4450a);
        } catch (Throwable th) {
            C1768j.C1769a c1769a = C1768j.f4443a;
            abstractC1641c.mo2553a(C1768j.m2981e(C1771k.m2978a(th)));
        }
    }
}
