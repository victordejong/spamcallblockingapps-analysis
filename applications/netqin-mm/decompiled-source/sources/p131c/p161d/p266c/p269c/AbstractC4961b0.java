package p131c.p161d.p266c.p269c;

import com.google.common.collect.Sets;
import java.util.Collection;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.b0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/b0.class */
public abstract class AbstractC4961b0<E> extends AbstractC5022s<E> implements Set<E> {
    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Collection delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract Set<E> delegate();

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return delegate().hashCode();
    }

    public boolean standardEquals(Object obj) {
        return Sets.m8060a(this, obj);
    }

    public int standardHashCode() {
        return Sets.m8061a(this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s
    public boolean standardRemoveAll(Collection<?> collection) {
        C4933n.m24795a(collection);
        return Sets.m8059a((Set<?>) this, collection);
    }
}
