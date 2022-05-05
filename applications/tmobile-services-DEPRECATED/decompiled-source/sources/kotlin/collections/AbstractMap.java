package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\n��\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u000e\b'\u0018�� 2*\u0004\b��\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u00020\u00032\u00020\u0004:\u00012B\t\b\u0004¢\u0006\u0004\b0\u00101J!\u0010\n\u001a\u00020\u00072\u0010\u0010\u0006\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0005H��¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00028��H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u000f\u0010\rJ\u001a\u0010\u0012\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\rJ\u001a\u0010\u0013\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000b\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J%\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00028��H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u001d\u0010 J#\u0010\u001d\u001a\u00020\u001c2\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005H\b¢\u0006\u0004\b\u001d\u0010!R\u001e\u0010#\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001e\u0010&\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010%8\b@\bX\u0088\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00028��0\"8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0016\u0010,\u001a\u00020\u00158V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010\u0017R\u001c\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00010%8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u00063"}, d2 = {"Lkotlin/collections/AbstractMap;", "K", "V", "Ljava/util/Map;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "entry", "", "containsEntry$kotlin_stdlib", "(Ljava/util/Map$Entry;)Z", "containsEntry", "key", "containsKey", "(Ljava/lang/Object;)Z", FirebaseAnalytics.Param.VALUE, "containsValue", "", "other", "equals", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "hashCode", "()I", "implFindEntry", "(Ljava/lang/Object;)Ljava/util/Map$Entry;", "isEmpty", "()Z", "", "toString", "()Ljava/lang/String;", "o", "(Ljava/lang/Object;)Ljava/lang/String;", "(Ljava/util/Map$Entry;)Ljava/lang/String;", "", "_keys", "Ljava/util/Set;", "", "_values", "Ljava/util/Collection;", "getKeys", "()Ljava/util/Set;", "keys", "getSize", "size", "getValues", "()Ljava/util/Collection;", "values", "<init>", "()V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMap.class */
public abstract class AbstractMap<K, V> implements Map<K, V>, KMappedMarker {

    /* renamed from: f */
    private volatile Set<? extends K> f20462f;

    /* renamed from: g */
    private volatile Collection<? extends V> f20463g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010&\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0080\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J)\u0010\b\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H��¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\t2\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001H��¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\r2\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0001H��¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lkotlin/collections/AbstractMap$Companion;", "", "e", "", "other", "", "entryEquals$kotlin_stdlib", "(Ljava/util/Map$Entry;Ljava/lang/Object;)Z", "entryEquals", "", "entryHashCode$kotlin_stdlib", "(Ljava/util/Map$Entry;)I", "entryHashCode", "", "entryToString$kotlin_stdlib", "(Ljava/util/Map$Entry;)Ljava/lang/String;", "entryToString", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMap$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    protected AbstractMap() {
    }

    /* renamed from: i */
    private final Map.Entry<K, V> m2360i(K k) {
        Object obj;
        Iterator<T> it = entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            if (Intrinsics.m1834a(((Map.Entry) next).getKey(), k)) {
                obj = next;
                break;
            }
        }
        return (Map.Entry) obj;
    }

    /* renamed from: j */
    private final String m2359j(Object obj) {
        return obj == this ? "(this Map)" : String.valueOf(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public final String m2358k(Map.Entry<? extends K, ? extends V> entry) {
        return m2359j(entry.getKey()) + "=" + m2359j(entry.getValue());
    }

    /* renamed from: b */
    public final boolean m2365b(@Nullable Map.Entry<?, ?> entry) {
        if (!(entry instanceof Map.Entry)) {
            return false;
        }
        Object key = entry.getKey();
        Object value = entry.getValue();
        V v = get(key);
        if (!Intrinsics.m1834a(value, v)) {
            return false;
        }
        return v != null || containsKey(key);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return m2360i(obj) != null;
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
                    if (Intrinsics.m1834a(((Map.Entry) it.next()).getValue(), obj)) {
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

    /* renamed from: e */
    public abstract Set m2364e();

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return m2364e();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
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
                    if (!m2365b((Map.Entry) it.next())) {
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

    @NotNull
    /* renamed from: f */
    public Set<K> m2363f() {
        if (this.f20462f == null) {
            this.f20462f = new AbstractSet<K>() { // from class: kotlin.collections.AbstractMap$keys$1
                @Override // kotlin.collections.AbstractCollection
                /* renamed from: c */
                public int mo121c() {
                    return AbstractMap.this.size();
                }

                @Override // kotlin.collections.AbstractCollection, java.util.Collection
                public boolean contains(Object obj) {
                    return AbstractMap.this.containsKey(obj);
                }

                @Override // kotlin.collections.AbstractSet, java.util.Collection, java.lang.Iterable, java.util.Set
                @NotNull
                public Iterator<K> iterator() {
                    return new AbstractMap$keys$1$iterator$1(AbstractMap.this.entrySet().iterator());
                }
            };
        }
        Set set = (Set<? extends K>) this.f20462f;
        Intrinsics.m1832c(set);
        return set;
    }

    /* renamed from: g */
    public int m2362g() {
        return entrySet().size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        Map.Entry<K, V> i = m2360i(obj);
        return i != null ? i.getValue() : null;
    }

    @NotNull
    /* renamed from: h */
    public Collection<V> m2361h() {
        if (this.f20463g == null) {
            this.f20463g = new AbstractCollection<V>() { // from class: kotlin.collections.AbstractMap$values$1
                @Override // kotlin.collections.AbstractCollection
                /* renamed from: c */
                public int mo121c() {
                    return AbstractMap.this.size();
                }

                @Override // kotlin.collections.AbstractCollection, java.util.Collection
                public boolean contains(Object obj) {
                    return AbstractMap.this.containsValue(obj);
                }

                @Override // java.util.Collection, java.lang.Iterable
                @NotNull
                public Iterator<V> iterator() {
                    return new AbstractMap$values$1$iterator$1(AbstractMap.this.entrySet().iterator());
                }
            };
        }
        Collection collection = (Collection<? extends V>) this.f20463g;
        Intrinsics.m1832c(collection);
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
        return m2363f();
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
        return m2362g();
    }

    @NotNull
    public String toString() {
        String J;
        J = CollectionsKt___CollectionsKt.m2144J(entrySet(), ", ", "{", "}", 0, null, new AbstractMap$toString$1(this), 24, null);
        return J;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return m2361h();
    }
}
