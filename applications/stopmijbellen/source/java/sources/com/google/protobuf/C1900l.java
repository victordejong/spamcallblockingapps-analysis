package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.protobuf.l */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/l.class */
public class C1900l extends C1904m {

    /* renamed from: com.google.protobuf.l$b */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/l$b.class */
    public static class C1902b<K> implements Map.Entry<K, Object> {

        /* renamed from: a */
        public Map.Entry<K, C1900l> f7094a;

        public C1902b(Map.Entry entry, C1901a c1901a) {
            this.f7094a = entry;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f7094a.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            C1900l value = this.f7094a.getValue();
            if (value == null) {
                return null;
            }
            return value.m4263c();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof AbstractC1916u) {
                C1900l value = this.f7094a.getValue();
                AbstractC1916u abstractC1916u = value.f7096a;
                value.f7097b = null;
                value.f7096a = (AbstractC1916u) obj;
                return abstractC1916u;
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
    }

    /* renamed from: com.google.protobuf.l$c */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/l$c.class */
    public static class C1903c<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a */
        public Iterator<Map.Entry<K, Object>> f7095a;

        public C1903c(Iterator<Map.Entry<K, Object>> it2) {
            this.f7095a = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f7095a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            Map.Entry<K, Object> next = this.f7095a.next();
            C1902b c1902b = next;
            if (next.getValue() instanceof C1900l) {
                c1902b = new C1902b(next, null);
            }
            return c1902b;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f7095a.remove();
        }
    }

    /* renamed from: c */
    public AbstractC1916u m4263c() {
        return m4262a(null);
    }

    @Override // com.google.protobuf.C1904m
    public boolean equals(Object obj) {
        return m4263c().equals(obj);
    }

    @Override // com.google.protobuf.C1904m
    public int hashCode() {
        return m4263c().hashCode();
    }

    public String toString() {
        return m4263c().toString();
    }
}
