package kotlinx.coroutines;

import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1920r;
/* renamed from: kotlinx.coroutines.cn */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/cn.class */
final class C1888cn<T> extends C1920r<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1888cn(AbstractC1646f abstractC1646f, AbstractC1641c<? super T> abstractC1641c) {
        super(abstractC1646f, abstractC1641c);
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(abstractC1641c, "uCont");
    }

    @Override // kotlinx.coroutines.internal.C1920r, kotlinx.coroutines.AbstractC1778a
    /* renamed from: i */
    public int mo2606i() {
        return 3;
    }
}
