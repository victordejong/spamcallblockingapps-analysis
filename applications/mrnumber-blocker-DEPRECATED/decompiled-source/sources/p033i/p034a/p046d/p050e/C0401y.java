package p033i.p034a.p046d.p050e;

import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Function;
import p033i.p034a.p035a.p036f.AbstractC0302r;
import p033i.p034a.p046d.p050e.AbstractC0390h;
import p033i.p034a.p046d.p050e.p051a0.AbstractC0368h;
/* renamed from: i.a.d.e.y */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/y.class */
final class C0401y<B extends AbstractC0390h> {

    /* renamed from: a */
    private final ConcurrentHashMap<AbstractC0302r, B> f939a = new ConcurrentHashMap<>();

    /* renamed from: b */
    private final C0397q f940b;

    /* renamed from: c */
    private final Function<AbstractC0368h, B> f941c;

    C0401y(C0397q qVar, Function<AbstractC0368h, B> function) {
        this.f941c = function;
        new ReentrantLock();
        this.f940b = qVar;
    }

    /* renamed from: a */
    public B m235a(AbstractC0302r rVar) {
        Objects.requireNonNull(rVar, "labels");
        B b = this.f939a.get(rVar);
        if (b != null && b.m263a()) {
            return b;
        }
        B apply = this.f941c.apply(this.f940b.m247b());
        while (true) {
            B putIfAbsent = this.f939a.putIfAbsent(rVar, apply);
            if (putIfAbsent == null) {
                return apply;
            }
            if (putIfAbsent.m263a()) {
                return putIfAbsent;
            }
            this.f939a.remove(rVar, putIfAbsent);
        }
    }
}
