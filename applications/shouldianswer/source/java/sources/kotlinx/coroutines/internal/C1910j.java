package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.internal.j */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/j.class */
public class C1910j<E> {

    /* renamed from: a */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4653a = AtomicReferenceFieldUpdater.newUpdater(C1910j.class, Object.class, "_cur$internal");
    public volatile /* synthetic */ Object _cur$internal;

    public C1910j(boolean z) {
        this._cur$internal = new C1911k(8, z);
    }

    /* renamed from: a */
    public final int m2638a() {
        return ((C1911k) this._cur$internal).m2627b();
    }

    /* renamed from: a */
    public final boolean m2637a(E e) {
        C1694h.m3117b(e, "element");
        while (true) {
            C1911k c1911k = (C1911k) this._cur$internal;
            int m2630a = c1911k.m2630a((C1911k) e);
            if (m2630a != 0) {
                if (m2630a == 1) {
                    f4653a.compareAndSet(this, c1911k, c1911k.m2621e());
                } else if (m2630a == 2) {
                    return false;
                }
            } else {
                return true;
            }
        }
    }

    /* renamed from: b */
    public final void m2636b() {
        while (true) {
            C1911k c1911k = (C1911k) this._cur$internal;
            if (c1911k.m2624c()) {
                return;
            }
            f4653a.compareAndSet(this, c1911k, c1911k.m2621e());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c5, code lost:
        r13 = r0;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final E m2635c() {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.C1910j.m2635c():java.lang.Object");
    }
}
