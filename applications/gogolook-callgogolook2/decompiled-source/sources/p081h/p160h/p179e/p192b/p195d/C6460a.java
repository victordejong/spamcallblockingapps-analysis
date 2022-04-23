package p081h.p160h.p179e.p192b.p195d;

import android.util.ArrayMap;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.p644e0.AbstractC15143c;
/* renamed from: h.h.e.b.d.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/d/a.class */
public final class C6460a<K, V> implements Map<K, WeakReference<V>>, AbstractC15143c {

    /* renamed from: a */
    public final ArrayMap<K, WeakReference<V>> f16099a;

    public C6460a(ArrayMap<K, WeakReference<V>> arrayMap) {
        C15149k.m377b(arrayMap, "cache");
        this.f16099a = arrayMap;
    }

    public /* synthetic */ C6460a(ArrayMap arrayMap, int i, C15145g gVar) {
        this((i & 1) != 0 ? new ArrayMap() : arrayMap);
    }

    /* renamed from: a */
    public final V m22532a(K k) {
        WeakReference<V> weakReference = get((Object) k);
        return weakReference != null ? weakReference.get() : null;
    }

    /* renamed from: a */
    public WeakReference<V> m22530a(K k, WeakReference<V> weakReference) {
        C15149k.m377b(weakReference, C13032a.f29462d);
        return this.f16099a.put(k, weakReference);
    }

    /* renamed from: a */
    public Set<Map.Entry<K, WeakReference<V>>> m22533a() {
        Set<Map.Entry<K, WeakReference<V>>> entrySet = this.f16099a.entrySet();
        C15149k.m383a((Object) entrySet, "<get-entries>(...)");
        return entrySet;
    }

    /* renamed from: a */
    public final void m22531a(K k, V v) {
        this.f16099a.put(k, new WeakReference<>(v));
    }

    /* renamed from: a */
    public boolean m22529a(WeakReference<V> weakReference) {
        C15149k.m377b(weakReference, C13032a.f29462d);
        return this.f16099a.containsValue(weakReference);
    }

    /* renamed from: b */
    public Set<K> m22528b() {
        Set<K> keySet = this.f16099a.keySet();
        C15149k.m383a((Object) keySet, "<get-keys>(...)");
        return keySet;
    }

    /* renamed from: c */
    public int m22527c() {
        return this.f16099a.size();
    }

    @Override // java.util.Map
    public void clear() {
        this.f16099a.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.f16099a.containsKey(obj);
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof WeakReference) {
            return m22529a((WeakReference) ((WeakReference) obj));
        }
        return false;
    }

    /* renamed from: d */
    public Collection<WeakReference<V>> m22526d() {
        Collection<WeakReference<V>> values = this.f16099a.values();
        C15149k.m383a((Object) values, "<get-values>(...)");
        return values;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, WeakReference<V>>> entrySet() {
        return m22533a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final /* bridge */ WeakReference<V> get(Object obj) {
        return get((C6460a<K, V>) obj);
    }

    @Override // java.util.Map
    public WeakReference<V> get(K k) {
        WeakReference<V> weakReference = this.f16099a.get(k);
        ArrayMap<K, WeakReference<V>> arrayMap = null;
        V v = weakReference != null ? weakReference.get() : null;
        arrayMap = this.f16099a;
        if (v == null) {
        }
        if (arrayMap != null) {
            arrayMap.remove(k);
        }
        return this.f16099a.get(k);
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f16099a.isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return m22528b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return m22530a((C6460a<K, V>) obj, (WeakReference) ((WeakReference) obj2));
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends WeakReference<V>> map) {
        C15149k.m377b(map, "from");
        this.f16099a.putAll(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final /* bridge */ WeakReference<V> remove(Object obj) {
        return remove((C6460a<K, V>) obj);
    }

    @Override // java.util.Map
    public WeakReference<V> remove(K k) {
        return this.f16099a.remove(k);
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return m22527c();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<WeakReference<V>> values() {
        return m22526d();
    }
}
