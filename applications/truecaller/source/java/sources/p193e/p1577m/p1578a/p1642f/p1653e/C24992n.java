package p193e.p1577m.p1578a.p1642f.p1653e;

import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.e.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/n.class */
public final class C24992n extends C24993o {

    /* renamed from: e */
    public final Callable<String> f69956e;

    public /* synthetic */ C24992n(Callable callable) {
        super(false, null, null);
        this.f69956e = callable;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.C24993o
    /* renamed from: a */
    public final String mo4240a() {
        try {
            return this.f69956e.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
