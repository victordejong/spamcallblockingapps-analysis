package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0006\b\u0002\u0018��*\u0004\b��\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u00020\u0003B>\u0012\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010$\u0012!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00028\u00010\u0018¢\u0006\u0004\b/\u00100J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028��H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\t\u0010\u0007J\u001a\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\f\u0010\u0007J\u001a\u0010\r\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0004\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00028��H\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R1\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00028\u00010\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR(\u0010!\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001e0\u001d8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00028��0\u001d8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010 R(\u0010%\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010$8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0016\u0010*\u001a\u00020\u00108V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010\u0012R\u001c\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00010+8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u00061"}, d2 = {"Lkotlin/collections/MapWithDefaultImpl;", "K", "V", "Lkotlin/collections/MapWithDefault;", "key", "", "containsKey", "(Ljava/lang/Object;)Z", FirebaseAnalytics.Param.VALUE, "containsValue", "", "other", "equals", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrImplicitDefault", "", "hashCode", "()I", "isEmpty", "()Z", "", "toString", "()Ljava/lang/String;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "default", "Lkotlin/Function1;", "", "", "getEntries", "()Ljava/util/Set;", "entries", "getKeys", "keys", "", "map", "Ljava/util/Map;", "getMap", "()Ljava/util/Map;", "getSize", "size", "", "getValues", "()Ljava/util/Collection;", "values", "<init>", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/MapWithDefaultImpl.class */
final class MapWithDefaultImpl<K, V> implements MapWithDefault<K, V> {
    @NotNull

    /* renamed from: f */
    private final Map<K, V> f20528f;

    /* renamed from: g */
    private final Function1<K, V> f20529g;

    /* JADX WARN: Multi-variable type inference failed */
    public MapWithDefaultImpl(@NotNull Map<K, ? extends V> map, @NotNull Function1<? super K, ? extends V> function1) {
        Intrinsics.m1830e(map, "map");
        Intrinsics.m1830e(function1, "default");
        this.f20528f = map;
        this.f20529g = function1;
    }

    @NotNull
    /* renamed from: a */
    public Set<Map.Entry<K, V>> m2103a() {
        return getMap().entrySet();
    }

    @NotNull
    /* renamed from: b */
    public Set<K> m2102b() {
        return getMap().keySet();
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return getMap().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return getMap().containsValue(obj);
    }

    @Override // kotlin.collections.MapWithDefault
    /* renamed from: d */
    public V mo2072d(K k) {
        Map<K, V> map = getMap();
        V v = map.get(k);
        V v2 = v;
        if (v == null) {
            v2 = v;
            if (!map.containsKey(k)) {
                v2 = this.f20529g.invoke(k);
            }
        }
        return v2;
    }

    /* renamed from: e */
    public int m2101e() {
        return getMap().size();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return m2103a();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return getMap().equals(obj);
    }

    @NotNull
    /* renamed from: f */
    public Collection<V> m2100f() {
        return getMap().values();
    }

    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        return getMap().get(obj);
    }

    @Override // kotlin.collections.MapWithDefault
    @NotNull
    public Map<K, V> getMap() {
        return this.f20528f;
    }

    @Override // java.util.Map
    public int hashCode() {
        return getMap().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return getMap().isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return m2102b();
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
        return m2101e();
    }

    @NotNull
    public String toString() {
        return getMap().toString();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return m2100f();
    }
}
