package p131c.p161d.p170b.p224d.p238d;

import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.d.q */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/q.class */
public final class C3325q extends C3324p {

    /* renamed from: e */
    public final Callable<String> f12051e;

    public C3325q(Callable<String> callable) {
        super(false, null, null);
        this.f12051e = callable;
    }

    @Override // p131c.p161d.p170b.p224d.p238d.C3324p
    /* renamed from: a */
    public final String mo27246a() {
        try {
            return this.f12051e.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
