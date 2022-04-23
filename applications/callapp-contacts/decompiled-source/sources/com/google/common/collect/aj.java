package com.google.common.collect;

import com.google.common.base.m;
import com.google.common.base.q;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/aj.class */
public final class aj {

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/aj$a.class */
    static final class a<K, V> extends c<K, V> {

        /* renamed from: a  reason: collision with root package name */
        transient q<? extends List<V>> f32005a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Map<K, Collection<V>> map, q<? extends List<V>> qVar) {
            super(map);
            this.f32005a = (q) m.a(qVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f32005a = (q) objectInputStream.readObject();
            a((Map) ((Map) objectInputStream.readObject()));
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f32005a);
            objectOutputStream.writeObject(d());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.c
        /* renamed from: a */
        public final List<V> c() {
            return (List) this.f32005a.get();
        }

        @Override // com.google.common.collect.d, com.google.common.collect.f
        final Set<K> g() {
            return h();
        }

        @Override // com.google.common.collect.d, com.google.common.collect.f
        final Map<K, Collection<V>> o() {
            return p();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/aj$b.class */
    static abstract class b<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        abstract ah<K, V> a();

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a().f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().b(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().c(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a().e();
        }
    }

    private aj() {
    }
}
