package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Optional.class */
public abstract class Optional<T> implements Serializable {
    public static final long serialVersionUID = 0;

    /* renamed from: com.google.common.base.Optional$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Optional$a.class */
    public static final class C7323a implements Iterable<T> {

        /* renamed from: a */
        public final /* synthetic */ Iterable f30278a;

        /* renamed from: com.google.common.base.Optional$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/base/Optional$a$a.class */
        public class C7324a extends AbstractIterator<T> {

            /* renamed from: c */
            public final Iterator<? extends Optional<? extends T>> f30279c;

            public C7324a() {
                Iterator it = C7323a.this.f30278a.iterator();
                C4933n.m24795a(it);
                this.f30279c = (Iterator<T>) it;
            }

            @Override // com.google.common.base.AbstractIterator
            /* renamed from: a */
            public T mo8573a() {
                while (this.f30279c.hasNext()) {
                    Optional optional = (Optional) this.f30279c.next();
                    if (optional.isPresent()) {
                        return (T) optional.get();
                    }
                }
                return m8578b();
            }
        }

        public C7323a(Iterable iterable) {
            this.f30278a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new C7324a();
        }
    }

    public static <T> Optional<T> absent() {
        return Absent.withType();
    }

    public static <T> Optional<T> fromNullable(T t) {
        return t == null ? absent() : new Present<>(t);
    }

    /* renamed from: of */
    public static <T> Optional<T> m8574of(T t) {
        C4933n.m24795a(t);
        return new Present(t);
    }

    public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> iterable) {
        C4933n.m24795a(iterable);
        return new C7323a(iterable);
    }

    public abstract Set<T> asSet();

    public abstract boolean equals(Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    /* renamed from: or */
    public abstract Optional<T> mo8563or(Optional<? extends T> optional);

    /* renamed from: or */
    public abstract T mo8564or(AbstractC4941s<? extends T> sVar);

    /* renamed from: or */
    public abstract T mo8562or(T t);

    public abstract T orNull();

    public abstract String toString();

    public abstract <V> Optional<V> transform(AbstractC4920g<? super T, V> gVar);
}
