package p302z1;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import p302z1.AbstractC5023a;
/* renamed from: z1.c */
/* loaded from: classes-dex2jar.jar:z1/c.class */
public final class C5035c<V> extends AbstractC5023a<V> {
    @Override // p302z1.AbstractC5023a
    /* renamed from: j */
    public boolean mo118j(ListenableFuture<? extends V> listenableFuture) {
        return super.mo118j(listenableFuture);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    public boolean m117k(V v) {
        boolean z;
        V v2 = v;
        if (v == null) {
            v2 = AbstractC5023a.f15282g;
        }
        if (AbstractC5023a.f15281f.mo122b(this, null, v2)) {
            AbstractC5023a.m130c(this);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    public boolean m116l(Throwable th) {
        boolean z;
        Objects.requireNonNull(th);
        if (AbstractC5023a.f15281f.mo122b(this, null, new AbstractC5023a.C5027d(th))) {
            AbstractC5023a.m130c(this);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
