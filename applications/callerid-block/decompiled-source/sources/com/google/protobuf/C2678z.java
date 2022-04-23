package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.protobuf.z */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/z.class */
public class C2678z extends C2571a0 {

    /* renamed from: e */
    private final AbstractC2639m0 f11234e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.z$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/z$b.class */
    public static class C2680b<K> implements Map.Entry<K, Object> {

        /* renamed from: b */
        private Map.Entry<K, C2678z> f11235b;

        private C2680b(Map.Entry<K, C2678z> entry) {
            this.f11235b = entry;
        }

        /* renamed from: a */
        public C2678z m2222a() {
            return this.f11235b.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f11235b.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            C2678z value = this.f11235b.getValue();
            if (value == null) {
                return null;
            }
            return value.m2223f();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof AbstractC2639m0) {
                return this.f11235b.getValue().m2906d((AbstractC2639m0) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.z$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/z$c.class */
    public static class C2681c<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: b */
        private Iterator<Map.Entry<K, Object>> f11236b;

        public C2681c(Iterator<Map.Entry<K, Object>> it) {
            this.f11236b = it;
        }

        /* renamed from: b */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f11236b.next();
            return next.getValue() instanceof C2678z ? new C2680b(next) : next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f11236b.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f11236b.remove();
        }
    }

    @Override // com.google.protobuf.C2571a0
    public boolean equals(Object obj) {
        return m2223f().equals(obj);
    }

    /* renamed from: f */
    public AbstractC2639m0 m2223f() {
        return m2907c(this.f11234e);
    }

    @Override // com.google.protobuf.C2571a0
    public int hashCode() {
        return m2223f().hashCode();
    }

    public String toString() {
        return m2223f().toString();
    }
}
