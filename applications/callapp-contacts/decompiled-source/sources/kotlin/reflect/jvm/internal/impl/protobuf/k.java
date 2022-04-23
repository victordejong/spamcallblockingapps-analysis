package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/k.class */
public final class k extends l {

    /* renamed from: b  reason: collision with root package name */
    private final p f38156b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/k$a.class */
    static final class a<K> implements Map.Entry<K, Object> {

        /* renamed from: a  reason: collision with root package name */
        private Map.Entry<K, k> f38157a;

        private a(Map.Entry<K, k> entry) {
            this.f38157a = entry;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f38157a.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            k value = this.f38157a.getValue();
            if (value == null) {
                return null;
            }
            return value.a();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (obj instanceof p) {
                return this.f38157a.getValue().b((p) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/k$b.class */
    static final class b<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a  reason: collision with root package name */
        private Iterator<Map.Entry<K, Object>> f38158a;

        public b(Iterator<Map.Entry<K, Object>> it2) {
            this.f38158a = it2;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38158a.hasNext();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            Map.Entry<K, Object> next = this.f38158a.next();
            return next.getValue() instanceof k ? new a(next) : next;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f38158a.remove();
        }
    }

    public final p a() {
        return a(this.f38156b);
    }

    public final boolean equals(Object obj) {
        return a().equals(obj);
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a().toString();
    }
}
