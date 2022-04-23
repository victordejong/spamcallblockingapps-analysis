package p626l.p632u;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
/* renamed from: l.u.c */
/* loaded from: classes3-dex2jar.jar:l/u/c.class */
public abstract class AbstractC14996c<T> implements Iterator<T>, AbstractC15141a {

    /* renamed from: a */
    public EnumC15018j0 f33026a = EnumC15018j0.NotReady;

    /* renamed from: b */
    public T f33027b;

    /* renamed from: a */
    public abstract void mo437a();

    /* renamed from: a */
    public final void m643a(T t) {
        this.f33027b = t;
        this.f33026a = EnumC15018j0.Ready;
    }

    /* renamed from: b */
    public final void m642b() {
        this.f33026a = EnumC15018j0.Done;
    }

    /* renamed from: c */
    public final boolean m641c() {
        this.f33026a = EnumC15018j0.Failed;
        mo437a();
        return this.f33026a == EnumC15018j0.Ready;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z = false;
        if (this.f33026a != EnumC15018j0.Failed) {
            int i = C14994b.f33025a[this.f33026a.ordinal()];
            if (i != 1) {
                z = i != 2 ? m641c() : true;
            }
            return z;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            this.f33026a = EnumC15018j0.NotReady;
            return this.f33027b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
