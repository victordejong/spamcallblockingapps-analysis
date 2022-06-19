package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��D\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\"\n��\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010&\n\u0002\b\b\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\b'\u0018�� )*\u0004\b��\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0001)B\u0007\b\u0004¢\u0006\u0002\u0010\u0004J\u001f\u0010\u0013\u001a\u00020\u00142\u0010\u0010\u0015\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0016H��¢\u0006\u0002\b\u0017J\u0015\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001d\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0018\u0010 \u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020\rH\u0016J#\u0010#\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00028��H\u0002¢\u0006\u0002\u0010$J\b\u0010%\u001a\u00020\u0014H\u0016J\b\u0010&\u001a\u00020'H\u0016J\u0012\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u001fH\u0002J\u001c\u0010&\u001a\u00020'2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0016H\bR\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\bX\u0088\u000e¢\u0006\u0002\n��R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006*"}, m400d2 = {"Lkotlin/collections/AbstractMap;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "()V", "_keys", "", "_values", "", "keys", "getKeys", "()Ljava/util/Set;", "size", "", "getSize", "()I", "values", "getValues", "()Ljava/util/Collection;", "containsEntry", "", "entry", "", "containsEntry$kotlin_stdlib", "containsKey", SDKConstants.PARAM_KEY, "(Ljava/lang/Object;)Z", "containsValue", "value", "equals", "other", "", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "hashCode", "implFindEntry", "(Ljava/lang/Object;)Ljava/util/Map$Entry;", "isEmpty", "toString", "", "o", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/collections/AbstractMap.class */
public abstract class AbstractMap<K, V> implements Map<K, V>, KMappedMarker {
    public static final Companion Companion = new Companion(null);
    private volatile Set<? extends K> _keys;
    private volatile Collection<? extends V> _values;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010&\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001H��¢\u0006\u0002\b\bJ\u001d\u0010\t\u001a\u00020\n2\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006H��¢\u0006\u0002\b\u000bJ\u001d\u0010\f\u001a\u00020\r2\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006H��¢\u0006\u0002\b\u000e¨\u0006\u000f"}, m400d2 = {"Lkotlin/collections/AbstractMap$Companion;", "", "()V", "entryEquals", "", "e", "", "other", "entryEquals$kotlin_stdlib", "entryHashCode", "", "entryHashCode$kotlin_stdlib", "entryToString", "", "entryToString$kotlin_stdlib", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/collections/AbstractMap$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean entryEquals$kotlin_stdlib(Map.Entry<?, ?> e, Object obj) {
            Intrinsics.checkNotNullParameter(e, "e");
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            boolean z = false;
            if (Intrinsics.areEqual(e.getKey(), entry.getKey())) {
                z = false;
                if (Intrinsics.areEqual(e.getValue(), entry.getValue())) {
                    z = true;
                }
            }
            return z;
        }

        public final int entryHashCode$kotlin_stdlib(Map.Entry<?, ?> e) {
            Intrinsics.checkNotNullParameter(e, "e");
            Object key = e.getKey();
            int i = 0;
            int hashCode = key != null ? key.hashCode() : 0;
            Object value = e.getValue();
            if (value != null) {
                i = value.hashCode();
            }
            return hashCode ^ i;
        }

        public final String entryToString$kotlin_stdlib(Map.Entry<?, ?> e) {
            Intrinsics.checkNotNullParameter(e, "e");
            StringBuilder sb = new StringBuilder();
            sb.append(e.getKey());
            sb.append('=');
            sb.append(e.getValue());
            return sb.toString();
        }
    }

    protected AbstractMap() {
    }

    private final Map.Entry<K, V> implFindEntry(K k) {
        Object obj;
        Iterator<T> it = entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((Map.Entry) next).getKey(), k)) {
                obj = next;
                break;
            }
        }
        return (Map.Entry) obj;
    }

    private final String toString(Object obj) {
        return obj == this ? "(this Map)" : String.valueOf(obj);
    }

    public final String toString(Map.Entry<? extends K, ? extends V> entry) {
        return toString(entry.getKey()) + SimpleComparison.EQUAL_TO_OPERATION + toString(entry.getValue());
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean containsEntry$kotlin_stdlib(Map.Entry<?, ?> entry) {
        if (!(entry instanceof Map.Entry)) {
            return false;
        }
        Object key = entry.getKey();
        Object value = entry.getValue();
        AbstractMap<K, V> abstractMap = this;
        V v = abstractMap.get(key);
        if (!Intrinsics.areEqual(value, v)) {
            return false;
        }
        return v != null || abstractMap.containsKey(key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return implFindEntry(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        boolean z;
        Set<Map.Entry<K, V>> entrySet = entrySet();
        if (!(entrySet instanceof Collection) || !entrySet.isEmpty()) {
            Iterator<T> it = entrySet.iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    if (Intrinsics.areEqual(((Map.Entry) it.next()).getValue(), obj)) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        Set<Map.Entry<K, V>> entrySet = map.entrySet();
        if (!(entrySet instanceof Collection) || !entrySet.isEmpty()) {
            Iterator<T> it = entrySet.iterator();
            while (true) {
                z = true;
                if (it.hasNext()) {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) it.next())) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V get(Object obj) {
        Map.Entry<K, V> implFindEntry = implFindEntry(obj);
        return implFindEntry != null ? implFindEntry.getValue() : null;
    }

    public abstract Set getEntries();

    public Set<K> getKeys() {
        if (this._keys == null) {
            this._keys = new AbstractSet<K>() { // from class: kotlin.collections.AbstractMap$keys$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection
                public boolean contains(Object obj) {
                    return AbstractMap.this.containsKey(obj);
                }

                @Override // kotlin.collections.AbstractCollection
                public int getSize() {
                    return AbstractMap.this.size();
                }

                @Override // kotlin.collections.AbstractSet, kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
                public Iterator<K> iterator() {
                    return new AbstractMap$keys$1$iterator$1(AbstractMap.this.entrySet().iterator());
                }
            };
        }
        Set set = (Set<? extends K>) this._keys;
        Intrinsics.checkNotNull(set);
        return set;
    }

    public int getSize() {
        return entrySet().size();
    }

    public Collection<V> getValues() {
        if (this._values == null) {
            this._values = new AbstractCollection<V>() { // from class: kotlin.collections.AbstractMap$values$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection
                public boolean contains(Object obj) {
                    return AbstractMap.this.containsValue(obj);
                }

                @Override // kotlin.collections.AbstractCollection
                public int getSize() {
                    return AbstractMap.this.size();
                }

                @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
                public Iterator<V> iterator() {
                    return new AbstractMap$values$1$iterator$1(AbstractMap.this.entrySet().iterator());
                }
            };
        }
        Collection collection = (Collection<? extends V>) this._values;
        Intrinsics.checkNotNull(collection);
        return collection;
    }

    @Override // java.util.Map
    public int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public V put(K k, V v) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    public String toString() {
        return CollectionsKt.joinToString$default(entrySet(), ", ", "{", "}", 0, null, new AbstractMap$toString$1(this), 24, null);
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }
}
