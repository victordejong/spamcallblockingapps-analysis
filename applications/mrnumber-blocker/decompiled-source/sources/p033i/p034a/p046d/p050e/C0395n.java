package p033i.p034a.p046d.p050e;

import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Consumer;
import p033i.p034a.p035a.p038h.AbstractC0307a;
/* renamed from: i.a.d.e.n */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/n.class */
final class C0395n {
    private C0395n(C0397q qVar, Consumer<C0397q> consumer) {
        new ReentrantLock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m251a(C0397q qVar) {
    }

    /* renamed from: c */
    static C0395n m249c(C0397q qVar, final Consumer<AbstractC0307a> consumer) {
        if (consumer == null) {
            return new C0395n(qVar, C0370b.f903a);
        }
        final b bVar = new b(qVar, (C0396a) null);
        return new C0395n(qVar, new Consumer() { // from class: i.a.d.e.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                C0397q qVar2 = (C0397q) obj;
                consumer.accept(bVar);
            }
        });
    }
}
