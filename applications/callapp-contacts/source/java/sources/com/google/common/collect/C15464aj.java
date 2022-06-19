package com.google.common.collect;

import com.google.common.base.AbstractC15399q;
import com.google.common.base.C15391m;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.common.collect.aj */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/aj.class */
public final class C15464aj {

    /* renamed from: com.google.common.collect.aj$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/aj$a.class */
    static final class C15465a<K, V> extends AbstractC15498c<K, V> {

        /* renamed from: a */
        transient AbstractC15399q<? extends List<V>> f55730a;

        public C15465a(Map<K, Collection<V>> map, AbstractC15399q<? extends List<V>> abstractC15399q) {
            super(map);
            this.f55730a = (AbstractC15399q) C15391m.m8946a(abstractC15399q);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f55730a = (AbstractC15399q) objectInputStream.readObject();
            m8807a((Map) ((Map) objectInputStream.readObject()));
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f55730a);
            objectOutputStream.writeObject(m8801d());
        }

        @Override // com.google.common.collect.AbstractC15498c
        /* renamed from: a */
        public final List<V> mo8803c() {
            return this.f55730a.get();
        }

        @Override // com.google.common.collect.AbstractC15499d, com.google.common.collect.AbstractC15518f
        /* renamed from: g */
        final Set<K> mo8679g() {
            return m8800h();
        }

        @Override // com.google.common.collect.AbstractC15499d, com.google.common.collect.AbstractC15518f
        /* renamed from: o */
        final Map<K, Collection<V>> mo8672o() {
            return m8799p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.aj$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/aj$b.class */
    public static abstract class AbstractC15466b<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        /* renamed from: a */
        abstract AbstractC15456ah<K, V> mo8782a();

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            mo8782a().mo8680f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return mo8782a().mo8686b(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return mo8782a().mo8684c(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return mo8782a().mo8681e();
        }
    }

    private C15464aj() {
    }
}
