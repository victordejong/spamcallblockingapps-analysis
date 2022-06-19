package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Iterator;
import java.util.Map;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/k.class */
public final class C19695k extends C19699l {

    /* renamed from: b */
    private final AbstractC19705p f65860b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/k$a.class */
    static final class C19697a<K> implements Map.Entry<K, Object> {

        /* renamed from: a */
        private Map.Entry<K, C19695k> f65861a;

        private C19697a(Map.Entry<K, C19695k> entry) {
            this.f65861a = entry;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f65861a.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            C19695k value = this.f65861a.getValue();
            if (value == null) {
                return null;
            }
            return value.m1671a();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (obj instanceof AbstractC19705p) {
                return this.f65861a.getValue().m1668b((AbstractC19705p) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.k$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/k$b.class */
    static final class C19698b<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a */
        private Iterator<Map.Entry<K, Object>> f65862a;

        public C19698b(Iterator<Map.Entry<K, Object>> it2) {
            this.f65862a = it2;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f65862a.hasNext();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            Map.Entry<K, Object> next = this.f65862a.next();
            return next.getValue() instanceof C19695k ? new C19697a(next) : next;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f65862a.remove();
        }
    }

    /* renamed from: a */
    public final AbstractC19705p m1671a() {
        return m1670a(this.f65860b);
    }

    public final boolean equals(Object obj) {
        return m1671a().equals(obj);
    }

    public final int hashCode() {
        return m1671a().hashCode();
    }

    public final String toString() {
        return m1671a().toString();
    }
}
