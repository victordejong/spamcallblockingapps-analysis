package com.google.common.collect;

import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
import p131c.p161d.p266c.p269c.AbstractC4960b;
import p131c.p161d.p266c.p269c.AbstractC4991i;
import p131c.p161d.p266c.p269c.AbstractC5032w;
import p131c.p161d.p266c.p269c.C5008o;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable.class */
public class StandardTable<R, C, V> extends AbstractC4991i<R, C, V> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Map<R, Map<C, V>> backingMap;
    public transient Set<C> columnKeySet;
    public transient StandardTable<R, C, V>.C7636f columnMap;
    public final AbstractC4941s<? extends Map<C, V>> factory;
    public transient Map<R, Map<C, V>> rowMap;

    /* renamed from: com.google.common.collect.StandardTable$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$b.class */
    public class C7627b implements Iterator<AbstractC4958a1.AbstractC4959a<R, C, V>> {

        /* renamed from: a */
        public final Iterator<Map.Entry<R, Map<C, V>>> f30735a;

        /* renamed from: b */
        public Map.Entry<R, Map<C, V>> f30736b;

        /* renamed from: c */
        public Iterator<Map.Entry<C, V>> f30737c;

        public C7627b() {
            this.f30735a = StandardTable.this.backingMap.entrySet().iterator();
            this.f30737c = Iterators.m8255c();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30735a.hasNext() || this.f30737c.hasNext();
        }

        @Override // java.util.Iterator
        public AbstractC4958a1.AbstractC4959a<R, C, V> next() {
            if (!this.f30737c.hasNext()) {
                Map.Entry<R, Map<C, V>> next = this.f30735a.next();
                this.f30736b = next;
                this.f30737c = next.getValue().entrySet().iterator();
            }
            Map.Entry<C, V> next2 = this.f30737c.next();
            return Tables.m8022a(this.f30736b.getKey(), next2.getKey(), next2.getValue());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f30737c.remove();
            if (this.f30736b.getValue().isEmpty()) {
                this.f30735a.remove();
                this.f30736b = null;
            }
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$c.class */
    public class C7628c extends Maps.AbstractC7584u<R, V> {

        /* renamed from: d */
        public final C f30739d;

        /* renamed from: com.google.common.collect.StandardTable$c$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$c$a.class */
        public class C7629a extends Sets.AbstractC7614a<Map.Entry<R, V>> {
            public C7629a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                C7628c.this.m8052a(Predicates.m8572a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.containsMapping(entry.getKey(), C7628c.this.f30739d, entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                C7628c cVar = C7628c.this;
                return !StandardTable.this.containsColumn(cVar.f30739d);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, V>> iterator() {
                return new C7630b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return StandardTable.this.removeMapping(entry.getKey(), C7628c.this.f30739d, entry.getValue());
            }

            @Override // com.google.common.collect.Sets.AbstractC7614a, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return C7628c.this.m8052a(Predicates.m8571a(Predicates.m8567a((Collection) collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                int i = 0;
                for (Map<C, V> map : StandardTable.this.backingMap.values()) {
                    if (map.containsKey(C7628c.this.f30739d)) {
                        i++;
                    }
                }
                return i;
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$c$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$c$b.class */
        public class C7630b extends AbstractIterator<Map.Entry<R, V>> {

            /* renamed from: c */
            public final Iterator<Map.Entry<R, Map<C, V>>> f30742c;

            /* renamed from: com.google.common.collect.StandardTable$c$b$a */
            /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$c$b$a.class */
            public class C7631a extends AbstractC4960b<R, V> {

                /* renamed from: a */
                public final /* synthetic */ Map.Entry f30744a;

                public C7631a(Map.Entry entry) {
                    this.f30744a = entry;
                }

                @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
                public R getKey() {
                    return (R) this.f30744a.getKey();
                }

                @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
                public V getValue() {
                    return (V) ((Map) this.f30744a.getValue()).get(C7628c.this.f30739d);
                }

                @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
                public V setValue(V v) {
                    Map map = (Map) this.f30744a.getValue();
                    C c = C7628c.this.f30739d;
                    C4933n.m24795a(v);
                    return (V) map.put(c, v);
                }
            }

            public C7630b() {
                this.f30742c = StandardTable.this.backingMap.entrySet().iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public Map.Entry<R, V> mo7953a() {
                while (this.f30742c.hasNext()) {
                    Map.Entry<R, Map<C, V>> next = this.f30742c.next();
                    if (next.getValue().containsKey(C7628c.this.f30739d)) {
                        return new C7631a(next);
                    }
                }
                return m8454b();
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$c$c */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$c$c.class */
        public class C7632c extends Maps.C7576m<R, V> {
            public C7632c() {
                super(C7628c.this);
            }

            @Override // com.google.common.collect.Maps.C7576m, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                C7628c cVar = C7628c.this;
                return StandardTable.this.contains(obj, cVar.f30739d);
            }

            @Override // com.google.common.collect.Maps.C7576m, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                C7628c cVar = C7628c.this;
                return StandardTable.this.remove(obj, cVar.f30739d) != null;
            }

            @Override // com.google.common.collect.Sets.AbstractC7614a, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return C7628c.this.m8052a(Maps.m8151a(Predicates.m8571a(Predicates.m8567a((Collection) collection))));
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$c$d */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$c$d.class */
        public class C7633d extends Maps.C7583t<R, V> {
            public C7633d() {
                super(C7628c.this);
            }

            @Override // com.google.common.collect.Maps.C7583t, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                return obj != null && C7628c.this.m8052a(Maps.m8131b(Predicates.m8569a(obj)));
            }

            @Override // com.google.common.collect.Maps.C7583t, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return C7628c.this.m8052a(Maps.m8131b(Predicates.m8567a((Collection) collection)));
            }

            @Override // com.google.common.collect.Maps.C7583t, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return C7628c.this.m8052a(Maps.m8131b(Predicates.m8571a(Predicates.m8567a((Collection) collection))));
            }
        }

        public C7628c(C c) {
            C4933n.m24795a(c);
            this.f30739d = c;
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: a */
        public Set<Map.Entry<R, V>> mo8048a() {
            return new C7629a();
        }

        /* renamed from: a */
        public boolean m8052a(AbstractC4934o<? super Map.Entry<R, V>> oVar) {
            Iterator<Map.Entry<R, Map<C, V>>> it = StandardTable.this.backingMap.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v = value.get(this.f30739d);
                if (v != null && oVar.apply(Maps.m8148a(next.getKey(), v))) {
                    value.remove(this.f30739d);
                    z = true;
                    if (value.isEmpty()) {
                        it.remove();
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: b */
        public Set<R> mo8051b() {
            return new C7632c();
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: c */
        public Collection<V> mo8050c() {
            return new C7633d();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return StandardTable.this.contains(obj, this.f30739d);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            return (V) StandardTable.this.get(obj, this.f30739d);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(R r, V v) {
            return (V) StandardTable.this.put(r, this.f30739d, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            return (V) StandardTable.this.remove(obj, this.f30739d);
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$d.class */
    public class C7634d extends AbstractIterator<C> {

        /* renamed from: c */
        public final Map<C, V> f30748c;

        /* renamed from: d */
        public final Iterator<Map<C, V>> f30749d;

        /* renamed from: e */
        public Iterator<Map.Entry<C, V>> f30750e;

        public C7634d() {
            this.f30748c = (Map) StandardTable.this.factory.get();
            this.f30749d = StandardTable.this.backingMap.values().iterator();
            this.f30750e = Iterators.m8270a();
        }

        @Override // com.google.common.collect.AbstractIterator
        /* renamed from: a */
        public C mo7953a() {
            while (true) {
                if (this.f30750e.hasNext()) {
                    Map.Entry<C, V> next = this.f30750e.next();
                    if (!this.f30748c.containsKey(next.getKey())) {
                        this.f30748c.put(next.getKey(), next.getValue());
                        return next.getKey();
                    }
                } else if (!this.f30749d.hasNext()) {
                    return m8454b();
                } else {
                    this.f30750e = this.f30749d.next().entrySet().iterator();
                }
            }
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$e.class */
    public class C7635e extends StandardTable<R, C, V>.AbstractC7646i<C> {
        public C7635e() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return StandardTable.this.containsColumn(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<C> iterator() {
            return StandardTable.this.createColumnKeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().remove(obj)) {
                    z = true;
                    if (next.isEmpty()) {
                        it.remove();
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Sets.AbstractC7614a, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            C4933n.m24795a(collection);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (Iterators.m8261a((Iterator<?>) next.keySet().iterator(), collection)) {
                    z = true;
                    if (next.isEmpty()) {
                        it.remove();
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Sets.AbstractC7614a, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            C4933n.m24795a(collection);
            Iterator<Map<C, V>> it = StandardTable.this.backingMap.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().retainAll(collection)) {
                    z = true;
                    if (next.isEmpty()) {
                        it.remove();
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Iterators.m8249h(iterator());
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$f.class */
    public class C7636f extends Maps.AbstractC7584u<C, Map<R, V>> {

        /* renamed from: com.google.common.collect.StandardTable$f$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$f$a.class */
        public class C7637a extends StandardTable<R, C, V>.AbstractC7646i<Map.Entry<C, Map<R, V>>> {

            /* renamed from: com.google.common.collect.StandardTable$f$a$a */
            /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$f$a$a.class */
            public class C7638a implements AbstractC4920g<C, Map<R, V>> {
                public C7638a() {
                }

                @Override // p131c.p161d.p266c.p267a.AbstractC4920g
                public Map<R, V> apply(C c) {
                    return StandardTable.this.column(c);
                }
            }

            public C7637a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (!StandardTable.this.containsColumn(entry.getKey())) {
                    return false;
                }
                return C7636f.this.get(entry.getKey()).equals(entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                return Maps.m8136a((Set) StandardTable.this.columnKeySet(), (AbstractC4920g) new C7638a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                StandardTable.this.removeColumn(((Map.Entry) obj).getKey());
                return true;
            }

            @Override // com.google.common.collect.Sets.AbstractC7614a, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                C4933n.m24795a(collection);
                return Sets.m8058a((Set<?>) this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Sets.AbstractC7614a, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                C4933n.m24795a(collection);
                Iterator it = Lists.m8227a(StandardTable.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(Maps.m8148a(next, StandardTable.this.column(next)))) {
                        StandardTable.this.removeColumn(next);
                        z = true;
                    }
                }
                return z;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return StandardTable.this.columnKeySet().size();
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$f$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$f$b.class */
        public class C7639b extends Maps.C7583t<C, Map<R, V>> {
            public C7639b() {
                super(C7636f.this);
            }

            @Override // com.google.common.collect.Maps.C7583t, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                for (Map.Entry<C, Map<R, V>> entry : C7636f.this.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        StandardTable.this.removeColumn(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.C7583t, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                C4933n.m24795a(collection);
                Iterator it = Lists.m8227a(StandardTable.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (collection.contains(StandardTable.this.column(next))) {
                        StandardTable.this.removeColumn(next);
                        z = true;
                    }
                }
                return z;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.C7583t, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                C4933n.m24795a(collection);
                Iterator it = Lists.m8227a(StandardTable.this.columnKeySet().iterator()).iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(StandardTable.this.column(next))) {
                        StandardTable.this.removeColumn(next);
                        z = true;
                    }
                }
                return z;
            }
        }

        public C7636f() {
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: a */
        public Set<Map.Entry<C, Map<R, V>>> mo8048a() {
            return new C7637a();
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: c */
        public Collection<Map<R, V>> mo8050c() {
            return new C7639b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return StandardTable.this.containsColumn(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Map<R, V> get(Object obj) {
            return StandardTable.this.containsColumn(obj) ? StandardTable.this.column(obj) : null;
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u, java.util.AbstractMap, java.util.Map
        public Set<C> keySet() {
            return StandardTable.this.columnKeySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Map<R, V> remove(Object obj) {
            return StandardTable.this.containsColumn(obj) ? StandardTable.this.removeColumn(obj) : null;
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$g.class */
    public class C7640g extends Maps.AbstractC7574l<C, V> {

        /* renamed from: a */
        public final R f30757a;

        /* renamed from: b */
        public Map<C, V> f30758b;

        /* renamed from: com.google.common.collect.StandardTable$g$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$g$a.class */
        public class C7641a implements Iterator<Map.Entry<C, V>> {

            /* renamed from: a */
            public final /* synthetic */ Iterator f30760a;

            public C7641a(Iterator it) {
                this.f30760a = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30760a.hasNext();
            }

            @Override // java.util.Iterator
            public Map.Entry<C, V> next() {
                return C7640g.this.m8049a((Map.Entry) this.f30760a.next());
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f30760a.remove();
                C7640g.this.mo8014d();
            }
        }

        /* renamed from: com.google.common.collect.StandardTable$g$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$g$b.class */
        public class C7642b extends AbstractC5032w<C, V> {

            /* renamed from: a */
            public final /* synthetic */ Map.Entry f30762a;

            public C7642b(C7640g gVar, Map.Entry entry) {
                this.f30762a = entry;
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC5032w, p131c.p161d.p266c.p269c.AbstractC5040z
            public Map.Entry<C, V> delegate() {
                return this.f30762a;
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC5032w, java.util.Map.Entry
            public boolean equals(Object obj) {
                return standardEquals(obj);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC5032w, java.util.Map.Entry
            public V setValue(V v) {
                C4933n.m24795a(v);
                return (V) super.setValue(v);
            }
        }

        public C7640g(R r) {
            C4933n.m24795a(r);
            this.f30757a = r;
        }

        @Override // com.google.common.collect.Maps.AbstractC7574l
        /* renamed from: a */
        public Iterator<Map.Entry<C, V>> mo7961a() {
            Map<C, V> b = mo8016b();
            return b == null ? Iterators.m8255c() : new C7641a(b.entrySet().iterator());
        }

        /* renamed from: a */
        public Map.Entry<C, V> m8049a(Map.Entry<C, V> entry) {
            return new C7642b(this, entry);
        }

        /* renamed from: b */
        public Map<C, V> mo8016b() {
            Map<C, V> map;
            Map<C, V> map2 = this.f30758b;
            if (map2 == null || (map2.isEmpty() && StandardTable.this.backingMap.containsKey(this.f30757a))) {
                map = mo8015c();
                this.f30758b = map;
            } else {
                map = this.f30758b;
            }
            return map;
        }

        /* renamed from: c */
        public Map<C, V> mo8015c() {
            return StandardTable.this.backingMap.get(this.f30757a);
        }

        @Override // com.google.common.collect.Maps.AbstractC7574l, java.util.AbstractMap, java.util.Map
        public void clear() {
            Map<C, V> b = mo8016b();
            if (b != null) {
                b.clear();
            }
            mo8014d();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map<C, V> b = mo8016b();
            return (obj == null || b == null || !Maps.m8119d(b, obj)) ? false : true;
        }

        /* renamed from: d */
        public void mo8014d() {
            if (mo8016b() != null && this.f30758b.isEmpty()) {
                StandardTable.this.backingMap.remove(this.f30757a);
                this.f30758b = null;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Map<C, V> b = mo8016b();
            return (obj == null || b == null) ? null : (V) Maps.m8116e(b, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            C4933n.m24795a(c);
            C4933n.m24795a(v);
            Map<C, V> map = this.f30758b;
            return (map == null || map.isEmpty()) ? (V) StandardTable.this.put(this.f30757a, c, v) : this.f30758b.put(c, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            Map<C, V> b = mo8016b();
            if (b == null) {
                return null;
            }
            V v = (V) Maps.m8115f(b, obj);
            mo8014d();
            return v;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            Map<C, V> b = mo8016b();
            return b == null ? 0 : b.size();
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$h.class */
    public class C7643h extends Maps.AbstractC7584u<R, Map<C, V>> {

        /* renamed from: com.google.common.collect.StandardTable$h$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$h$a.class */
        public class C7644a extends StandardTable<R, C, V>.AbstractC7646i<Map.Entry<R, Map<C, V>>> {

            /* renamed from: com.google.common.collect.StandardTable$h$a$a */
            /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$h$a$a.class */
            public class C7645a implements AbstractC4920g<R, Map<C, V>> {
                public C7645a() {
                }

                @Override // p131c.p161d.p266c.p267a.AbstractC4920g
                public Map<C, V> apply(R r) {
                    return StandardTable.this.row(r);
                }
            }

            public C7644a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                boolean z = false;
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    z = false;
                    if (entry.getKey() != null) {
                        z = false;
                        if (entry.getValue() instanceof Map) {
                            z = false;
                            if (C5008o.m24655a(StandardTable.this.backingMap.entrySet(), entry)) {
                                z = true;
                            }
                        }
                    }
                }
                return z;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return Maps.m8136a((Set) StandardTable.this.backingMap.keySet(), (AbstractC4920g) new C7645a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                boolean z = false;
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    z = false;
                    if (entry.getKey() != null) {
                        z = false;
                        if (entry.getValue() instanceof Map) {
                            z = false;
                            if (StandardTable.this.backingMap.entrySet().remove(entry)) {
                                z = true;
                            }
                        }
                    }
                }
                return z;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return StandardTable.this.backingMap.size();
            }
        }

        public C7643h() {
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: a */
        public Set<Map.Entry<R, Map<C, V>>> mo8048a() {
            return new C7644a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return StandardTable.this.containsRow(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Map<C, V> get(Object obj) {
            return StandardTable.this.containsRow(obj) ? StandardTable.this.row(obj) : null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Map<C, V> remove(Object obj) {
            return obj == null ? null : StandardTable.this.backingMap.remove(obj);
        }
    }

    /* renamed from: com.google.common.collect.StandardTable$i */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/StandardTable$i.class */
    public abstract class AbstractC7646i<T> extends Sets.AbstractC7614a<T> {
        public AbstractC7646i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            StandardTable.this.backingMap.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return StandardTable.this.backingMap.isEmpty();
        }
    }

    public StandardTable(Map<R, Map<C, V>> map, AbstractC4941s<? extends Map<C, V>> sVar) {
        this.backingMap = map;
        this.factory = sVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean containsMapping(Object obj, Object obj2, Object obj3) {
        return obj3 != null && obj3.equals(get(obj, obj2));
    }

    private Map<C, V> getOrCreate(R r) {
        Map<C, V> map = this.backingMap.get(r);
        Map<C, V> map2 = map;
        if (map == null) {
            map2 = (Map) this.factory.get();
            this.backingMap.put(r, map2);
        }
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<R, V> removeColumn(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.backingMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V remove = next.getValue().remove(obj);
            if (remove != null) {
                linkedHashMap.put(next.getKey(), remove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeMapping(Object obj, Object obj2, Object obj3) {
        if (!containsMapping(obj, obj2, obj3)) {
            return false;
        }
        remove(obj, obj2);
        return true;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public Iterator<AbstractC4958a1.AbstractC4959a<R, C, V>> cellIterator() {
        return new C7627b();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public Set<AbstractC4958a1.AbstractC4959a<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public void clear() {
        this.backingMap.clear();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<R, V> column(C c) {
        return new C7628c(c);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public Set<C> columnKeySet() {
        Set<C> set = this.columnKeySet;
        Set<C> set2 = set;
        if (set == null) {
            set2 = new C7635e();
            this.columnKeySet = set2;
        }
        return set2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<C, Map<R, V>> columnMap() {
        StandardTable<R, C, V>.C7636f fVar = this.columnMap;
        StandardTable<R, C, V>.C7636f fVar2 = fVar;
        if (fVar == null) {
            fVar2 = new C7636f();
            this.columnMap = fVar2;
        }
        return fVar2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean contains(Object obj, Object obj2) {
        return (obj == null || obj2 == null || !super.contains(obj, obj2)) ? false : true;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsColumn(Object obj) {
        if (obj == null) {
            return false;
        }
        for (Map<C, V> map : this.backingMap.values()) {
            if (Maps.m8119d(map, obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsRow(Object obj) {
        return obj != null && Maps.m8119d(this.backingMap, obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    public Iterator<C> createColumnKeyIterator() {
        return new C7634d();
    }

    public Map<R, Map<C, V>> createRowMap() {
        return new C7643h();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public V get(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? null : (V) super.get(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public boolean isEmpty() {
        return this.backingMap.isEmpty();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public V put(R r, C c, V v) {
        C4933n.m24795a(r);
        C4933n.m24795a(c);
        C4933n.m24795a(v);
        return getOrCreate(r).put(c, v);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public V remove(Object obj, Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) Maps.m8116e(this.backingMap, obj)) == null) {
            return null;
        }
        V v = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.backingMap.remove(obj);
        }
        return v;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<C, V> row(R r) {
        return new C7640g(r);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.rowMap;
        Map<R, Map<C, V>> map2 = map;
        if (map == null) {
            map2 = createRowMap();
            this.rowMap = map2;
        }
        return map2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4958a1
    public int size() {
        int i = 0;
        for (Map<C, V> map : this.backingMap.values()) {
            i += map.size();
        }
        return i;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public Collection<V> values() {
        return super.values();
    }
}
