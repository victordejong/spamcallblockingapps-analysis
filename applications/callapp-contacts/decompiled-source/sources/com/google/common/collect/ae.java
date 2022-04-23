package com.google.common.collect;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.common.base.e;
import com.google.common.collect.ae.g;
import com.google.common.collect.ae.l;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae.class */
public final class ae<K, V, E extends g<K, V, E>, S extends l<K, V, E, S>> extends AbstractMap<K, V> implements Serializable, ConcurrentMap<K, V> {
    static final z<Object, Object, Object> g = new z<Object, Object, Object>() { // from class: com.google.common.collect.ae.1
        @Override // com.google.common.collect.ae.z
        public final /* bridge */ /* synthetic */ Object a() {
            return null;
        }

        @Override // com.google.common.collect.ae.z
        public final /* bridge */ /* synthetic */ z<Object, Object, Object> a(ReferenceQueue<Object> referenceQueue, Object obj) {
            return this;
        }

        @Override // com.google.common.collect.ae.z
        public final void clear() {
        }

        @Override // com.google.common.collect.ae.z
        public final Object get() {
            return null;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final transient int f31959a;

    /* renamed from: b  reason: collision with root package name */
    final transient int f31960b;

    /* renamed from: c  reason: collision with root package name */
    final transient l<K, V, E, S>[] f31961c;

    /* renamed from: d  reason: collision with root package name */
    final int f31962d;
    final com.google.common.base.e<Object> e;
    final transient h<K, V, E, S> f;
    transient Set<K> h;
    transient Collection<V> i;
    transient Set<Map.Entry<K, V>> j;

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$a.class */
    static abstract class a<K, V> extends com.google.common.collect.p<K, V> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final n f31963a;

        /* renamed from: b  reason: collision with root package name */
        final n f31964b;

        /* renamed from: c  reason: collision with root package name */
        final com.google.common.base.e<Object> f31965c;

        /* renamed from: d  reason: collision with root package name */
        final com.google.common.base.e<Object> f31966d;
        final int e;
        transient ConcurrentMap<K, V> f;

        a(n nVar, n nVar2, com.google.common.base.e<Object> eVar, com.google.common.base.e<Object> eVar2, int i, ConcurrentMap<K, V> concurrentMap) {
            this.f31963a = nVar;
            this.f31964b = nVar2;
            this.f31965c = eVar;
            this.f31966d = eVar2;
            this.e = i;
            this.f = concurrentMap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.p
        public final ConcurrentMap<K, V> a() {
            return this.f;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.p, com.google.common.collect.q
        public final /* bridge */ /* synthetic */ Map b() {
            return this.f;
        }

        @Override // com.google.common.collect.p, com.google.common.collect.q, com.google.common.collect.r
        protected final /* bridge */ /* synthetic */ Object c() {
            return this.f;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$aa.class */
    static final class aa<K, V, E extends g<K, V, E>> extends WeakReference<V> implements z<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final E f31967a;

        aa(ReferenceQueue<V> referenceQueue, V v, E e) {
            super(v, referenceQueue);
            this.f31967a = e;
        }

        @Override // com.google.common.collect.ae.z
        public final E a() {
            return this.f31967a;
        }

        @Override // com.google.common.collect.ae.z
        public final z<K, V, E> a(ReferenceQueue<V> referenceQueue, E e) {
            return new aa(referenceQueue, get(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$ab.class */
    public final class ab extends com.google.common.collect.e<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f31968a;

        /* renamed from: b  reason: collision with root package name */
        V f31969b;

        ab(K k, V v) {
            this.f31968a = k;
            this.f31969b = v;
        }

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f31968a.equals(entry.getKey()) && this.f31969b.equals(entry.getValue());
        }

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public final K getKey() {
            return this.f31968a;
        }

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public final V getValue() {
            return this.f31969b;
        }

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public final int hashCode() {
            return this.f31968a.hashCode() ^ this.f31969b.hashCode();
        }

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = (V) ae.this.put(this.f31968a, v);
            this.f31969b = v;
            return v2;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$b.class */
    static abstract class b<K, V, E extends g<K, V, E>> implements g<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final K f31971a;

        /* renamed from: b  reason: collision with root package name */
        final int f31972b;

        /* renamed from: c  reason: collision with root package name */
        final E f31973c;

        b(K k, int i, E e) {
            this.f31971a = k;
            this.f31972b = i;
            this.f31973c = e;
        }

        @Override // com.google.common.collect.ae.g
        public final K a() {
            return this.f31971a;
        }

        @Override // com.google.common.collect.ae.g
        public final int b() {
            return this.f31972b;
        }

        @Override // com.google.common.collect.ae.g
        public final E c() {
            return this.f31973c;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$c.class */
    static abstract class c<K, V, E extends g<K, V, E>> extends WeakReference<K> implements g<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final int f31974a;

        /* renamed from: b  reason: collision with root package name */
        final E f31975b;

        c(ReferenceQueue<K> referenceQueue, K k, int i, E e) {
            super(k, referenceQueue);
            this.f31974a = i;
            this.f31975b = e;
        }

        @Override // com.google.common.collect.ae.g
        public final K a() {
            return (K) get();
        }

        @Override // com.google.common.collect.ae.g
        public final int b() {
            return this.f31974a;
        }

        @Override // com.google.common.collect.ae.g
        public final E c() {
            return this.f31975b;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$d.class */
    final class d extends ae<K, V, E, S>.f<Map.Entry<K, V>> {
        d(ae aeVar) {
            super();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            return a();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$e.class */
    final class e extends k<Map.Entry<K, V>> {
        e() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ae.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = ae.this.get(key)) != null && ae.this.b().a(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return ae.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new d(ae.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && ae.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ae.this.size();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$f.class */
    abstract class f<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f31977a;

        /* renamed from: b  reason: collision with root package name */
        int f31978b = -1;

        /* renamed from: c  reason: collision with root package name */
        l<K, V, E, S> f31979c;

        /* renamed from: d  reason: collision with root package name */
        AtomicReferenceArray<E> f31980d;
        E e;
        ae<K, V, E, S>.ab f;
        ae<K, V, E, S>.ab g;

        f() {
            this.f31977a = ae.this.f31961c.length - 1;
            b();
        }

        /* JADX WARN: Finally extract failed */
        private boolean a(E e) {
            try {
                Object a2 = e.a();
                Object a3 = ae.a((g) e);
                if (a3 != null) {
                    this.f = new ab(a2, a3);
                    this.f31979c.e();
                    return true;
                }
                this.f31979c.e();
                return false;
            } catch (Throwable th) {
                this.f31979c.e();
                throw th;
            }
        }

        private void b() {
            this.f = null;
            if (!c() && !d()) {
                while (this.f31977a >= 0) {
                    l<K, V, E, S>[] lVarArr = ae.this.f31961c;
                    int i = this.f31977a;
                    this.f31977a = i - 1;
                    l<K, V, E, S> lVar = lVarArr[i];
                    this.f31979c = lVar;
                    if (lVar.f31983b != 0) {
                        AtomicReferenceArray<E> atomicReferenceArray = this.f31979c.e;
                        this.f31980d = atomicReferenceArray;
                        this.f31978b = atomicReferenceArray.length() - 1;
                        if (d()) {
                            return;
                        }
                    }
                }
            }
        }

        private boolean c() {
            E e = this.e;
            if (e == null) {
                return false;
            }
            while (true) {
                this.e = (E) e.c();
                E e2 = this.e;
                if (e2 == null) {
                    return false;
                }
                if (a(e2)) {
                    return true;
                }
                e = this.e;
            }
        }

        private boolean d() {
            while (true) {
                int i = this.f31978b;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f31980d;
                this.f31978b = i - 1;
                E e = atomicReferenceArray.get(i);
                this.e = e;
                if (e != null && (a(e) || c())) {
                    return true;
                }
            }
        }

        final ae<K, V, E, S>.ab a() {
            ae<K, V, E, S>.ab abVar = this.f;
            if (abVar != null) {
                this.g = abVar;
                b();
                return this.g;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.m.b(this.g != null, "no calls to next() since the last call to remove()");
            ae.this.remove(this.g.getKey());
            this.g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$g.class */
    public interface g<K, V, E extends g<K, V, E>> {
        K a();

        int b();

        E c();

        V d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$h.class */
    public interface h<K, V, E extends g<K, V, E>, S extends l<K, V, E, S>> {
        E a(S s, E e, E e2);

        E a(S s, K k, int i, E e);

        S a(ae<K, V, E, S> aeVar, int i, int i2);

        n a();

        void a(S s, E e, V v);

        n b();
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$i.class */
    final class i extends ae<K, V, E, S>.f<K> {
        i(ae aeVar) {
            super();
        }

        @Override // java.util.Iterator
        public final K next() {
            return a().getKey();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$j.class */
    final class j extends k<K> {
        j() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ae.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return ae.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return ae.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new i(ae.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return ae.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ae.this.size();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$k.class */
    static abstract class k<E> extends AbstractSet<E> {
        private k() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return ae.a((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) ae.a((Collection) this).toArray(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$l.class */
    public static abstract class l<K, V, E extends g<K, V, E>, S extends l<K, V, E, S>> extends ReentrantLock {

        /* renamed from: a  reason: collision with root package name */
        final ae<K, V, E, S> f31982a;

        /* renamed from: b  reason: collision with root package name */
        volatile int f31983b;

        /* renamed from: c  reason: collision with root package name */
        int f31984c;

        /* renamed from: d  reason: collision with root package name */
        int f31985d;
        volatile AtomicReferenceArray<E> e;
        final int f;
        final AtomicInteger g = new AtomicInteger();

        l(ae<K, V, E, S> aeVar, int i, int i2) {
            this.f31982a = aeVar;
            this.f = i2;
            AtomicReferenceArray<E> a2 = a(i);
            int length = (a2.length() * 3) / 4;
            this.f31985d = length;
            if (length == i2) {
                this.f31985d = length + 1;
            }
            this.e = a2;
        }

        private E a(E e, E e2) {
            return this.f31982a.f.a((h<K, V, E, S>) a(), (g) e, (g) e2);
        }

        private static AtomicReferenceArray<E> a(int i) {
            return new AtomicReferenceArray<>(i);
        }

        private void a(E e, V v) {
            this.f31982a.f.a((h<K, V, E, S>) a(), (S) e, (E) v);
        }

        static <K, V, E extends g<K, V, E>> boolean a(E e) {
            return e.d() == null;
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        private boolean a(E e, int i) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.e;
                int length = i & (atomicReferenceArray.length() - 1);
                E e2 = atomicReferenceArray.get(length);
                for (g gVar = e2; gVar != null; gVar = gVar.c()) {
                    if (gVar == e) {
                        this.f31984c++;
                        E b2 = b(e2, gVar);
                        int i2 = this.f31983b;
                        atomicReferenceArray.set(length, b2);
                        this.f31983b = i2 - 1;
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
        private boolean a(K k, int i, z<K, V, E> zVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (g gVar = e; gVar != null; gVar = gVar.c()) {
                    Object a2 = gVar.a();
                    if (gVar.b() == i && a2 != null && this.f31982a.e.a(k, a2)) {
                        if (((y) gVar).e() == zVar) {
                            this.f31984c++;
                            E b2 = b(e, gVar);
                            int i2 = this.f31983b;
                            atomicReferenceArray.set(length, b2);
                            this.f31983b = i2 - 1;
                            unlock();
                            return true;
                        } else {
                            unlock();
                            return false;
                        }
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        private E b(E e, E e2) {
            int i = this.f31983b;
            E e3 = (E) e2.c();
            while (e != e2) {
                E a2 = a((g) e, (g) e3);
                if (a2 != null) {
                    e3 = a2;
                } else {
                    i--;
                }
                e = (E) e.c();
            }
            this.f31983b = i;
            return e3;
        }

        private E d(Object obj, int i) {
            if (this.f31983b == 0) {
                return null;
            }
            AtomicReferenceArray<E> atomicReferenceArray = this.e;
            for (E e = atomicReferenceArray.get((atomicReferenceArray.length() - 1) & i); e != null; e = (E) e.c()) {
                if (e.b() == i) {
                    Object a2 = e.a();
                    if (a2 == null) {
                        d();
                    } else if (this.f31982a.e.a(obj, a2)) {
                        return e;
                    }
                }
            }
            return null;
        }

        private void f() {
            if (tryLock()) {
                try {
                    b();
                    this.g.set(0);
                } finally {
                    unlock();
                }
            }
        }

        abstract S a();

        /* JADX WARN: Finally extract failed */
        final V a(Object obj, int i) {
            try {
                E d2 = d(obj, i);
                if (d2 == null) {
                    e();
                    return null;
                }
                V v = (V) d2.d();
                if (v == null) {
                    d();
                }
                e();
                return v;
            } catch (Throwable th) {
                e();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        final V a(K k, int i, V v) {
            lock();
            try {
                f();
                AtomicReferenceArray<E> atomicReferenceArray = this.e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (g gVar = e; gVar != null; gVar = gVar.c()) {
                    Object a2 = gVar.a();
                    if (gVar.b() == i && a2 != null && this.f31982a.e.a(k, a2)) {
                        V v2 = (V) gVar.d();
                        if (v2 == null) {
                            if (a(gVar)) {
                                this.f31984c++;
                                E b2 = b(e, gVar);
                                int i2 = this.f31983b;
                                atomicReferenceArray.set(length, b2);
                                this.f31983b = i2 - 1;
                            }
                            unlock();
                            return null;
                        }
                        this.f31984c++;
                        a((l<K, V, E, S>) gVar, (g) v);
                        unlock();
                        return v2;
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
        final V a(K k, int i, V v, boolean z) {
            lock();
            try {
                f();
                int i2 = this.f31983b + 1;
                int i3 = i2;
                if (i2 > this.f31985d) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.e;
                    int length = atomicReferenceArray.length();
                    if (length < 1073741824) {
                        int i4 = this.f31983b;
                        AtomicReferenceArray<E> atomicReferenceArray2 = (AtomicReferenceArray<E>) a(length << 1);
                        this.f31985d = (atomicReferenceArray2.length() * 3) / 4;
                        int length2 = atomicReferenceArray2.length() - 1;
                        for (int i5 = 0; i5 < length; i5++) {
                            E e = atomicReferenceArray.get(i5);
                            i4 = i4;
                            if (e != null) {
                                g c2 = e.c();
                                int b2 = e.b() & length2;
                                if (c2 == null) {
                                    atomicReferenceArray2.set(b2, e);
                                    i4 = i4;
                                } else {
                                    g gVar = e;
                                    while (c2 != null) {
                                        int b3 = c2.b() & length2;
                                        b2 = b2;
                                        if (b3 != b2) {
                                            gVar = c2;
                                            b2 = b3;
                                        }
                                        c2 = c2.c();
                                    }
                                    atomicReferenceArray2.set(b2, gVar);
                                    while (true) {
                                        i4 = i4;
                                        if (e != gVar) {
                                            int b4 = e.b() & length2;
                                            g a2 = a(e, (g) atomicReferenceArray2.get(b4));
                                            if (a2 != null) {
                                                atomicReferenceArray2.set(b4, a2);
                                            } else {
                                                i4--;
                                            }
                                            e = e.c();
                                        }
                                    }
                                }
                            }
                        }
                        this.e = atomicReferenceArray2;
                        this.f31983b = i4;
                    }
                    i3 = this.f31983b + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray3 = this.e;
                int length3 = (atomicReferenceArray3.length() - 1) & i;
                E e2 = atomicReferenceArray3.get(length3);
                for (g gVar2 = e2; gVar2 != null; gVar2 = gVar2.c()) {
                    Object a3 = gVar2.a();
                    if (gVar2.b() == i && a3 != null && this.f31982a.e.a(k, a3)) {
                        V v2 = (V) gVar2.d();
                        if (v2 == null) {
                            this.f31984c++;
                            a((l<K, V, E, S>) gVar2, (g) v);
                            this.f31983b = this.f31983b;
                            unlock();
                            return null;
                        } else if (z) {
                            unlock();
                            return v2;
                        } else {
                            this.f31984c++;
                            a((l<K, V, E, S>) gVar2, (g) v);
                            unlock();
                            return v2;
                        }
                    }
                }
                this.f31984c++;
                E a4 = this.f31982a.f.a(a(), k, i, e2);
                a((l<K, V, E, S>) a4, (E) v);
                atomicReferenceArray3.set(length3, a4);
                this.f31983b = i3;
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        final void a(ReferenceQueue<K> referenceQueue) {
            int i;
            int i2 = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll != null) {
                    g gVar = (g) poll;
                    ae<K, V, E, S> aeVar = this.f31982a;
                    int b2 = gVar.b();
                    aeVar.a(b2).a((l<K, V, E, S>) gVar, b2);
                    i = i2 + 1;
                    i2 = i;
                } else {
                    return;
                }
            } while (i != 16);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        final boolean a(K k, int i, V v, V v2) {
            lock();
            try {
                f();
                AtomicReferenceArray<E> atomicReferenceArray = this.e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (g gVar = e; gVar != null; gVar = gVar.c()) {
                    Object a2 = gVar.a();
                    if (gVar.b() == i && a2 != null && this.f31982a.e.a(k, a2)) {
                        Object d2 = gVar.d();
                        if (d2 == null) {
                            if (a(gVar)) {
                                this.f31984c++;
                                E b2 = b(e, gVar);
                                int i2 = this.f31983b;
                                atomicReferenceArray.set(length, b2);
                                this.f31983b = i2 - 1;
                            }
                            unlock();
                            return false;
                        } else if (this.f31982a.b().a(v, d2)) {
                            this.f31984c++;
                            a((l<K, V, E, S>) gVar, (g) v2);
                            unlock();
                            return true;
                        } else {
                            unlock();
                            return false;
                        }
                    }
                }
                unlock();
                return false;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        void b() {
        }

        final void b(ReferenceQueue<V> referenceQueue) {
            int i;
            int i2 = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll != null) {
                    z<K, V, E> zVar = (z) poll;
                    ae<K, V, E, S> aeVar = this.f31982a;
                    E a2 = zVar.a();
                    int b2 = a2.b();
                    aeVar.a(b2).a((l<K, V, E, S>) ((K) a2.a()), b2, (z<l<K, V, E, S>, V, E>) zVar);
                    i = i2 + 1;
                    i2 = i;
                } else {
                    return;
                }
            } while (i != 16);
        }

        final boolean b(Object obj, int i) {
            try {
                if (this.f31983b != 0) {
                    E d2 = d(obj, i);
                    boolean z = false;
                    if (d2 != null) {
                        z = false;
                        if (d2.d() != null) {
                            z = true;
                        }
                    }
                    return z;
                }
                e();
                return false;
            } finally {
                e();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x006e, code lost:
            if (r4.f31982a.b().a(r7, r11.d()) == false) goto L_0x0077;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0071, code lost:
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0080, code lost:
            if (a(r11) != false) goto L_0x0089;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0083, code lost:
            unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0088, code lost:
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0089, code lost:
            r4.f31984c++;
            r0 = b(r0, r11);
            r0 = r4.f31983b;
            r0.set(r0, r0);
            r4.f31983b = r0 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00b1, code lost:
            unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00b6, code lost:
            return r12;
         */
        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final boolean b(java.lang.Object r5, int r6, java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 208
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ae.l.b(java.lang.Object, int, java.lang.Object):boolean");
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        final V c(Object obj, int i) {
            lock();
            try {
                f();
                AtomicReferenceArray<E> atomicReferenceArray = this.e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (g gVar = e; gVar != null; gVar = gVar.c()) {
                    Object a2 = gVar.a();
                    if (gVar.b() == i && a2 != null && this.f31982a.e.a(obj, a2)) {
                        V v = (V) gVar.d();
                        if (v != null || a(gVar)) {
                            this.f31984c++;
                            E b2 = b(e, gVar);
                            int i2 = this.f31983b;
                            atomicReferenceArray.set(length, b2);
                            this.f31983b = i2 - 1;
                            unlock();
                            return v;
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

        void c() {
        }

        final void d() {
            if (tryLock()) {
                try {
                    b();
                } finally {
                    unlock();
                }
            }
        }

        final void e() {
            if ((this.g.incrementAndGet() & 63) == 0) {
                f();
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$m.class */
    static final class m<K, V> extends a<K, V> {
        m(n nVar, n nVar2, com.google.common.base.e<Object> eVar, com.google.common.base.e<Object> eVar2, int i, ConcurrentMap<K, V> concurrentMap) {
            super(nVar, nVar2, eVar, eVar2, i, concurrentMap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            int readInt = objectInputStream.readInt();
            ad adVar = new ad();
            boolean z = false;
            com.google.common.base.m.b(adVar.f31956b == -1, "initial capacity was already set to %s", adVar.f31956b);
            com.google.common.base.m.a(readInt >= 0);
            adVar.f31956b = readInt;
            ad a2 = adVar.a(this.f31963a);
            n nVar = this.f31964b;
            com.google.common.base.m.b(a2.e == null, "Value strength was already set to %s", a2.e);
            a2.e = (n) com.google.common.base.m.a(nVar);
            if (nVar != n.STRONG) {
                a2.f31955a = true;
            }
            com.google.common.base.e<Object> eVar = this.f31965c;
            com.google.common.base.m.b(a2.f == null, "key equivalence was already set to %s", a2.f);
            a2.f = (com.google.common.base.e) com.google.common.base.m.a(eVar);
            a2.f31955a = true;
            int i = this.e;
            com.google.common.base.m.b(a2.f31957c == -1, "concurrency level was already set to %s", a2.f31957c);
            if (i > 0) {
                z = true;
            }
            com.google.common.base.m.a(z);
            a2.f31957c = i;
            this.f = a2.e();
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject != null) {
                    this.f.put(readObject, objectInputStream.readObject());
                } else {
                    return;
                }
            }
        }

        private Object readResolve() {
            return this.f;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeInt(this.f.size());
            for (Map.Entry<K, V> entry : this.f.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$n.class */
    public enum n {
        STRONG { // from class: com.google.common.collect.ae.n.1
            @Override // com.google.common.collect.ae.n
            final com.google.common.base.e<Object> defaultEquivalence() {
                return e.a.f31922a;
            }
        },
        WEAK { // from class: com.google.common.collect.ae.n.2
            @Override // com.google.common.collect.ae.n
            final com.google.common.base.e<Object> defaultEquivalence() {
                return e.b.f31923a;
            }
        };

        abstract com.google.common.base.e<Object> defaultEquivalence();
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$o.class */
    static final class o<K, V> extends b<K, V, o<K, V>> implements af<K, V, o<K, V>> {

        /* renamed from: d  reason: collision with root package name */
        volatile V f31986d = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$o$a.class */
        public static final class a<K, V> implements h<K, V, o<K, V>, p<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f31987a = new a<>();

            a() {
            }

            static <K, V> a<K, V> c() {
                return (a<K, V>) f31987a;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ g a(l lVar, g gVar, g gVar2) {
                o oVar = (o) gVar;
                o oVar2 = new o(oVar.f31971a, oVar.f31972b, (o) gVar2);
                oVar2.f31986d = oVar.f31986d;
                return oVar2;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ g a(l lVar, Object obj, int i, g gVar) {
                return new o(obj, i, (o) gVar);
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ l a(ae aeVar, int i, int i2) {
                return new p(aeVar, i, -1);
            }

            @Override // com.google.common.collect.ae.h
            public final n a() {
                return n.STRONG;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.ae.h
            public final /* bridge */ /* synthetic */ void a(l lVar, g gVar, Object obj) {
                ((o) gVar).f31986d = obj;
            }

            @Override // com.google.common.collect.ae.h
            public final n b() {
                return n.STRONG;
            }
        }

        o(K k, int i, o<K, V> oVar) {
            super(k, i, oVar);
        }

        @Override // com.google.common.collect.ae.g
        public final V d() {
            return this.f31986d;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$p.class */
    static final class p<K, V> extends l<K, V, o<K, V>, p<K, V>> {
        p(ae<K, V, o<K, V>, p<K, V>> aeVar, int i, int i2) {
            super(aeVar, i, i2);
        }

        @Override // com.google.common.collect.ae.l
        final /* bridge */ /* synthetic */ l a() {
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$q.class */
    static final class q<K, V> extends b<K, V, q<K, V>> implements y<K, V, q<K, V>> {

        /* renamed from: d  reason: collision with root package name */
        volatile z<K, V, q<K, V>> f31988d = ae.a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$q$a.class */
        public static final class a<K, V> implements h<K, V, q<K, V>, r<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f31989a = new a<>();

            a() {
            }

            static <K, V> a<K, V> c() {
                return (a<K, V>) f31989a;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ g a(l lVar, g gVar, g gVar2) {
                r rVar = (r) lVar;
                q qVar = (q) gVar;
                q qVar2 = (q) gVar2;
                if (l.a(qVar)) {
                    return null;
                }
                ReferenceQueue<V> referenceQueue = rVar.h;
                q<K, V> qVar3 = new q<>(qVar.f31971a, qVar.f31972b, qVar2);
                qVar3.f31988d = qVar.f31988d.a(referenceQueue, qVar3);
                return qVar3;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ g a(l lVar, Object obj, int i, g gVar) {
                return new q(obj, i, (q) gVar);
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ l a(ae aeVar, int i, int i2) {
                return new r(aeVar, i, -1);
            }

            @Override // com.google.common.collect.ae.h
            public final n a() {
                return n.STRONG;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ void a(l lVar, g gVar, Object obj) {
                q qVar = (q) gVar;
                ReferenceQueue referenceQueue = ((r) lVar).h;
                z<K, V, q<K, V>> zVar = qVar.f31988d;
                qVar.f31988d = new aa(referenceQueue, obj, qVar);
                zVar.clear();
            }

            @Override // com.google.common.collect.ae.h
            public final n b() {
                return n.WEAK;
            }
        }

        q(K k, int i, q<K, V> qVar) {
            super(k, i, qVar);
        }

        @Override // com.google.common.collect.ae.g
        public final V d() {
            return this.f31988d.get();
        }

        @Override // com.google.common.collect.ae.y
        public final z<K, V, q<K, V>> e() {
            return this.f31988d;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$r.class */
    static final class r<K, V> extends l<K, V, q<K, V>, r<K, V>> {
        private final ReferenceQueue<V> h = new ReferenceQueue<>();

        r(ae<K, V, q<K, V>, r<K, V>> aeVar, int i, int i2) {
            super(aeVar, i, i2);
        }

        @Override // com.google.common.collect.ae.l
        final /* bridge */ /* synthetic */ l a() {
            return this;
        }

        @Override // com.google.common.collect.ae.l
        final void b() {
            b(this.h);
        }

        @Override // com.google.common.collect.ae.l
        final void c() {
            do {
            } while (this.h.poll() != null);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$s.class */
    final class s extends ae<K, V, E, S>.f<V> {
        s(ae aeVar) {
            super();
        }

        @Override // java.util.Iterator
        public final V next() {
            return a().getValue();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$t.class */
    final class t extends AbstractCollection<V> {
        t() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            ae.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return ae.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return ae.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new s(ae.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return ae.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final Object[] toArray() {
            return ae.a((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) ae.a((Collection) this).toArray(tArr);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$u.class */
    static final class u<K, V> extends c<K, V, u<K, V>> implements af<K, V, u<K, V>> {

        /* renamed from: c  reason: collision with root package name */
        volatile V f31991c = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$u$a.class */
        public static final class a<K, V> implements h<K, V, u<K, V>, v<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f31992a = new a<>();

            a() {
            }

            static <K, V> a<K, V> c() {
                return (a<K, V>) f31992a;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ g a(l lVar, g gVar, g gVar2) {
                v vVar = (v) lVar;
                u uVar = (u) gVar;
                u uVar2 = (u) gVar2;
                if (uVar.get() == null) {
                    return null;
                }
                u uVar3 = new u(vVar.h, uVar.get(), uVar.f31974a, uVar2);
                uVar3.f31991c = uVar.f31991c;
                return uVar3;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ g a(l lVar, Object obj, int i, g gVar) {
                return new u(((v) lVar).h, obj, i, (u) gVar);
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ l a(ae aeVar, int i, int i2) {
                return new v(aeVar, i, -1);
            }

            @Override // com.google.common.collect.ae.h
            public final n a() {
                return n.WEAK;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.ae.h
            public final /* bridge */ /* synthetic */ void a(l lVar, g gVar, Object obj) {
                ((u) gVar).f31991c = obj;
            }

            @Override // com.google.common.collect.ae.h
            public final n b() {
                return n.STRONG;
            }
        }

        u(ReferenceQueue<K> referenceQueue, K k, int i, u<K, V> uVar) {
            super(referenceQueue, k, i, uVar);
        }

        @Override // com.google.common.collect.ae.g
        public final V d() {
            return this.f31991c;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$v.class */
    static final class v<K, V> extends l<K, V, u<K, V>, v<K, V>> {
        private final ReferenceQueue<K> h = new ReferenceQueue<>();

        v(ae<K, V, u<K, V>, v<K, V>> aeVar, int i, int i2) {
            super(aeVar, i, i2);
        }

        @Override // com.google.common.collect.ae.l
        final /* bridge */ /* synthetic */ l a() {
            return this;
        }

        @Override // com.google.common.collect.ae.l
        final void b() {
            a(this.h);
        }

        @Override // com.google.common.collect.ae.l
        final void c() {
            do {
            } while (this.h.poll() != null);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$w.class */
    static final class w<K, V> extends c<K, V, w<K, V>> implements y<K, V, w<K, V>> {

        /* renamed from: c  reason: collision with root package name */
        volatile z<K, V, w<K, V>> f31993c = ae.a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$w$a.class */
        public static final class a<K, V> implements h<K, V, w<K, V>, x<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f31994a = new a<>();

            a() {
            }

            static <K, V> a<K, V> c() {
                return (a<K, V>) f31994a;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ g a(l lVar, g gVar, g gVar2) {
                x xVar = (x) lVar;
                w wVar = (w) gVar;
                w wVar2 = (w) gVar2;
                if (wVar.get() == null || l.a(wVar)) {
                    return null;
                }
                ReferenceQueue referenceQueue = xVar.h;
                ReferenceQueue<V> referenceQueue2 = xVar.i;
                w<K, V> wVar3 = new w<>(referenceQueue, wVar.get(), wVar.f31974a, wVar2);
                wVar3.f31993c = wVar.f31993c.a(referenceQueue2, wVar3);
                return wVar3;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ g a(l lVar, Object obj, int i, g gVar) {
                return new w(((x) lVar).h, obj, i, (w) gVar);
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ l a(ae aeVar, int i, int i2) {
                return new x(aeVar, i, -1);
            }

            @Override // com.google.common.collect.ae.h
            public final n a() {
                return n.WEAK;
            }

            @Override // com.google.common.collect.ae.h
            public final /* synthetic */ void a(l lVar, g gVar, Object obj) {
                w wVar = (w) gVar;
                ReferenceQueue referenceQueue = ((x) lVar).i;
                z<K, V, w<K, V>> zVar = wVar.f31993c;
                wVar.f31993c = new aa(referenceQueue, obj, wVar);
                zVar.clear();
            }

            @Override // com.google.common.collect.ae.h
            public final n b() {
                return n.WEAK;
            }
        }

        w(ReferenceQueue<K> referenceQueue, K k, int i, w<K, V> wVar) {
            super(referenceQueue, k, i, wVar);
        }

        @Override // com.google.common.collect.ae.g
        public final V d() {
            return this.f31993c.get();
        }

        @Override // com.google.common.collect.ae.y
        public final z<K, V, w<K, V>> e() {
            return this.f31993c;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$x.class */
    static final class x<K, V> extends l<K, V, w<K, V>, x<K, V>> {
        private final ReferenceQueue<K> h = new ReferenceQueue<>();
        private final ReferenceQueue<V> i = new ReferenceQueue<>();

        x(ae<K, V, w<K, V>, x<K, V>> aeVar, int i, int i2) {
            super(aeVar, i, i2);
        }

        @Override // com.google.common.collect.ae.l
        final /* bridge */ /* synthetic */ l a() {
            return this;
        }

        @Override // com.google.common.collect.ae.l
        final void b() {
            a(this.h);
            b(this.i);
        }

        @Override // com.google.common.collect.ae.l
        final void c() {
            do {
            } while (this.h.poll() != null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$y.class */
    public interface y<K, V, E extends g<K, V, E>> extends g<K, V, E> {
        z<K, V, E> e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ae$z.class */
    public interface z<K, V, E extends g<K, V, E>> {
        E a();

        z<K, V, E> a(ReferenceQueue<V> referenceQueue, E e);

        void clear();

        V get();
    }

    private ae(ad adVar, h<K, V, E, S> hVar) {
        this.f31962d = Math.min(adVar.b(), 65536);
        this.e = (com.google.common.base.e) com.google.common.base.i.a(adVar.f, adVar.c().defaultEquivalence());
        this.f = hVar;
        int min = Math.min(adVar.a(), 1073741824);
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i3 < this.f31962d) {
            i4++;
            i3 <<= 1;
        }
        this.f31960b = 32 - i4;
        this.f31959a = i3 - 1;
        this.f31961c = new l[i3];
        int i5 = min / i3;
        int i6 = 1;
        int i7 = i5;
        if (i3 * i5 < min) {
            i7 = i5 + 1;
            i6 = 1;
        }
        while (i6 < i7) {
            i6 <<= 1;
        }
        while (true) {
            l<K, V, E, S>[] lVarArr = this.f31961c;
            if (i2 < lVarArr.length) {
                lVarArr[i2] = this.f.a(this, i6, -1);
                i2++;
            } else {
                return;
            }
        }
    }

    private int a(Object obj) {
        int a2 = this.e.a(obj);
        int i2 = a2 + ((a2 << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    static <K, V, E extends g<K, V, E>> z<K, V, E> a() {
        return (z<K, V, E>) g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> ae<K, V, ? extends g<K, V, ?>, ?> a(ad adVar) {
        if (adVar.c() == n.STRONG && adVar.d() == n.STRONG) {
            return new ae<>(adVar, o.a.c());
        }
        if (adVar.c() == n.STRONG && adVar.d() == n.WEAK) {
            return new ae<>(adVar, q.a.c());
        }
        if (adVar.c() == n.WEAK && adVar.d() == n.STRONG) {
            return new ae<>(adVar, u.a.c());
        }
        if (adVar.c() == n.WEAK && adVar.d() == n.WEAK) {
            return new ae<>(adVar, w.a.c());
        }
        throw new AssertionError();
    }

    static V a(E e2) {
        if (e2.a() == null) {
            return null;
        }
        return (V) e2.d();
    }

    static /* synthetic */ ArrayList a(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        com.google.common.collect.ab.a(arrayList, collection.iterator());
        return arrayList;
    }

    final l<K, V, E, S> a(int i2) {
        return this.f31961c[(i2 >>> this.f31960b) & this.f31959a];
    }

    final com.google.common.base.e<Object> b() {
        return this.f.b().defaultEquivalence();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        l<K, V, E, S>[] lVarArr = this.f31961c;
        int length = lVarArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            l<K, V, E, S> lVar = lVarArr[i2];
            if (lVar.f31983b != 0) {
                lVar.lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = lVar.e;
                    for (int i3 = 0; i3 < atomicReferenceArray.length(); i3++) {
                        atomicReferenceArray.set(i3, null);
                    }
                    lVar.c();
                    lVar.g.set(0);
                    lVar.f31984c++;
                    lVar.f31983b = 0;
                } finally {
                    lVar.unlock();
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int a2 = a(obj);
        return a(a2).b(obj, a2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsValue(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            r0 = r5
            com.google.common.collect.ae$l<K, V, E extends com.google.common.collect.ae$g<K, V, E>, S extends com.google.common.collect.ae$l<K, V, E, S>>[] r0 = r0.f31961c
            r7 = r0
            r0 = -1
            r8 = r0
            r0 = 0
            r10 = r0
        L_0x0012:
            r0 = r10
            r1 = 3
            if (r0 >= r1) goto L_0x00d1
            r0 = 0
            r11 = r0
            r0 = r7
            int r0 = r0.length
            r13 = r0
            r0 = 0
            r14 = r0
        L_0x0022:
            r0 = r14
            r1 = r13
            if (r0 >= r1) goto L_0x00c1
            r0 = r7
            r1 = r14
            r0 = r0[r1]
            r15 = r0
            r0 = r15
            int r0 = r0.f31983b
            r16 = r0
            r0 = r15
            java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.ae$g<K, V, E>> r0 = r0.e
            r17 = r0
            r0 = 0
            r16 = r0
        L_0x0040:
            r0 = r16
            r1 = r17
            int r1 = r1.length()
            if (r0 >= r1) goto L_0x00b0
            r0 = r17
            r1 = r16
            java.lang.Object r0 = r0.get(r1)
            com.google.common.collect.ae$g r0 = (com.google.common.collect.ae.g) r0
            r18 = r0
        L_0x0056:
            r0 = r18
            if (r0 == 0) goto L_0x00aa
            r0 = r18
            java.lang.Object r0 = r0.a()
            if (r0 != 0) goto L_0x0070
            r0 = r15
            r0.d()
        L_0x006a:
            r0 = 0
            r19 = r0
            goto L_0x008a
        L_0x0070:
            r0 = r18
            java.lang.Object r0 = r0.d()
            r20 = r0
            r0 = r20
            r19 = r0
            r0 = r20
            if (r0 != 0) goto L_0x008a
            r0 = r15
            r0.d()
            goto L_0x006a
        L_0x008a:
            r0 = r19
            if (r0 == 0) goto L_0x009e
            r0 = r5
            com.google.common.base.e r0 = r0.b()
            r1 = r6
            r2 = r19
            boolean r0 = r0.a(r1, r2)
            if (r0 == 0) goto L_0x009e
            r0 = 1
            return r0
        L_0x009e:
            r0 = r18
            com.google.common.collect.ae$g r0 = r0.c()
            r18 = r0
            goto L_0x0056
        L_0x00aa:
            int r16 = r16 + 1
            goto L_0x0040
        L_0x00b0:
            r0 = r11
            r1 = r15
            int r1 = r1.f31984c
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            int r14 = r14 + 1
            goto L_0x0022
        L_0x00c1:
            r0 = r11
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00d1
            int r10 = r10 + 1
            r0 = r11
            r8 = r0
            goto L_0x0012
        L_0x00d1:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ae.containsValue(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.j;
        if (set != null) {
            return set;
        }
        e eVar = new e();
        this.j = eVar;
        return eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int a2 = a(obj);
        return a(a2).a(obj, a2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        l<K, V, E, S>[] lVarArr = this.f31961c;
        long j2 = 0;
        for (int i2 = 0; i2 < lVarArr.length; i2++) {
            if (lVarArr[i2].f31983b != 0) {
                return false;
            }
            j2 += lVarArr[i2].f31984c;
        }
        if (j2 == 0) {
            return true;
        }
        for (int i3 = 0; i3 < lVarArr.length; i3++) {
            if (lVarArr[i3].f31983b != 0) {
                return false;
            }
            j2 -= lVarArr[i3].f31984c;
        }
        return j2 == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.h;
        if (set != null) {
            return set;
        }
        j jVar = new j();
        this.h = jVar;
        return jVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k2, V v2) {
        com.google.common.base.m.a(k2);
        com.google.common.base.m.a(v2);
        int a2 = a(k2);
        return a(a2).a((l<K, V, E, S>) k2, a2, (int) v2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final V putIfAbsent(K k2, V v2) {
        com.google.common.base.m.a(k2);
        com.google.common.base.m.a(v2);
        int a2 = a(k2);
        return a(a2).a((l<K, V, E, S>) k2, a2, (int) v2, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int a2 = a(obj);
        return a(a2).c(obj, a2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int a2 = a(obj);
        return a(a2).b(obj, a2, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final V replace(K k2, V v2) {
        com.google.common.base.m.a(k2);
        com.google.common.base.m.a(v2);
        int a2 = a(k2);
        return a(a2).a((l<K, V, E, S>) k2, a2, (int) v2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(K k2, V v2, V v3) {
        com.google.common.base.m.a(k2);
        com.google.common.base.m.a(v3);
        if (v2 == null) {
            return false;
        }
        int a2 = a(k2);
        return a(a2).a((l<K, V, E, S>) k2, a2, v2, v3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        long j2 = 0;
        for (l<K, V, E, S> lVar : this.f31961c) {
            j2 += lVar.f31983b;
        }
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return j2 < -2147483648L ? BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW : (int) j2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.i;
        if (collection != null) {
            return collection;
        }
        t tVar = new t();
        this.i = tVar;
        return tVar;
    }

    final Object writeReplace() {
        return new m(this.f.a(), this.f.b(), this.e, this.f.b().defaultEquivalence(), this.f31962d, this);
    }
}
