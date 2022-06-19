package com.google.common.collect;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.common.base.AbstractC15375e;
import com.google.common.base.C15382i;
import com.google.common.base.C15391m;
import com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g;
import com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.google.common.collect.ae */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae.class */
public final class ConcurrentMapC15409ae<K, V, E extends AbstractC15419g<K, V, E>, S extends AbstractC15424l<K, V, E, S>> extends AbstractMap<K, V> implements Serializable, ConcurrentMap<K, V> {

    /* renamed from: g */
    static final AbstractC15444z<Object, Object, Object> f55665g = new AbstractC15444z<Object, Object, Object>() { // from class: com.google.common.collect.ae.1
        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15444z
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ Object mo8849a() {
            return null;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15444z
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AbstractC15444z<Object, Object, Object> mo8848a(ReferenceQueue<Object> referenceQueue, Object obj) {
            return this;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15444z
        public final void clear() {
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15444z
        public final Object get() {
            return null;
        }
    };

    /* renamed from: a */
    final transient int f55666a;

    /* renamed from: b */
    final transient int f55667b;

    /* renamed from: c */
    final transient AbstractC15424l<K, V, E, S>[] f55668c;

    /* renamed from: d */
    final int f55669d;

    /* renamed from: e */
    final AbstractC15375e<Object> f55670e;

    /* renamed from: f */
    final transient AbstractC15420h<K, V, E, S> f55671f;

    /* renamed from: h */
    transient Set<K> f55672h;

    /* renamed from: i */
    transient Collection<V> f55673i;

    /* renamed from: j */
    transient Set<Map.Entry<K, V>> f55674j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.ae$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$a.class */
    public static abstract class AbstractC15411a<K, V> extends AbstractConcurrentMapC15541p<K, V> implements Serializable {

        /* renamed from: a */
        final EnumC15426n f55675a;

        /* renamed from: b */
        final EnumC15426n f55676b;

        /* renamed from: c */
        final AbstractC15375e<Object> f55677c;

        /* renamed from: d */
        final AbstractC15375e<Object> f55678d;

        /* renamed from: e */
        final int f55679e;

        /* renamed from: f */
        transient ConcurrentMap<K, V> f55680f;

        AbstractC15411a(EnumC15426n enumC15426n, EnumC15426n enumC15426n2, AbstractC15375e<Object> abstractC15375e, AbstractC15375e<Object> abstractC15375e2, int i, ConcurrentMap<K, V> concurrentMap) {
            this.f55675a = enumC15426n;
            this.f55676b = enumC15426n2;
            this.f55677c = abstractC15375e;
            this.f55678d = abstractC15375e2;
            this.f55679e = i;
            this.f55680f = concurrentMap;
        }

        @Override // com.google.common.collect.AbstractConcurrentMapC15541p
        /* renamed from: a */
        public final ConcurrentMap<K, V> mo8735a() {
            return this.f55680f;
        }

        @Override // com.google.common.collect.AbstractConcurrentMapC15541p, com.google.common.collect.AbstractC15542q
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ Map mo8734b() {
            return this.f55680f;
        }

        @Override // com.google.common.collect.AbstractConcurrentMapC15541p, com.google.common.collect.AbstractC15542q, com.google.common.collect.AbstractC15543r
        /* renamed from: c */
        protected final /* bridge */ /* synthetic */ Object mo8733c() {
            return this.f55680f;
        }
    }

    /* renamed from: com.google.common.collect.ae$aa */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$aa.class */
    static final class C15412aa<K, V, E extends AbstractC15419g<K, V, E>> extends WeakReference<V> implements AbstractC15444z<K, V, E> {

        /* renamed from: a */
        final E f55681a;

        C15412aa(ReferenceQueue<V> referenceQueue, V v, E e) {
            super(v, referenceQueue);
            this.f55681a = e;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15444z
        /* renamed from: a */
        public final E mo8849a() {
            return this.f55681a;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15444z
        /* renamed from: a */
        public final AbstractC15444z<K, V, E> mo8848a(ReferenceQueue<V> referenceQueue, E e) {
            return new C15412aa(referenceQueue, get(), e);
        }
    }

    /* renamed from: com.google.common.collect.ae$ab */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$ab.class */
    public final class C15413ab extends AbstractC15517e<K, V> {

        /* renamed from: a */
        final K f55682a;

        /* renamed from: b */
        V f55683b;

        C15413ab(K k, V v) {
            ConcurrentMapC15409ae.this = r4;
            this.f55682a = k;
            this.f55683b = v;
        }

        @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f55682a.equals(entry.getKey()) && this.f55683b.equals(entry.getValue());
            }
            return false;
        }

        @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
        public final K getKey() {
            return this.f55682a;
        }

        @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
        public final V getValue() {
            return this.f55683b;
        }

        @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
        public final int hashCode() {
            return this.f55682a.hashCode() ^ this.f55683b.hashCode();
        }

        @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = (V) ConcurrentMapC15409ae.this.put(this.f55682a, v);
            this.f55683b = v;
            return v2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.ae$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$b.class */
    public static abstract class AbstractC15414b<K, V, E extends AbstractC15419g<K, V, E>> implements AbstractC15419g<K, V, E> {

        /* renamed from: a */
        final K f55685a;

        /* renamed from: b */
        final int f55686b;

        /* renamed from: c */
        final E f55687c;

        AbstractC15414b(K k, int i, E e) {
            this.f55685a = k;
            this.f55686b = i;
            this.f55687c = e;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: a */
        public final K mo8891a() {
            return this.f55685a;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: b */
        public final int mo8890b() {
            return this.f55686b;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: c */
        public final E mo8889c() {
            return this.f55687c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.ae$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$c.class */
    public static abstract class AbstractC15415c<K, V, E extends AbstractC15419g<K, V, E>> extends WeakReference<K> implements AbstractC15419g<K, V, E> {

        /* renamed from: a */
        final int f55688a;

        /* renamed from: b */
        final E f55689b;

        AbstractC15415c(ReferenceQueue<K> referenceQueue, K k, int i, E e) {
            super(k, referenceQueue);
            this.f55688a = i;
            this.f55689b = e;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: a */
        public final K mo8891a() {
            return (K) get();
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: b */
        public final int mo8890b() {
            return this.f55688a;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: c */
        public final E mo8889c() {
            return this.f55689b;
        }
    }

    /* renamed from: com.google.common.collect.ae$d */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$d.class */
    final class C15416d extends ConcurrentMapC15409ae<K, V, E, S>.AbstractC15418f<Map.Entry<K, V>> {
        C15416d(ConcurrentMapC15409ae concurrentMapC15409ae) {
            super();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            return m8896a();
        }
    }

    /* renamed from: com.google.common.collect.ae$e */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$e.class */
    final class C15417e extends AbstractC15423k<Map.Entry<K, V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15417e() {
            super();
            ConcurrentMapC15409ae.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ConcurrentMapC15409ae.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = ConcurrentMapC15409ae.this.get(key)) != null && ConcurrentMapC15409ae.this.m8897b().m8965a(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return ConcurrentMapC15409ae.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new C15416d(ConcurrentMapC15409ae.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && ConcurrentMapC15409ae.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ConcurrentMapC15409ae.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.ae$f */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$f.class */
    public abstract class AbstractC15418f<T> implements Iterator<T> {

        /* renamed from: a */
        int f55691a;

        /* renamed from: b */
        int f55692b = -1;

        /* renamed from: c */
        AbstractC15424l<K, V, E, S> f55693c;

        /* renamed from: d */
        AtomicReferenceArray<E> f55694d;

        /* renamed from: e */
        E f55695e;

        /* renamed from: f */
        ConcurrentMapC15409ae<K, V, E, S>.C15413ab f55696f;

        /* renamed from: g */
        ConcurrentMapC15409ae<K, V, E, S>.C15413ab f55697g;

        AbstractC15418f() {
            ConcurrentMapC15409ae.this = r5;
            this.f55691a = r5.f55668c.length - 1;
            m8894b();
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        private boolean m8895a(E e) {
            try {
                Object mo8891a = e.mo8891a();
                Object m8900a = ConcurrentMapC15409ae.m8900a((AbstractC15419g) e);
                if (m8900a == null) {
                    this.f55693c.m8870e();
                    return false;
                }
                this.f55696f = new C15413ab(mo8891a, m8900a);
                this.f55693c.m8870e();
                return true;
            } catch (Throwable th) {
                this.f55693c.m8870e();
                throw th;
            }
        }

        /* renamed from: b */
        private void m8894b() {
            this.f55696f = null;
            if (!m8893c() && !m8892d()) {
                while (this.f55691a >= 0) {
                    AbstractC15424l<K, V, E, S>[] abstractC15424lArr = ConcurrentMapC15409ae.this.f55668c;
                    int i = this.f55691a;
                    this.f55691a = i - 1;
                    AbstractC15424l<K, V, E, S> abstractC15424l = abstractC15424lArr[i];
                    this.f55693c = abstractC15424l;
                    if (abstractC15424l.f55701b != 0) {
                        AtomicReferenceArray<E> atomicReferenceArray = this.f55693c.f55704e;
                        this.f55694d = atomicReferenceArray;
                        this.f55692b = atomicReferenceArray.length() - 1;
                        if (m8892d()) {
                            return;
                        }
                    }
                }
            }
        }

        /* renamed from: c */
        private boolean m8893c() {
            E e = this.f55695e;
            if (e != null) {
                while (true) {
                    this.f55695e = (E) e.mo8889c();
                    E e2 = this.f55695e;
                    if (e2 == null) {
                        return false;
                    }
                    if (m8895a(e2)) {
                        return true;
                    }
                    e = this.f55695e;
                }
            } else {
                return false;
            }
        }

        /* renamed from: d */
        private boolean m8892d() {
            while (true) {
                int i = this.f55692b;
                if (i >= 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f55694d;
                    this.f55692b = i - 1;
                    E e = atomicReferenceArray.get(i);
                    this.f55695e = e;
                    if (e != null && (m8895a(e) || m8893c())) {
                        return true;
                    }
                } else {
                    return false;
                }
            }
        }

        /* renamed from: a */
        final ConcurrentMapC15409ae<K, V, E, S>.C15413ab m8896a() {
            ConcurrentMapC15409ae<K, V, E, S>.C15413ab c15413ab = this.f55696f;
            if (c15413ab != null) {
                this.f55697g = c15413ab;
                m8894b();
                return this.f55697g;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f55696f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            C15391m.m8933b(this.f55697g != null, "no calls to next() since the last call to remove()");
            ConcurrentMapC15409ae.this.remove(this.f55697g.getKey());
            this.f55697g = null;
        }
    }

    /* renamed from: com.google.common.collect.ae$g */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$g.class */
    public interface AbstractC15419g<K, V, E extends AbstractC15419g<K, V, E>> {
        /* renamed from: a */
        K mo8891a();

        /* renamed from: b */
        int mo8890b();

        /* renamed from: c */
        E mo8889c();

        /* renamed from: d */
        V mo8863d();
    }

    /* renamed from: com.google.common.collect.ae$h */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$h.class */
    public interface AbstractC15420h<K, V, E extends AbstractC15419g<K, V, E>, S extends AbstractC15424l<K, V, E, S>> {
        /* renamed from: a */
        E mo8861a(S s, E e, E e2);

        /* renamed from: a */
        E mo8859a(S s, K k, int i, E e);

        /* renamed from: a */
        S mo8858a(ConcurrentMapC15409ae<K, V, E, S> concurrentMapC15409ae, int i, int i2);

        /* renamed from: a */
        EnumC15426n mo8862a();

        /* renamed from: a */
        void mo8860a(S s, E e, V v);

        /* renamed from: b */
        EnumC15426n mo8857b();
    }

    /* renamed from: com.google.common.collect.ae$i */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$i.class */
    final class C15421i extends ConcurrentMapC15409ae<K, V, E, S>.AbstractC15418f<K> {
        C15421i(ConcurrentMapC15409ae concurrentMapC15409ae) {
            super();
        }

        @Override // java.util.Iterator
        public final K next() {
            return m8896a().getKey();
        }
    }

    /* renamed from: com.google.common.collect.ae$j */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$j.class */
    final class C15422j extends AbstractC15423k<K> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15422j() {
            super();
            ConcurrentMapC15409ae.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ConcurrentMapC15409ae.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return ConcurrentMapC15409ae.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return ConcurrentMapC15409ae.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new C15421i(ConcurrentMapC15409ae.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return ConcurrentMapC15409ae.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ConcurrentMapC15409ae.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.ae$k */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$k.class */
    public static abstract class AbstractC15423k<E> extends AbstractSet<E> {
        private AbstractC15423k() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return ConcurrentMapC15409ae.m8898a((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) ConcurrentMapC15409ae.m8898a((Collection) this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.ae$l */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$l.class */
    public static abstract class AbstractC15424l<K, V, E extends AbstractC15419g<K, V, E>, S extends AbstractC15424l<K, V, E, S>> extends ReentrantLock {

        /* renamed from: a */
        final ConcurrentMapC15409ae<K, V, E, S> f55700a;

        /* renamed from: b */
        volatile int f55701b;

        /* renamed from: c */
        int f55702c;

        /* renamed from: d */
        int f55703d;

        /* renamed from: e */
        volatile AtomicReferenceArray<E> f55704e;

        /* renamed from: f */
        final int f55705f;

        /* renamed from: g */
        final AtomicInteger f55706g = new AtomicInteger();

        AbstractC15424l(ConcurrentMapC15409ae<K, V, E, S> concurrentMapC15409ae, int i, int i2) {
            this.f55700a = concurrentMapC15409ae;
            this.f55705f = i2;
            AtomicReferenceArray<E> m8888a = m8888a(i);
            int length = (m8888a.length() * 3) / 4;
            this.f55703d = length;
            if (length == i2) {
                this.f55703d = length + 1;
            }
            this.f55704e = m8888a;
        }

        /* renamed from: a */
        private E m8885a(E e, E e2) {
            return this.f55700a.f55671f.mo8861a((AbstractC15420h<K, V, E, S>) mo8855a(), (AbstractC15419g) e, (AbstractC15419g) e2);
        }

        /* renamed from: a */
        private static AtomicReferenceArray<E> m8888a(int i) {
            return new AtomicReferenceArray<>(i);
        }

        /* renamed from: a */
        private void m8884a(E e, V v) {
            this.f55700a.f55671f.mo8860a((AbstractC15420h<K, V, E, S>) mo8855a(), (S) e, (E) v);
        }

        /* renamed from: a */
        static <K, V, E extends AbstractC15419g<K, V, E>> boolean m8887a(E e) {
            return e.mo8863d() == null;
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [com.google.common.collect.ae$g] */
        /* JADX WARN: Type inference failed for: r0v9, types: [com.google.common.collect.ae$g] */
        /* JADX WARN: Type inference failed for: r4v0, types: [com.google.common.collect.ae$l<K, V, E extends com.google.common.collect.ae$g<K, V, E>, S extends com.google.common.collect.ae$l<K, V, E, S>>, com.google.common.collect.ae$l] */
        /* renamed from: a */
        private boolean m8886a(E e, int i) {
            lock();
            try {
                AtomicReferenceArray atomicReferenceArray = (AtomicReferenceArray<E>) this.f55704e;
                int length = i & (atomicReferenceArray.length() - 1);
                ?? r0 = (AbstractC15419g) atomicReferenceArray.get(length);
                for (E e2 = r0; e2 != null; e2 = e2.mo8889c()) {
                    if (e2 == e) {
                        this.f55702c++;
                        AbstractC15419g m8877b = m8877b(r0, e2);
                        int i2 = this.f55701b;
                        atomicReferenceArray.set(length, m8877b);
                        this.f55701b = i2 - 1;
                        unlock();
                        return true;
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        private boolean m8882a(K k, int i, AbstractC15444z<K, V, E> abstractC15444z) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f55704e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC15419g abstractC15419g = e; abstractC15419g != null; abstractC15419g = abstractC15419g.mo8889c()) {
                    Object mo8891a = abstractC15419g.mo8891a();
                    if (abstractC15419g.mo8890b() == i && mo8891a != null && this.f55700a.f55670e.m8965a(k, mo8891a)) {
                        if (((AbstractC15443y) abstractC15419g).mo8850e() != abstractC15444z) {
                            unlock();
                            return false;
                        }
                        this.f55702c++;
                        E m8877b = m8877b(e, abstractC15419g);
                        int i2 = this.f55701b;
                        atomicReferenceArray.set(length, m8877b);
                        this.f55701b = i2 - 1;
                        unlock();
                        return true;
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [com.google.common.collect.ae$g] */
        /* JADX WARN: Type inference failed for: r0v3, types: [com.google.common.collect.ae$g] */
        /* renamed from: b */
        private E m8877b(E e, E e2) {
            int i = this.f55701b;
            E mo8889c = e2.mo8889c();
            while (e != e2) {
                E m8885a = m8885a((AbstractC15419g) e, (AbstractC15419g) mo8889c);
                if (m8885a != null) {
                    mo8889c = m8885a;
                } else {
                    i--;
                }
                e = e.mo8889c();
            }
            this.f55701b = i;
            return mo8889c;
        }

        /* renamed from: d */
        private E m8871d(Object obj, int i) {
            if (this.f55701b != 0) {
                AtomicReferenceArray<E> atomicReferenceArray = this.f55704e;
                E e = atomicReferenceArray.get((atomicReferenceArray.length() - 1) & i);
                while (true) {
                    E e2 = e;
                    if (e2 == null) {
                        return null;
                    }
                    if (e2.mo8890b() == i) {
                        Object mo8891a = e2.mo8891a();
                        if (mo8891a == null) {
                            m8872d();
                        } else if (this.f55700a.f55670e.m8965a(obj, mo8891a)) {
                            return e2;
                        }
                    }
                    e = (E) e2.mo8889c();
                }
            } else {
                return null;
            }
        }

        /* renamed from: f */
        private void m8869f() {
            if (tryLock()) {
                try {
                    mo8853b();
                    this.f55706g.set(0);
                } finally {
                    unlock();
                }
            }
        }

        /* renamed from: a */
        abstract S mo8855a();

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        final V m8883a(Object obj, int i) {
            try {
                E m8871d = m8871d(obj, i);
                if (m8871d == null) {
                    m8870e();
                    return null;
                }
                V v = (V) m8871d.mo8863d();
                if (v == null) {
                    m8872d();
                }
                m8870e();
                return v;
            } catch (Throwable th) {
                m8870e();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        final V m8881a(K k, int i, V v) {
            lock();
            try {
                m8869f();
                AtomicReferenceArray<E> atomicReferenceArray = this.f55704e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC15419g abstractC15419g = e; abstractC15419g != null; abstractC15419g = abstractC15419g.mo8889c()) {
                    Object mo8891a = abstractC15419g.mo8891a();
                    if (abstractC15419g.mo8890b() == i && mo8891a != null && this.f55700a.f55670e.m8965a(k, mo8891a)) {
                        V v2 = (V) abstractC15419g.mo8863d();
                        if (v2 != null) {
                            this.f55702c++;
                            m8884a((AbstractC15424l<K, V, E, S>) abstractC15419g, (AbstractC15419g) v);
                            unlock();
                            return v2;
                        }
                        if (m8887a(abstractC15419g)) {
                            this.f55702c++;
                            E m8877b = m8877b(e, abstractC15419g);
                            int i2 = this.f55701b;
                            atomicReferenceArray.set(length, m8877b);
                            this.f55701b = i2 - 1;
                        }
                        unlock();
                        return null;
                    }
                }
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v101, types: [com.google.common.collect.ae$g] */
        /* JADX WARN: Type inference failed for: r0v109, types: [com.google.common.collect.ae$g] */
        /* JADX WARN: Type inference failed for: r0v23, types: [com.google.common.collect.ae$h, com.google.common.collect.ae$h<K, V, E extends com.google.common.collect.ae$g<K, V, E>, S extends com.google.common.collect.ae$l<K, V, E, S>>] */
        /* JADX WARN: Type inference failed for: r0v84, types: [com.google.common.collect.ae$g] */
        /* JADX WARN: Type inference failed for: r6v0, types: [com.google.common.collect.ae$l<K, V, E extends com.google.common.collect.ae$g<K, V, E>, S extends com.google.common.collect.ae$l<K, V, E, S>>, com.google.common.collect.ae$l] */
        /* renamed from: a */
        final V m8879a(K k, int i, V v, boolean z) {
            lock();
            try {
                m8869f();
                int i2 = this.f55701b + 1;
                int i3 = i2;
                if (i2 > this.f55703d) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f55704e;
                    int length = atomicReferenceArray.length();
                    if (length < 1073741824) {
                        int i4 = this.f55701b;
                        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray<E>) m8888a(length << 1);
                        this.f55703d = (atomicReferenceArray2.length() * 3) / 4;
                        int length2 = atomicReferenceArray2.length() - 1;
                        int i5 = 0;
                        while (i5 < length) {
                            E e = atomicReferenceArray.get(i5);
                            int i6 = i4;
                            if (e != null) {
                                E mo8889c = e.mo8889c();
                                int mo8890b = e.mo8890b() & length2;
                                if (mo8889c == null) {
                                    atomicReferenceArray2.set(mo8890b, e);
                                    i6 = i4;
                                } else {
                                    E e2 = e;
                                    while (mo8889c != null) {
                                        int mo8890b2 = mo8889c.mo8890b() & length2;
                                        int i7 = mo8890b;
                                        if (mo8890b2 != mo8890b) {
                                            e2 = mo8889c;
                                            i7 = mo8890b2;
                                        }
                                        mo8889c = mo8889c.mo8889c();
                                        mo8890b = i7;
                                    }
                                    atomicReferenceArray2.set(mo8890b, e2);
                                    while (true) {
                                        i6 = i4;
                                        if (e != e2) {
                                            int mo8890b3 = e.mo8890b() & length2;
                                            AbstractC15419g m8885a = m8885a(e, (AbstractC15419g) atomicReferenceArray2.get(mo8890b3));
                                            if (m8885a != null) {
                                                atomicReferenceArray2.set(mo8890b3, m8885a);
                                            } else {
                                                i4--;
                                            }
                                            e = e.mo8889c();
                                        }
                                    }
                                }
                            }
                            i5++;
                            i4 = i6;
                        }
                        this.f55704e = atomicReferenceArray2;
                        this.f55701b = i4;
                    }
                    i3 = this.f55701b + 1;
                }
                AtomicReferenceArray atomicReferenceArray3 = (AtomicReferenceArray<E>) this.f55704e;
                int length3 = (atomicReferenceArray3.length() - 1) & i;
                AbstractC15419g abstractC15419g = (AbstractC15419g) atomicReferenceArray3.get(length3);
                for (AbstractC15419g abstractC15419g2 = abstractC15419g; abstractC15419g2 != null; abstractC15419g2 = abstractC15419g2.mo8889c()) {
                    Object mo8891a = abstractC15419g2.mo8891a();
                    if (abstractC15419g2.mo8890b() == i && mo8891a != null && this.f55700a.f55670e.m8965a(k, mo8891a)) {
                        V v2 = (V) abstractC15419g2.mo8863d();
                        if (v2 == null) {
                            this.f55702c++;
                            m8884a(abstractC15419g2, v);
                            this.f55701b = this.f55701b;
                            unlock();
                            return null;
                        } else if (z) {
                            unlock();
                            return v2;
                        } else {
                            this.f55702c++;
                            m8884a(abstractC15419g2, v);
                            unlock();
                            return v2;
                        }
                    }
                }
                this.f55702c++;
                AbstractC15419g mo8859a = this.f55700a.f55671f.mo8859a(mo8855a(), k, i, abstractC15419g);
                m8884a(mo8859a, v);
                atomicReferenceArray3.set(length3, mo8859a);
                this.f55701b = i3;
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* renamed from: a */
        final void m8878a(ReferenceQueue<K> referenceQueue) {
            int i;
            int i2 = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                AbstractC15419g abstractC15419g = (AbstractC15419g) poll;
                ConcurrentMapC15409ae<K, V, E, S> concurrentMapC15409ae = this.f55700a;
                int mo8890b = abstractC15419g.mo8890b();
                concurrentMapC15409ae.m8902a(mo8890b).m8886a((AbstractC15424l<K, V, E, S>) abstractC15419g, mo8890b);
                i = i2 + 1;
                i2 = i;
            } while (i != 16);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        final boolean m8880a(K k, int i, V v, V v2) {
            lock();
            try {
                m8869f();
                AtomicReferenceArray<E> atomicReferenceArray = this.f55704e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC15419g abstractC15419g = e; abstractC15419g != null; abstractC15419g = abstractC15419g.mo8889c()) {
                    Object mo8891a = abstractC15419g.mo8891a();
                    if (abstractC15419g.mo8890b() == i && mo8891a != null && this.f55700a.f55670e.m8965a(k, mo8891a)) {
                        Object mo8863d = abstractC15419g.mo8863d();
                        if (mo8863d != null) {
                            if (!this.f55700a.m8897b().m8965a(v, mo8863d)) {
                                unlock();
                                return false;
                            }
                            this.f55702c++;
                            m8884a((AbstractC15424l<K, V, E, S>) abstractC15419g, (AbstractC15419g) v2);
                            unlock();
                            return true;
                        }
                        if (m8887a(abstractC15419g)) {
                            this.f55702c++;
                            E m8877b = m8877b(e, abstractC15419g);
                            int i2 = this.f55701b;
                            atomicReferenceArray.set(length, m8877b);
                            this.f55701b = i2 - 1;
                        }
                        unlock();
                        return false;
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* renamed from: b */
        void mo8853b() {
        }

        /* renamed from: b */
        final void m8874b(ReferenceQueue<V> referenceQueue) {
            int i;
            int i2 = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                AbstractC15444z<K, V, E> abstractC15444z = (AbstractC15444z) poll;
                ConcurrentMapC15409ae<K, V, E, S> concurrentMapC15409ae = this.f55700a;
                E mo8849a = abstractC15444z.mo8849a();
                int mo8890b = mo8849a.mo8890b();
                concurrentMapC15409ae.m8902a(mo8890b).m8882a((AbstractC15424l<K, V, E, S>) ((K) mo8849a.mo8891a()), mo8890b, (AbstractC15444z<AbstractC15424l<K, V, E, S>, V, E>) abstractC15444z);
                i = i2 + 1;
                i2 = i;
            } while (i != 16);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: b */
        final boolean m8876b(Object obj, int i) {
            try {
                if (this.f55701b == 0) {
                    m8870e();
                    return false;
                }
                E m8871d = m8871d(obj, i);
                boolean z = false;
                if (m8871d != null) {
                    z = false;
                    if (m8871d.mo8863d() != null) {
                        z = true;
                    }
                }
                m8870e();
                return z;
            } catch (Throwable th) {
                m8870e();
                throw th;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x006e, code lost:
            if (r4.f55700a.m8897b().m8965a(r7, r11.mo8863d()) == false) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0072, code lost:
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0080, code lost:
            if (m8887a(r11) != false) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0083, code lost:
            unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0088, code lost:
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0089, code lost:
            r4.f55702c++;
            r0 = m8877b(r0, r11);
            r0 = r4.f55701b;
            r0.set(r0, r0);
            r4.f55701b = r0 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00b1, code lost:
            unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00b6, code lost:
            return r12;
         */
        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final boolean m8875b(java.lang.Object r5, int r6, java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 208
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l.m8875b(java.lang.Object, int, java.lang.Object):boolean");
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        final V m8873c(Object obj, int i) {
            lock();
            try {
                m8869f();
                AtomicReferenceArray<E> atomicReferenceArray = this.f55704e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (AbstractC15419g abstractC15419g = e; abstractC15419g != null; abstractC15419g = abstractC15419g.mo8889c()) {
                    Object mo8891a = abstractC15419g.mo8891a();
                    if (abstractC15419g.mo8890b() == i && mo8891a != null && this.f55700a.f55670e.m8965a(obj, mo8891a)) {
                        V v = (V) abstractC15419g.mo8863d();
                        if (v == null && !m8887a(abstractC15419g)) {
                            unlock();
                            return null;
                        }
                        this.f55702c++;
                        E m8877b = m8877b(e, abstractC15419g);
                        int i2 = this.f55701b;
                        atomicReferenceArray.set(length, m8877b);
                        this.f55701b = i2 - 1;
                        unlock();
                        return v;
                    }
                }
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        /* renamed from: c */
        void mo8851c() {
        }

        /* renamed from: d */
        final void m8872d() {
            if (tryLock()) {
                try {
                    mo8853b();
                } finally {
                    unlock();
                }
            }
        }

        /* renamed from: e */
        final void m8870e() {
            if ((this.f55706g.incrementAndGet() & 63) == 0) {
                m8869f();
            }
        }
    }

    /* renamed from: com.google.common.collect.ae$m */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$m.class */
    static final class C15425m<K, V> extends AbstractC15411a<K, V> {
        C15425m(EnumC15426n enumC15426n, EnumC15426n enumC15426n2, AbstractC15375e<Object> abstractC15375e, AbstractC15375e<Object> abstractC15375e2, int i, ConcurrentMap<K, V> concurrentMap) {
            super(enumC15426n, enumC15426n2, abstractC15375e, abstractC15375e2, i, concurrentMap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            int readInt = objectInputStream.readInt();
            C15408ad c15408ad = new C15408ad();
            C15391m.m8932b(c15408ad.f55660b == -1, "initial capacity was already set to %s", c15408ad.f55660b);
            C15391m.m8943a(readInt >= 0);
            c15408ad.f55660b = readInt;
            C15408ad m8908a = c15408ad.m8908a(this.f55675a);
            EnumC15426n enumC15426n = this.f55676b;
            C15391m.m8931b(m8908a.f55663e == null, "Value strength was already set to %s", m8908a.f55663e);
            m8908a.f55663e = (EnumC15426n) C15391m.m8946a(enumC15426n);
            if (enumC15426n != EnumC15426n.STRONG) {
                m8908a.f55659a = true;
            }
            AbstractC15375e<Object> abstractC15375e = this.f55677c;
            C15391m.m8931b(m8908a.f55664f == null, "key equivalence was already set to %s", m8908a.f55664f);
            m8908a.f55664f = (AbstractC15375e) C15391m.m8946a(abstractC15375e);
            m8908a.f55659a = true;
            int i = this.f55679e;
            C15391m.m8932b(m8908a.f55661c == -1, "concurrency level was already set to %s", m8908a.f55661c);
            boolean z = false;
            if (i > 0) {
                z = true;
            }
            C15391m.m8943a(z);
            m8908a.f55661c = i;
            this.f55680f = m8908a.m8904e();
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject != null) {
                    this.f55680f.put(readObject, objectInputStream.readObject());
                } else {
                    return;
                }
            }
        }

        private Object readResolve() {
            return this.f55680f;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeInt(this.f55680f.size());
            for (Map.Entry<K, V> entry : this.f55680f.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    /* renamed from: com.google.common.collect.ae$n */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$n.class */
    public enum EnumC15426n {
        STRONG { // from class: com.google.common.collect.ae.n.1
            @Override // com.google.common.collect.ConcurrentMapC15409ae.EnumC15426n
            final AbstractC15375e<Object> defaultEquivalence() {
                return AbstractC15375e.C15376a.f55624a;
            }
        },
        WEAK { // from class: com.google.common.collect.ae.n.2
            @Override // com.google.common.collect.ConcurrentMapC15409ae.EnumC15426n
            final AbstractC15375e<Object> defaultEquivalence() {
                return AbstractC15375e.C15377b.f55625a;
            }
        };

        abstract AbstractC15375e<Object> defaultEquivalence();
    }

    /* renamed from: com.google.common.collect.ae$o */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$o.class */
    static final class C15429o<K, V> extends AbstractC15414b<K, V, C15429o<K, V>> implements AbstractC15445af<K, V, C15429o<K, V>> {

        /* renamed from: d */
        volatile V f55707d = null;

        /* renamed from: com.google.common.collect.ae$o$a */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$o$a.class */
        public static final class C15430a<K, V> implements AbstractC15420h<K, V, C15429o<K, V>, C15431p<K, V>> {

            /* renamed from: a */
            private static final C15430a<?, ?> f55708a = new C15430a<>();

            C15430a() {
            }

            /* renamed from: c */
            static <K, V> C15430a<K, V> m8868c() {
                return (C15430a<K, V>) f55708a;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15419g mo8861a(AbstractC15424l abstractC15424l, AbstractC15419g abstractC15419g, AbstractC15419g abstractC15419g2) {
                C15429o c15429o = (C15429o) abstractC15419g;
                C15429o c15429o2 = new C15429o(c15429o.f55685a, c15429o.f55686b, (C15429o) abstractC15419g2);
                c15429o2.f55707d = c15429o.f55707d;
                return c15429o2;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15419g mo8859a(AbstractC15424l abstractC15424l, Object obj, int i, AbstractC15419g abstractC15419g) {
                return new C15429o(obj, i, (C15429o) abstractC15419g);
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15424l mo8858a(ConcurrentMapC15409ae concurrentMapC15409ae, int i, int i2) {
                return new C15431p(concurrentMapC15409ae, i, -1);
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final EnumC15426n mo8862a() {
                return EnumC15426n.STRONG;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ void mo8860a(AbstractC15424l abstractC15424l, AbstractC15419g abstractC15419g, Object obj) {
                ((C15429o) abstractC15419g).f55707d = obj;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: b */
            public final EnumC15426n mo8857b() {
                return EnumC15426n.STRONG;
            }
        }

        C15429o(K k, int i, C15429o<K, V> c15429o) {
            super(k, i, c15429o);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: d */
        public final V mo8863d() {
            return this.f55707d;
        }
    }

    /* renamed from: com.google.common.collect.ae$p */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$p.class */
    static final class C15431p<K, V> extends AbstractC15424l<K, V, C15429o<K, V>, C15431p<K, V>> {
        C15431p(ConcurrentMapC15409ae<K, V, C15429o<K, V>, C15431p<K, V>> concurrentMapC15409ae, int i, int i2) {
            super(concurrentMapC15409ae, i, i2);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: a */
        final /* bridge */ /* synthetic */ AbstractC15424l mo8855a() {
            return this;
        }
    }

    /* renamed from: com.google.common.collect.ae$q */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$q.class */
    static final class C15432q<K, V> extends AbstractC15414b<K, V, C15432q<K, V>> implements AbstractC15443y<K, V, C15432q<K, V>> {

        /* renamed from: d */
        volatile AbstractC15444z<K, V, C15432q<K, V>> f55709d = ConcurrentMapC15409ae.m8903a();

        /* renamed from: com.google.common.collect.ae$q$a */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$q$a.class */
        public static final class C15433a<K, V> implements AbstractC15420h<K, V, C15432q<K, V>, C15434r<K, V>> {

            /* renamed from: a */
            private static final C15433a<?, ?> f55710a = new C15433a<>();

            C15433a() {
            }

            /* renamed from: c */
            static <K, V> C15433a<K, V> m8867c() {
                return (C15433a<K, V>) f55710a;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15419g mo8861a(AbstractC15424l abstractC15424l, AbstractC15419g abstractC15419g, AbstractC15419g abstractC15419g2) {
                C15434r c15434r = (C15434r) abstractC15424l;
                C15432q c15432q = (C15432q) abstractC15419g;
                C15432q c15432q2 = (C15432q) abstractC15419g2;
                if (AbstractC15424l.m8887a(c15432q)) {
                    return null;
                }
                ReferenceQueue<V> referenceQueue = c15434r.f55711h;
                C15432q<K, V> c15432q3 = new C15432q<>(c15432q.f55685a, c15432q.f55686b, c15432q2);
                c15432q3.f55709d = c15432q.f55709d.mo8848a(referenceQueue, c15432q3);
                return c15432q3;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15419g mo8859a(AbstractC15424l abstractC15424l, Object obj, int i, AbstractC15419g abstractC15419g) {
                return new C15432q(obj, i, (C15432q) abstractC15419g);
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15424l mo8858a(ConcurrentMapC15409ae concurrentMapC15409ae, int i, int i2) {
                return new C15434r(concurrentMapC15409ae, i, -1);
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final EnumC15426n mo8862a() {
                return EnumC15426n.STRONG;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ void mo8860a(AbstractC15424l abstractC15424l, AbstractC15419g abstractC15419g, Object obj) {
                C15432q c15432q = (C15432q) abstractC15419g;
                ReferenceQueue referenceQueue = ((C15434r) abstractC15424l).f55711h;
                AbstractC15444z<K, V, C15432q<K, V>> abstractC15444z = c15432q.f55709d;
                c15432q.f55709d = new C15412aa(referenceQueue, obj, c15432q);
                abstractC15444z.clear();
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: b */
            public final EnumC15426n mo8857b() {
                return EnumC15426n.WEAK;
            }
        }

        C15432q(K k, int i, C15432q<K, V> c15432q) {
            super(k, i, c15432q);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: d */
        public final V mo8863d() {
            return this.f55709d.get();
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15443y
        /* renamed from: e */
        public final AbstractC15444z<K, V, C15432q<K, V>> mo8850e() {
            return this.f55709d;
        }
    }

    /* renamed from: com.google.common.collect.ae$r */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$r.class */
    static final class C15434r<K, V> extends AbstractC15424l<K, V, C15432q<K, V>, C15434r<K, V>> {

        /* renamed from: h */
        private final ReferenceQueue<V> f55711h = new ReferenceQueue<>();

        C15434r(ConcurrentMapC15409ae<K, V, C15432q<K, V>, C15434r<K, V>> concurrentMapC15409ae, int i, int i2) {
            super(concurrentMapC15409ae, i, i2);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: a */
        final /* bridge */ /* synthetic */ AbstractC15424l mo8855a() {
            return this;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: b */
        final void mo8853b() {
            m8874b(this.f55711h);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: c */
        final void mo8851c() {
            do {
            } while (this.f55711h.poll() != null);
        }
    }

    /* renamed from: com.google.common.collect.ae$s */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$s.class */
    final class C15435s extends ConcurrentMapC15409ae<K, V, E, S>.AbstractC15418f<V> {
        C15435s(ConcurrentMapC15409ae concurrentMapC15409ae) {
            super();
        }

        @Override // java.util.Iterator
        public final V next() {
            return m8896a().getValue();
        }
    }

    /* renamed from: com.google.common.collect.ae$t */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$t.class */
    final class C15436t extends AbstractCollection<V> {
        C15436t() {
            ConcurrentMapC15409ae.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            ConcurrentMapC15409ae.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return ConcurrentMapC15409ae.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return ConcurrentMapC15409ae.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new C15435s(ConcurrentMapC15409ae.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return ConcurrentMapC15409ae.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final Object[] toArray() {
            return ConcurrentMapC15409ae.m8898a((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) ConcurrentMapC15409ae.m8898a((Collection) this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.ae$u */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$u.class */
    static final class C15437u<K, V> extends AbstractC15415c<K, V, C15437u<K, V>> implements AbstractC15445af<K, V, C15437u<K, V>> {

        /* renamed from: c */
        volatile V f55713c = null;

        /* renamed from: com.google.common.collect.ae$u$a */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$u$a.class */
        public static final class C15438a<K, V> implements AbstractC15420h<K, V, C15437u<K, V>, C15439v<K, V>> {

            /* renamed from: a */
            private static final C15438a<?, ?> f55714a = new C15438a<>();

            C15438a() {
            }

            /* renamed from: c */
            static <K, V> C15438a<K, V> m8865c() {
                return (C15438a<K, V>) f55714a;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15419g mo8861a(AbstractC15424l abstractC15424l, AbstractC15419g abstractC15419g, AbstractC15419g abstractC15419g2) {
                C15439v c15439v = (C15439v) abstractC15424l;
                C15437u c15437u = (C15437u) abstractC15419g;
                C15437u c15437u2 = (C15437u) abstractC15419g2;
                if (c15437u.get() == null) {
                    return null;
                }
                C15437u c15437u3 = new C15437u(c15439v.f55715h, c15437u.get(), c15437u.f55688a, c15437u2);
                c15437u3.f55713c = c15437u.f55713c;
                return c15437u3;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15419g mo8859a(AbstractC15424l abstractC15424l, Object obj, int i, AbstractC15419g abstractC15419g) {
                return new C15437u(((C15439v) abstractC15424l).f55715h, obj, i, (C15437u) abstractC15419g);
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15424l mo8858a(ConcurrentMapC15409ae concurrentMapC15409ae, int i, int i2) {
                return new C15439v(concurrentMapC15409ae, i, -1);
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final EnumC15426n mo8862a() {
                return EnumC15426n.WEAK;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ void mo8860a(AbstractC15424l abstractC15424l, AbstractC15419g abstractC15419g, Object obj) {
                ((C15437u) abstractC15419g).f55713c = obj;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: b */
            public final EnumC15426n mo8857b() {
                return EnumC15426n.STRONG;
            }
        }

        C15437u(ReferenceQueue<K> referenceQueue, K k, int i, C15437u<K, V> c15437u) {
            super(referenceQueue, k, i, c15437u);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: d */
        public final V mo8863d() {
            return this.f55713c;
        }
    }

    /* renamed from: com.google.common.collect.ae$v */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$v.class */
    static final class C15439v<K, V> extends AbstractC15424l<K, V, C15437u<K, V>, C15439v<K, V>> {

        /* renamed from: h */
        private final ReferenceQueue<K> f55715h = new ReferenceQueue<>();

        C15439v(ConcurrentMapC15409ae<K, V, C15437u<K, V>, C15439v<K, V>> concurrentMapC15409ae, int i, int i2) {
            super(concurrentMapC15409ae, i, i2);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: a */
        final /* bridge */ /* synthetic */ AbstractC15424l mo8855a() {
            return this;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: b */
        final void mo8853b() {
            m8878a(this.f55715h);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: c */
        final void mo8851c() {
            do {
            } while (this.f55715h.poll() != null);
        }
    }

    /* renamed from: com.google.common.collect.ae$w */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$w.class */
    static final class C15440w<K, V> extends AbstractC15415c<K, V, C15440w<K, V>> implements AbstractC15443y<K, V, C15440w<K, V>> {

        /* renamed from: c */
        volatile AbstractC15444z<K, V, C15440w<K, V>> f55716c = ConcurrentMapC15409ae.m8903a();

        /* renamed from: com.google.common.collect.ae$w$a */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$w$a.class */
        public static final class C15441a<K, V> implements AbstractC15420h<K, V, C15440w<K, V>, C15442x<K, V>> {

            /* renamed from: a */
            private static final C15441a<?, ?> f55717a = new C15441a<>();

            C15441a() {
            }

            /* renamed from: c */
            static <K, V> C15441a<K, V> m8856c() {
                return (C15441a<K, V>) f55717a;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15419g mo8861a(AbstractC15424l abstractC15424l, AbstractC15419g abstractC15419g, AbstractC15419g abstractC15419g2) {
                C15442x c15442x = (C15442x) abstractC15424l;
                C15440w c15440w = (C15440w) abstractC15419g;
                C15440w c15440w2 = (C15440w) abstractC15419g2;
                if (c15440w.get() != null && !AbstractC15424l.m8887a(c15440w)) {
                    ReferenceQueue referenceQueue = c15442x.f55718h;
                    ReferenceQueue<V> referenceQueue2 = c15442x.f55719i;
                    C15440w<K, V> c15440w3 = new C15440w<>(referenceQueue, c15440w.get(), c15440w.f55688a, c15440w2);
                    c15440w3.f55716c = c15440w.f55716c.mo8848a(referenceQueue2, c15440w3);
                    return c15440w3;
                }
                return null;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15419g mo8859a(AbstractC15424l abstractC15424l, Object obj, int i, AbstractC15419g abstractC15419g) {
                return new C15440w(((C15442x) abstractC15424l).f55718h, obj, i, (C15440w) abstractC15419g);
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ AbstractC15424l mo8858a(ConcurrentMapC15409ae concurrentMapC15409ae, int i, int i2) {
                return new C15442x(concurrentMapC15409ae, i, -1);
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final EnumC15426n mo8862a() {
                return EnumC15426n.WEAK;
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: a */
            public final /* synthetic */ void mo8860a(AbstractC15424l abstractC15424l, AbstractC15419g abstractC15419g, Object obj) {
                C15440w c15440w = (C15440w) abstractC15419g;
                ReferenceQueue referenceQueue = ((C15442x) abstractC15424l).f55719i;
                AbstractC15444z<K, V, C15440w<K, V>> abstractC15444z = c15440w.f55716c;
                c15440w.f55716c = new C15412aa(referenceQueue, obj, c15440w);
                abstractC15444z.clear();
            }

            @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15420h
            /* renamed from: b */
            public final EnumC15426n mo8857b() {
                return EnumC15426n.WEAK;
            }
        }

        C15440w(ReferenceQueue<K> referenceQueue, K k, int i, C15440w<K, V> c15440w) {
            super(referenceQueue, k, i, c15440w);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g
        /* renamed from: d */
        public final V mo8863d() {
            return this.f55716c.get();
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15443y
        /* renamed from: e */
        public final AbstractC15444z<K, V, C15440w<K, V>> mo8850e() {
            return this.f55716c;
        }
    }

    /* renamed from: com.google.common.collect.ae$x */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$x.class */
    static final class C15442x<K, V> extends AbstractC15424l<K, V, C15440w<K, V>, C15442x<K, V>> {

        /* renamed from: h */
        private final ReferenceQueue<K> f55718h = new ReferenceQueue<>();

        /* renamed from: i */
        private final ReferenceQueue<V> f55719i = new ReferenceQueue<>();

        C15442x(ConcurrentMapC15409ae<K, V, C15440w<K, V>, C15442x<K, V>> concurrentMapC15409ae, int i, int i2) {
            super(concurrentMapC15409ae, i, i2);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: a */
        final /* bridge */ /* synthetic */ AbstractC15424l mo8855a() {
            return this;
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: b */
        final void mo8853b() {
            m8878a(this.f55718h);
            m8874b(this.f55719i);
        }

        @Override // com.google.common.collect.ConcurrentMapC15409ae.AbstractC15424l
        /* renamed from: c */
        final void mo8851c() {
            do {
            } while (this.f55718h.poll() != null);
        }
    }

    /* renamed from: com.google.common.collect.ae$y */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$y.class */
    public interface AbstractC15443y<K, V, E extends AbstractC15419g<K, V, E>> extends AbstractC15419g<K, V, E> {
        /* renamed from: e */
        AbstractC15444z<K, V, E> mo8850e();
    }

    /* renamed from: com.google.common.collect.ae$z */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$z.class */
    public interface AbstractC15444z<K, V, E extends AbstractC15419g<K, V, E>> {
        /* renamed from: a */
        E mo8849a();

        /* renamed from: a */
        AbstractC15444z<K, V, E> mo8848a(ReferenceQueue<V> referenceQueue, E e);

        void clear();

        V get();
    }

    private ConcurrentMapC15409ae(C15408ad c15408ad, AbstractC15420h<K, V, E, S> abstractC15420h) {
        int i;
        this.f55669d = Math.min(c15408ad.m8907b(), 65536);
        this.f55670e = (AbstractC15375e) C15382i.m8955a(c15408ad.f55664f, c15408ad.m8906c().defaultEquivalence());
        this.f55671f = abstractC15420h;
        int min = Math.min(c15408ad.m8909a(), 1073741824);
        int i2 = 1;
        int i3 = 0;
        while (i2 < this.f55669d) {
            i3++;
            i2 <<= 1;
        }
        this.f55667b = 32 - i3;
        this.f55666a = i2 - 1;
        this.f55668c = new AbstractC15424l[i2];
        int i4 = min / i2;
        int i5 = 1;
        int i6 = i4;
        if (i2 * i4 < min) {
            i6 = i4 + 1;
            i5 = 1;
        }
        while (true) {
            i = 0;
            i5 = i5 < i6 ? i5 << 1 : i5;
        }
        while (true) {
            AbstractC15424l<K, V, E, S>[] abstractC15424lArr = this.f55668c;
            if (i < abstractC15424lArr.length) {
                abstractC15424lArr[i] = this.f55671f.mo8858a(this, i5, -1);
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private int m8899a(Object obj) {
        int m8966a = this.f55670e.m8966a(obj);
        int i = m8966a + ((m8966a << 15) ^ (-12931));
        int i2 = i ^ (i >>> 10);
        int i3 = i2 + (i2 << 3);
        int i4 = i3 ^ (i3 >>> 6);
        int i5 = i4 + (i4 << 2) + (i4 << 14);
        return i5 ^ (i5 >>> 16);
    }

    /* renamed from: a */
    static <K, V, E extends AbstractC15419g<K, V, E>> AbstractC15444z<K, V, E> m8903a() {
        return (AbstractC15444z<K, V, E>) f55665g;
    }

    /* renamed from: a */
    public static <K, V> ConcurrentMapC15409ae<K, V, ? extends AbstractC15419g<K, V, ?>, ?> m8901a(C15408ad c15408ad) {
        if (c15408ad.m8906c() == EnumC15426n.STRONG && c15408ad.m8905d() == EnumC15426n.STRONG) {
            return new ConcurrentMapC15409ae<>(c15408ad, C15429o.C15430a.m8868c());
        }
        if (c15408ad.m8906c() == EnumC15426n.STRONG && c15408ad.m8905d() == EnumC15426n.WEAK) {
            return new ConcurrentMapC15409ae<>(c15408ad, C15432q.C15433a.m8867c());
        }
        if (c15408ad.m8906c() == EnumC15426n.WEAK && c15408ad.m8905d() == EnumC15426n.STRONG) {
            return new ConcurrentMapC15409ae<>(c15408ad, C15437u.C15438a.m8865c());
        }
        if (c15408ad.m8906c() != EnumC15426n.WEAK || c15408ad.m8905d() != EnumC15426n.WEAK) {
            throw new AssertionError();
        }
        return new ConcurrentMapC15409ae<>(c15408ad, C15440w.C15441a.m8856c());
    }

    /* renamed from: a */
    static V m8900a(E e) {
        if (e.mo8891a() == null) {
            return null;
        }
        return (V) e.mo8863d();
    }

    /* renamed from: a */
    static /* synthetic */ ArrayList m8898a(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        C15403ab.m8915a(arrayList, collection.iterator());
        return arrayList;
    }

    /* renamed from: a */
    final AbstractC15424l<K, V, E, S> m8902a(int i) {
        return this.f55668c[(i >>> this.f55667b) & this.f55666a];
    }

    /* renamed from: b */
    final AbstractC15375e<Object> m8897b() {
        return this.f55671f.mo8857b().defaultEquivalence();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        AbstractC15424l<K, V, E, S>[] abstractC15424lArr = this.f55668c;
        int length = abstractC15424lArr.length;
        for (int i = 0; i < length; i++) {
            AbstractC15424l<K, V, E, S> abstractC15424l = abstractC15424lArr[i];
            if (abstractC15424l.f55701b != 0) {
                abstractC15424l.lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = abstractC15424l.f55704e;
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    abstractC15424l.mo8851c();
                    abstractC15424l.f55706g.set(0);
                    abstractC15424l.f55702c++;
                    abstractC15424l.f55701b = 0;
                } finally {
                    abstractC15424l.unlock();
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int m8899a = m8899a(obj);
        return m8902a(m8899a).m8876b(obj, m8899a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00aa, code lost:
        r16 = r16 + 1;
     */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsValue(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 != 0) goto L6
            r0 = 0
            return r0
        L6:
            r0 = r5
            com.google.common.collect.ae$l<K, V, E extends com.google.common.collect.ae$g<K, V, E>, S extends com.google.common.collect.ae$l<K, V, E, S>>[] r0 = r0.f55668c
            r7 = r0
            r0 = -1
            r8 = r0
            r0 = 0
            r10 = r0
        L12:
            r0 = r10
            r1 = 3
            if (r0 >= r1) goto Ld1
            r0 = 0
            r11 = r0
            r0 = r7
            int r0 = r0.length
            r13 = r0
            r0 = 0
            r14 = r0
        L22:
            r0 = r14
            r1 = r13
            if (r0 >= r1) goto Lc1
            r0 = r7
            r1 = r14
            r0 = r0[r1]
            r15 = r0
            r0 = r15
            int r0 = r0.f55701b
            r16 = r0
            r0 = r15
            java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.ae$g<K, V, E>> r0 = r0.f55704e
            r17 = r0
            r0 = 0
            r16 = r0
        L40:
            r0 = r16
            r1 = r17
            int r1 = r1.length()
            if (r0 >= r1) goto Lb0
            r0 = r17
            r1 = r16
            java.lang.Object r0 = r0.get(r1)
            com.google.common.collect.ae$g r0 = (com.google.common.collect.ConcurrentMapC15409ae.AbstractC15419g) r0
            r18 = r0
        L56:
            r0 = r18
            if (r0 == 0) goto Laa
            r0 = r18
            java.lang.Object r0 = r0.mo8891a()
            if (r0 != 0) goto L70
            r0 = r15
            r0.m8872d()
        L6a:
            r0 = 0
            r19 = r0
            goto L8a
        L70:
            r0 = r18
            java.lang.Object r0 = r0.mo8863d()
            r20 = r0
            r0 = r20
            r19 = r0
            r0 = r20
            if (r0 != 0) goto L8a
            r0 = r15
            r0.m8872d()
            goto L6a
        L8a:
            r0 = r19
            if (r0 == 0) goto L9e
            r0 = r5
            com.google.common.base.e r0 = r0.m8897b()
            r1 = r6
            r2 = r19
            boolean r0 = r0.m8965a(r1, r2)
            if (r0 == 0) goto L9e
            r0 = 1
            return r0
        L9e:
            r0 = r18
            com.google.common.collect.ae$g r0 = r0.mo8889c()
            r18 = r0
            goto L56
        Laa:
            int r16 = r16 + 1
            goto L40
        Lb0:
            r0 = r11
            r1 = r15
            int r1 = r1.f55702c
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            int r14 = r14 + 1
            goto L22
        Lc1:
            r0 = r11
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto Ld1
            int r10 = r10 + 1
            r0 = r11
            r8 = r0
            goto L12
        Ld1:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ConcurrentMapC15409ae.containsValue(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f55674j;
        if (set != null) {
            return set;
        }
        C15417e c15417e = new C15417e();
        this.f55674j = c15417e;
        return c15417e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int m8899a = m8899a(obj);
        return m8902a(m8899a).m8883a(obj, m8899a);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        AbstractC15424l<K, V, E, S>[] abstractC15424lArr = this.f55668c;
        char c = 0;
        for (int i = 0; i < abstractC15424lArr.length; i++) {
            if (abstractC15424lArr[i].f55701b != 0) {
                return false;
            }
            c += abstractC15424lArr[i].f55702c;
        }
        if (c != 0) {
            for (int i2 = 0; i2 < abstractC15424lArr.length; i2++) {
                if (abstractC15424lArr[i2].f55701b != 0) {
                    return false;
                }
                c -= abstractC15424lArr[i2].f55702c;
            }
            return c == 0;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.f55672h;
        if (set != null) {
            return set;
        }
        C15422j c15422j = new C15422j();
        this.f55672h = c15422j;
        return c15422j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        C15391m.m8946a(k);
        C15391m.m8946a(v);
        int m8899a = m8899a(k);
        return m8902a(m8899a).m8879a((AbstractC15424l<K, V, E, S>) k, m8899a, (int) v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final V putIfAbsent(K k, V v) {
        C15391m.m8946a(k);
        C15391m.m8946a(v);
        int m8899a = m8899a(k);
        return m8902a(m8899a).m8879a((AbstractC15424l<K, V, E, S>) k, m8899a, (int) v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int m8899a = m8899a(obj);
        return m8902a(m8899a).m8873c(obj, m8899a);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int m8899a = m8899a(obj);
        return m8902a(m8899a).m8875b(obj, m8899a, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final V replace(K k, V v) {
        C15391m.m8946a(k);
        C15391m.m8946a(v);
        int m8899a = m8899a(k);
        return m8902a(m8899a).m8881a((AbstractC15424l<K, V, E, S>) k, m8899a, (int) v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(K k, V v, V v2) {
        C15391m.m8946a(k);
        C15391m.m8946a(v2);
        if (v == null) {
            return false;
        }
        int m8899a = m8899a(k);
        return m8902a(m8899a).m8880a((AbstractC15424l<K, V, E, S>) k, m8899a, v, v2);
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        AbstractC15424l<K, V, E, S>[] abstractC15424lArr;
        char c = 0;
        for (int i = 0; i < this.f55668c.length; i++) {
            c += abstractC15424lArr[i].f55701b;
        }
        if (c > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return c < -2147483648L ? BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW : c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.f55673i;
        if (collection != null) {
            return collection;
        }
        C15436t c15436t = new C15436t();
        this.f55673i = c15436t;
        return c15436t;
    }

    final Object writeReplace() {
        return new C15425m(this.f55671f.mo8862a(), this.f55671f.mo8857b(), this.f55670e, this.f55671f.mo8857b().defaultEquivalence(), this.f55669d, this);
    }
}
