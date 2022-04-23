package p626l.p632u;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
/* renamed from: l.u.x */
/* loaded from: classes3-dex2jar.jar:l/u/x.class */
public final class C15033x implements Map, Serializable, AbstractC15141a {

    /* renamed from: a */
    public static final C15033x f33067a = new C15033x();

    private final Object readResolve() {
        return f33067a;
    }

    /* renamed from: a */
    public Set<Map.Entry> m507a() {
        return C15034y.f33068a;
    }

    /* renamed from: a */
    public boolean m506a(Void r4) {
        C15149k.m377b(r4, C13032a.f29462d);
        return false;
    }

    /* renamed from: b */
    public Set<Object> m505b() {
        return C15034y.f33068a;
    }

    /* renamed from: c */
    public int m504c() {
        return 0;
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof Void) {
            return m506a((Void) obj);
        }
        return false;
    }

    /* renamed from: d */
    public Collection m503d() {
        return C15032w.f33066a;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry> entrySet() {
        return m507a();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return (obj instanceof Map) && ((Map) obj).isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Object get(Object obj) {
        return get(obj);
    }

    @Override // java.util.Map
    public Void get(Object obj) {
        return null;
    }

    @Override // java.util.Map
    public int hashCode() {
        return 0;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Object> keySet() {
        return m505b();
    }

    @Override // java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return m504c();
    }

    public String toString() {
        return "{}";
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        return m503d();
    }
}
