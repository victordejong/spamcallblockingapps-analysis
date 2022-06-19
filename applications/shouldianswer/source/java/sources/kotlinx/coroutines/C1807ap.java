package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.p076a.C1622b;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1920r;
/* renamed from: kotlinx.coroutines.ap */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ap.class */
public final class C1807ap<T> extends C1920r<T> {

    /* renamed from: d */
    private static final AtomicIntegerFieldUpdater f4497d = AtomicIntegerFieldUpdater.newUpdater(C1807ap.class, "_decision");
    private volatile int _decision = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1807ap(AbstractC1646f abstractC1646f, AbstractC1641c<? super T> abstractC1641c) {
        super(abstractC1646f, abstractC1641c);
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(abstractC1641c, "uCont");
    }

    /* renamed from: v */
    private final boolean m2938v() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i != 2) {
                    throw new IllegalStateException("Already suspended".toString());
                }
                return false;
            }
        } while (!f4497d.compareAndSet(this, 0, 1));
        return true;
    }

    /* renamed from: w */
    private final boolean m2937w() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Already resumed".toString());
                }
                return false;
            }
        } while (!f4497d.compareAndSet(this, 0, 2));
        return true;
    }

    @Override // kotlinx.coroutines.internal.C1920r, kotlinx.coroutines.AbstractC1778a, kotlinx.coroutines.C1858bq
    /* renamed from: a */
    public void mo2607a(Object obj, int i, boolean z) {
        if (m2937w()) {
            return;
        }
        super.mo2607a(obj, i, z);
    }

    @Override // kotlinx.coroutines.internal.C1920r, kotlinx.coroutines.AbstractC1778a
    /* renamed from: i */
    public int mo2606i() {
        return 0;
    }

    /* renamed from: k */
    public final Object m2939k() {
        if (m2938v()) {
            return C1622b.m3174a();
        }
        Object m2739a = C1863br.m2739a(m2751p());
        if (m2739a instanceof C1945t) {
            throw ((C1945t) m2739a).f4697a;
        }
        return m2739a;
    }
}
