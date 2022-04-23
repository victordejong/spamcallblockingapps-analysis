package com.google.common.collect;

import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p269c.AbstractC4995i0;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C4980f0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5009o0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedHashMultimap.class */
public final class LinkedHashMultimap<K, V> extends LinkedHashMultimapGwtSerializationDependencies<K, V> {
    public static final int DEFAULT_KEY_CAPACITY = 16;
    public static final int DEFAULT_VALUE_SET_CAPACITY = 2;
    public static final double VALUE_SET_LOAD_FACTOR = 1.0d;
    public static final long serialVersionUID = 1;
    public transient ValueEntry<K, V> multimapHeaderEntry;
    public transient int valueSetCapacity;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedHashMultimap$ValueEntry.class */
    public static final class ValueEntry<K, V> extends ImmutableEntry<K, V> implements AbstractC7514c<K, V> {
        public ValueEntry<K, V> nextInValueBucket;
        public ValueEntry<K, V> predecessorInMultimap;
        public AbstractC7514c<K, V> predecessorInValueSet;
        public final int smearedValueHash;
        public ValueEntry<K, V> successorInMultimap;
        public AbstractC7514c<K, V> successorInValueSet;

        public ValueEntry(K k, V v, int i, ValueEntry<K, V> valueEntry) {
            super(k, v);
            this.smearedValueHash = i;
            this.nextInValueBucket = valueEntry;
        }

        public ValueEntry<K, V> getPredecessorInMultimap() {
            return this.predecessorInMultimap;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.AbstractC7514c
        public AbstractC7514c<K, V> getPredecessorInValueSet() {
            return this.predecessorInValueSet;
        }

        public ValueEntry<K, V> getSuccessorInMultimap() {
            return this.successorInMultimap;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.AbstractC7514c
        public AbstractC7514c<K, V> getSuccessorInValueSet() {
            return this.successorInValueSet;
        }

        public boolean matchesValue(Object obj, int i) {
            return this.smearedValueHash == i && C4928k.m24808a(getValue(), obj);
        }

        public void setPredecessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.predecessorInMultimap = valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.AbstractC7514c
        public void setPredecessorInValueSet(AbstractC7514c<K, V> cVar) {
            this.predecessorInValueSet = cVar;
        }

        public void setSuccessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.successorInMultimap = valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.AbstractC7514c
        public void setSuccessorInValueSet(AbstractC7514c<K, V> cVar) {
            this.successorInValueSet = cVar;
        }
    }

    /* renamed from: com.google.common.collect.LinkedHashMultimap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedHashMultimap$a.class */
    public class C7511a implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public ValueEntry<K, V> f30601a;

        /* renamed from: b */
        public ValueEntry<K, V> f30602b;

        public C7511a() {
            this.f30601a = LinkedHashMultimap.this.multimapHeaderEntry.successorInMultimap;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30601a != LinkedHashMultimap.this.multimapHeaderEntry;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                ValueEntry<K, V> valueEntry = this.f30601a;
                this.f30602b = valueEntry;
                this.f30601a = valueEntry.successorInMultimap;
                return valueEntry;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30602b != null);
            LinkedHashMultimap.this.remove(this.f30602b.getKey(), this.f30602b.getValue());
            this.f30602b = null;
        }
    }

    /* renamed from: com.google.common.collect.LinkedHashMultimap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedHashMultimap$b.class */
    public final class C7512b extends Sets.AbstractC7614a<V> implements AbstractC7514c<K, V> {

        /* renamed from: a */
        public final K f30604a;

        /* renamed from: b */
        public ValueEntry<K, V>[] f30605b;

        /* renamed from: c */
        public int f30606c = 0;

        /* renamed from: d */
        public int f30607d = 0;

        /* renamed from: e */
        public AbstractC7514c<K, V> f30608e = this;

        /* renamed from: f */
        public AbstractC7514c<K, V> f30609f = this;

        /* renamed from: com.google.common.collect.LinkedHashMultimap$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedHashMultimap$b$a.class */
        public class C7513a implements Iterator<V> {

            /* renamed from: a */
            public AbstractC7514c<K, V> f30611a;

            /* renamed from: b */
            public ValueEntry<K, V> f30612b;

            /* renamed from: c */
            public int f30613c;

            public C7513a() {
                this.f30611a = C7512b.this.f30608e;
                this.f30613c = C7512b.this.f30607d;
            }

            /* renamed from: a */
            public final void m8239a() {
                if (C7512b.this.f30607d != this.f30613c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                m8239a();
                return this.f30611a != C7512b.this;
            }

            @Override // java.util.Iterator
            public V next() {
                if (hasNext()) {
                    ValueEntry<K, V> valueEntry = (ValueEntry) this.f30611a;
                    V value = valueEntry.getValue();
                    this.f30612b = valueEntry;
                    this.f30611a = valueEntry.getSuccessorInValueSet();
                    return value;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                m8239a();
                C5006n.m24660a(this.f30612b != null);
                C7512b.this.remove(this.f30612b.getValue());
                this.f30613c = C7512b.this.f30607d;
                this.f30612b = null;
            }
        }

        public C7512b(K k, int i) {
            this.f30604a = k;
            this.f30605b = new ValueEntry[C4980f0.m24728a(i, 1.0d)];
        }

        /* renamed from: a */
        public final int m8243a() {
            return this.f30605b.length - 1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(V v) {
            int a = C4980f0.m24726a(v);
            int a2 = m8243a() & a;
            ValueEntry<K, V> valueEntry = this.f30605b[a2];
            for (ValueEntry<K, V> valueEntry2 = valueEntry; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(v, a)) {
                    return false;
                }
            }
            ValueEntry<K, V> valueEntry3 = new ValueEntry<>(this.f30604a, v, a, valueEntry);
            LinkedHashMultimap.succeedsInValueSet(this.f30609f, valueEntry3);
            LinkedHashMultimap.succeedsInValueSet(valueEntry3, this);
            LinkedHashMultimap.succeedsInMultimap(LinkedHashMultimap.this.multimapHeaderEntry.getPredecessorInMultimap(), valueEntry3);
            LinkedHashMultimap.succeedsInMultimap(valueEntry3, LinkedHashMultimap.this.multimapHeaderEntry);
            this.f30605b[a2] = valueEntry3;
            this.f30606c++;
            this.f30607d++;
            m8241b();
            return true;
        }

        /* renamed from: b */
        public final void m8241b() {
            if (C4980f0.m24727a(this.f30606c, this.f30605b.length, 1.0d)) {
                int length = this.f30605b.length * 2;
                ValueEntry<K, V>[] valueEntryArr = new ValueEntry[length];
                this.f30605b = valueEntryArr;
                for (AbstractC7514c<K, V> cVar = this.f30608e; cVar != this; cVar = cVar.getSuccessorInValueSet()) {
                    ValueEntry<K, V> valueEntry = (ValueEntry) cVar;
                    int i = valueEntry.smearedValueHash & (length - 1);
                    valueEntry.nextInValueBucket = valueEntryArr[i];
                    valueEntryArr[i] = valueEntry;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.f30605b, (Object) null);
            this.f30606c = 0;
            for (AbstractC7514c<K, V> cVar = this.f30608e; cVar != this; cVar = cVar.getSuccessorInValueSet()) {
                LinkedHashMultimap.deleteFromMultimap((ValueEntry) cVar);
            }
            LinkedHashMultimap.succeedsInValueSet(this, this);
            this.f30607d++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            int a = C4980f0.m24726a(obj);
            for (ValueEntry<K, V> valueEntry = this.f30605b[m8243a() & a]; valueEntry != null; valueEntry = valueEntry.nextInValueBucket) {
                if (valueEntry.matchesValue(obj, a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.AbstractC7514c
        public AbstractC7514c<K, V> getPredecessorInValueSet() {
            return this.f30609f;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.AbstractC7514c
        public AbstractC7514c<K, V> getSuccessorInValueSet() {
            return this.f30608e;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new C7513a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int a = C4980f0.m24726a(obj);
            int a2 = m8243a() & a;
            ValueEntry<K, V> valueEntry = this.f30605b[a2];
            ValueEntry<K, V> valueEntry2 = null;
            while (valueEntry != null) {
                if (valueEntry.matchesValue(obj, a)) {
                    if (valueEntry2 == null) {
                        this.f30605b[a2] = valueEntry.nextInValueBucket;
                    } else {
                        valueEntry2.nextInValueBucket = valueEntry.nextInValueBucket;
                    }
                    LinkedHashMultimap.deleteFromValueSet(valueEntry);
                    LinkedHashMultimap.deleteFromMultimap(valueEntry);
                    this.f30606c--;
                    this.f30607d++;
                    return true;
                }
                valueEntry = valueEntry.nextInValueBucket;
                valueEntry2 = valueEntry;
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.AbstractC7514c
        public void setPredecessorInValueSet(AbstractC7514c<K, V> cVar) {
            this.f30609f = cVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.AbstractC7514c
        public void setSuccessorInValueSet(AbstractC7514c<K, V> cVar) {
            this.f30608e = cVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f30606c;
        }
    }

    /* renamed from: com.google.common.collect.LinkedHashMultimap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedHashMultimap$c.class */
    public interface AbstractC7514c<K, V> {
        AbstractC7514c<K, V> getPredecessorInValueSet();

        AbstractC7514c<K, V> getSuccessorInValueSet();

        void setPredecessorInValueSet(AbstractC7514c<K, V> cVar);

        void setSuccessorInValueSet(AbstractC7514c<K, V> cVar);
    }

    public LinkedHashMultimap(int i, int i2) {
        super(C5009o0.m24645c(i));
        this.valueSetCapacity = 2;
        C5006n.m24663a(i2, "expectedValuesPerKey");
        this.valueSetCapacity = i2;
        ValueEntry<K, V> valueEntry = new ValueEntry<>(null, null, 0, null);
        this.multimapHeaderEntry = valueEntry;
        succeedsInMultimap(valueEntry, valueEntry);
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i, int i2) {
        return new LinkedHashMultimap<>(Maps.m8153a(i), Maps.m8153a(i2));
    }

    public static <K, V> LinkedHashMultimap<K, V> create(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        LinkedHashMultimap<K, V> create = create(i0Var.keySet().size(), 2);
        create.putAll(i0Var);
        return create;
    }

    public static <K, V> void deleteFromMultimap(ValueEntry<K, V> valueEntry) {
        succeedsInMultimap(valueEntry.getPredecessorInMultimap(), valueEntry.getSuccessorInMultimap());
    }

    public static <K, V> void deleteFromValueSet(AbstractC7514c<K, V> cVar) {
        succeedsInValueSet(cVar.getPredecessorInValueSet(), cVar.getSuccessorInValueSet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        ValueEntry<K, V> valueEntry = new ValueEntry<>(null, null, 0, null);
        this.multimapHeaderEntry = valueEntry;
        succeedsInMultimap(valueEntry, valueEntry);
        this.valueSetCapacity = 2;
        int readInt = objectInputStream.readInt();
        Map c = C5009o0.m24645c(12);
        for (int i = 0; i < readInt; i++) {
            Object readObject = objectInputStream.readObject();
            c.put(readObject, createCollection(readObject));
        }
        int readInt2 = objectInputStream.readInt();
        for (int i2 = 0; i2 < readInt2; i2++) {
            Object readObject2 = objectInputStream.readObject();
            ((Collection) c.get(readObject2)).add(objectInputStream.readObject());
        }
        setMap(c);
    }

    public static <K, V> void succeedsInMultimap(ValueEntry<K, V> valueEntry, ValueEntry<K, V> valueEntry2) {
        valueEntry.setSuccessorInMultimap(valueEntry2);
        valueEntry2.setPredecessorInMultimap(valueEntry);
    }

    public static <K, V> void succeedsInValueSet(AbstractC7514c<K, V> cVar, AbstractC7514c<K, V> cVar2) {
        cVar.setSuccessorInValueSet(cVar2);
        cVar2.setPredecessorInValueSet(cVar);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        for (K k : keySet()) {
            objectOutputStream.writeObject(k);
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.AbstractSetMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public void clear() {
        super.clear();
        ValueEntry<K, V> valueEntry = this.multimapHeaderEntry;
        succeedsInMultimap(valueEntry, valueEntry);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public Collection<V> createCollection(K k) {
        return new C7512b(k, this.valueSetCapacity);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    public Set<V> createCollection() {
        return C5009o0.m24644d(this.valueSetCapacity);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new C7511a();
    }

    @Override // com.google.common.collect.AbstractSetMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Set get(Object obj) {
        return super.get((LinkedHashMultimap<K, V>) obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public Set<K> keySet() {
        return super.keySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ AbstractC4997j0 keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean putAll(AbstractC4995i0 i0Var) {
        return super.putAll(i0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Set removeAll(Object obj) {
        return super.removeAll(obj);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return super.replaceValues((LinkedHashMultimap<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
    public Iterator<V> valueIterator() {
        return Maps.m8124c(entryIterator());
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public Collection<V> values() {
        return super.values();
    }
}
