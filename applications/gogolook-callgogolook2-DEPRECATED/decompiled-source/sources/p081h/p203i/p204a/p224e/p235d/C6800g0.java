package p081h.p203i.p204a.p224e.p235d;

import java.util.concurrent.Callable;
/* renamed from: h.i.a.e.d.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/g0.class */
public final class C6800g0 extends C6796e0 {

    /* renamed from: e */
    public final Callable<String> f16696e;

    public C6800g0(Callable<String> callable) {
        super(false, null, null);
        this.f16696e = callable;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.C6796e0
    /* renamed from: a */
    public final String mo21875a() {
        try {
            return this.f16696e.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
