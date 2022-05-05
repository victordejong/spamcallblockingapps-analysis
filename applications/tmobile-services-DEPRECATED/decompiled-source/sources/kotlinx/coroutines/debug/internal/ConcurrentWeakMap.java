package kotlinx.coroutines.debug.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin._Assertions;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010#\n\u0002\u0010'\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b��\u0018��*\b\b��\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0004:\u0003'()B\u0011\u0012\b\b\u0002\u0010\"\u001a\u00020$¢\u0006\u0004\b%\u0010&J\u001b\u0010\b\u001a\u00020\u00072\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u001a\u0010\u000e\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028��2\u0006\u0010\u0010\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0013\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028��2\b\u0010\u0010\u001a\u0004\u0018\u00018\u0001H\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0014\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028��H\u0016¢\u0006\u0004\b\u0014\u0010\u000fJ\r\u0010\u0015\u001a\u00020\u0007¢\u0006\u0004\b\u0015\u0010\u000bR(\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00170\u00168V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028��0\u00168V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0019R\u0016\u0010 \u001a\u00020\u001d8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u001e\u0010\"\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006*"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "", "K", "V", "Lkotlin/collections/AbstractMutableMap;", "Lkotlinx/coroutines/debug/internal/HashedWeakRef;", "w", "", "cleanWeakRef", "(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V", "clear", "()V", "decrementSize", "key", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", FirebaseAnalytics.Param.VALUE, "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putSynchronized", "remove", "runWeakRefQueueCleaningLoopUntilInterrupted", "", "", "getEntries", "()Ljava/util/Set;", "entries", "getKeys", "keys", "", "getSize", "()I", "size", "Ljava/lang/ref/ReferenceQueue;", "weakRefQueue", "Ljava/lang/ref/ReferenceQueue;", "", "<init>", "(Z)V", "Core", "Entry", "KeyValueSet", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/ConcurrentWeakMap.class */
public final class ConcurrentWeakMap<K, V> extends AbstractMutableMap<K, V> {

    /* renamed from: g */
    private static final AtomicIntegerFieldUpdater f22237g = AtomicIntegerFieldUpdater.newUpdater(ConcurrentWeakMap.class, "_size");
    private volatile int _size;
    volatile Object core;

    /* renamed from: f */
    private final ReferenceQueue<K> f22238f;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010)\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0082\u0004\u0018��:\u0001#B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\t¢\u0006\u0004\b!\u0010\"J\u0019\u0010\u0004\u001a\u00020\u00032\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0006\u001a\u00028��¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ3\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00020\u0010\"\u0004\b\u0002\u0010\r2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J3\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0006\u001a\u00028��2\b\u0010\u0013\u001a\u0004\u0018\u00018\u00012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u0019\u001a\u00120��R\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001eR\u0016\u0010 \u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001e¨\u0006$"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;", "Lkotlinx/coroutines/debug/internal/HashedWeakRef;", "weakRef", "", "cleanWeakRef", "(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V", "key", "getImpl", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "hash", FirebaseAnalytics.Param.INDEX, "(I)I", "E", "Lkotlin/Function2;", "factory", "", "keyValueIterator", "(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;", FirebaseAnalytics.Param.VALUE, "weakKey0", "", "putImpl", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "rehash", "()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;", "removeCleanedAt", "(I)V", "allocated", "I", "shift", "threshold", "<init>", "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V", "KeyValueIterator", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core.class */
    public final class Core {

        /* renamed from: g */
        private static final AtomicIntegerFieldUpdater f22239g = AtomicIntegerFieldUpdater.newUpdater(Core.class, "load");

        /* renamed from: a */
        private final int f22240a;

        /* renamed from: b */
        private final int f22241b;

        /* renamed from: c */
        AtomicReferenceArray f22242c;

        /* renamed from: d */
        AtomicReferenceArray f22243d;

        /* renamed from: e */
        private final int f22244e;
        private volatile int load = 0;

        /* JADX INFO: Access modifiers changed from: private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0082\u0004\u0018��*\u0004\b\u0002\u0010\u00012\u00020\u00022\u00020\u0003B!\u0012\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR(\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00028��8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u00028\u00018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u0016¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;", "E", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMutableIterator;", "", "findNext", "()V", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", "remove", "()Ljava/lang/Void;", "Lkotlin/Function2;", "factory", "Lkotlin/Function2;", "", FirebaseAnalytics.Param.INDEX, "I", "key", "Ljava/lang/Object;", FirebaseAnalytics.Param.VALUE, "<init>", "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator.class */
        public final class KeyValueIterator<E> implements Iterator<E>, KMutableIterator {

            /* renamed from: f */
            private int f22246f = -1;

            /* renamed from: g */
            private K f22247g;

            /* renamed from: h */
            private V f22248h;

            /* renamed from: i */
            private final Function2<K, V, E> f22249i;

            /* JADX WARN: Multi-variable type inference failed */
            public KeyValueIterator(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
                this.f22249i = function2;
                m765a();
            }

            /* renamed from: a */
            private final void m765a() {
                K k;
                while (true) {
                    int i = this.f22246f + 1;
                    this.f22246f = i;
                    if (i < Core.this.f22244e) {
                        HashedWeakRef hashedWeakRef = (HashedWeakRef) Core.this.f22242c.get(this.f22246f);
                        if (!(hashedWeakRef == null || (k = (K) hashedWeakRef.get()) == null)) {
                            this.f22247g = k;
                            Object obj = Core.this.f22243d.get(this.f22246f);
                            V v = (V) obj;
                            if (obj instanceof Marked) {
                                v = (V) ((Marked) obj).f22284a;
                            }
                            if (v != null) {
                                this.f22248h = v;
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                }
            }

            @NotNull
            /* renamed from: b */
            public Void m764b() {
                ConcurrentWeakMapKt.m760c();
                throw null;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f22246f < Core.this.f22244e;
            }

            @Override // java.util.Iterator
            public E next() {
                if (this.f22246f < Core.this.f22244e) {
                    Function2<K, V, E> function2 = this.f22249i;
                    K k = this.f22247g;
                    if (k != null) {
                        V v = this.f22248h;
                        if (v != null) {
                            E o = function2.mo422o(k, v);
                            m765a();
                            return o;
                        }
                        Intrinsics.m1814u(FirebaseAnalytics.Param.VALUE);
                        throw null;
                    }
                    Intrinsics.m1814u("key");
                    throw null;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public /* bridge */ /* synthetic */ void remove() {
                m764b();
                throw null;
            }
        }

        public Core(int i) {
            this.f22244e = i;
            this.f22240a = Integer.numberOfLeadingZeros(i) + 1;
            this.f22241b = (this.f22244e * 2) / 3;
            this.f22242c = new AtomicReferenceArray(this.f22244e);
            this.f22243d = new AtomicReferenceArray(this.f22244e);
        }

        /* renamed from: d */
        private final int m771d(int i) {
            return (i * (-1640531527)) >>> this.f22240a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: g */
        public static /* synthetic */ Object m768g(Core core, Object obj, Object obj2, HashedWeakRef hashedWeakRef, int i, Object obj3) {
            if ((i & 4) != 0) {
                hashedWeakRef = null;
            }
            return core.m769f(obj, obj2, hashedWeakRef);
        }

        /* renamed from: i */
        private final void m766i(int i) {
            Object obj;
            do {
                obj = this.f22243d.get(i);
                if (obj == null || (obj instanceof Marked)) {
                    return;
                }
            } while (!this.f22243d.compareAndSet(i, obj, null));
            ConcurrentWeakMap.this.m778j();
        }

        /* renamed from: b */
        public final void m773b(@NotNull HashedWeakRef<?> hashedWeakRef) {
            int d = m771d(hashedWeakRef.f22283a);
            while (true) {
                HashedWeakRef<?> hashedWeakRef2 = (HashedWeakRef) this.f22242c.get(d);
                if (hashedWeakRef2 == null) {
                    return;
                }
                if (hashedWeakRef2 == hashedWeakRef) {
                    m766i(d);
                    return;
                }
                int i = d;
                if (d == 0) {
                    i = this.f22244e;
                }
                d = i - 1;
            }
        }

        @Nullable
        /* renamed from: c */
        public final V m772c(@NotNull K k) {
            int d = m771d(k.hashCode());
            while (true) {
                HashedWeakRef hashedWeakRef = (HashedWeakRef) this.f22242c.get(d);
                if (hashedWeakRef == null) {
                    return null;
                }
                T t = hashedWeakRef.get();
                if (Intrinsics.m1834a(k, t)) {
                    Object obj = this.f22243d.get(d);
                    V v = (V) obj;
                    if (obj instanceof Marked) {
                        v = (V) ((Marked) obj).f22284a;
                    }
                    return v;
                }
                if (t == 0) {
                    m766i(d);
                }
                int i = d;
                if (d == 0) {
                    i = this.f22244e;
                }
                d = i - 1;
            }
        }

        @NotNull
        /* renamed from: e */
        public final <E> Iterator<E> m770e(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
            return new KeyValueIterator(function2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x00a3, code lost:
            r0 = r6.f22243d.get(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00b1, code lost:
            if ((r0 instanceof kotlinx.coroutines.debug.internal.Marked) == false) goto L_0x00b8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00b4, code lost:
            r0 = kotlinx.coroutines.debug.internal.ConcurrentWeakMapKt.f22257a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00b7, code lost:
            return r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00c3, code lost:
            if (r6.f22243d.compareAndSet(r10, r0, r8) == false) goto L_0x00a3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00c7, code lost:
            return r0;
         */
        @org.jetbrains.annotations.Nullable
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m769f(@org.jetbrains.annotations.NotNull K r7, @org.jetbrains.annotations.Nullable V r8, @org.jetbrains.annotations.Nullable kotlinx.coroutines.debug.internal.HashedWeakRef<K> r9) {
            /*
                Method dump skipped, instructions count: 235
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.ConcurrentWeakMap.Core.m769f(java.lang.Object, java.lang.Object, kotlinx.coroutines.debug.internal.HashedWeakRef):java.lang.Object");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        /* renamed from: h */
        public final ConcurrentWeakMap<K, V>.Core m767h() {
            int b;
            Object obj;
            Symbol symbol;
            Marked d;
            while (true) {
                b = RangesKt___RangesKt.m1713b(ConcurrentWeakMap.this.size(), 4);
                ConcurrentWeakMap<K, V>.Core core = (ConcurrentWeakMap<K, V>.Core) new Core(Integer.highestOneBit(b) * 4);
                int i = this.f22244e;
                for (int i2 = 0; i2 < i; i2++) {
                    HashedWeakRef hashedWeakRef = (HashedWeakRef) this.f22242c.get(i2);
                    Object obj2 = hashedWeakRef != null ? hashedWeakRef.get() : null;
                    if (hashedWeakRef != null && obj2 == null) {
                        m766i(i2);
                    }
                    while (true) {
                        obj = this.f22243d.get(i2);
                        if (obj instanceof Marked) {
                            obj = ((Marked) obj).f22284a;
                            break;
                        }
                        AtomicReferenceArray atomicReferenceArray = this.f22243d;
                        d = ConcurrentWeakMapKt.m759d(obj);
                        if (atomicReferenceArray.compareAndSet(i2, obj, d)) {
                            break;
                        }
                    }
                    if (!(obj2 == null || obj == null)) {
                        Object f = core.m769f(obj2, obj, hashedWeakRef);
                        symbol = ConcurrentWeakMapKt.f22257a;
                        if (f == symbol) {
                            break;
                        }
                        boolean z = f == null;
                        if (_Assertions.f20450a && !z) {
                            throw new AssertionError("Assertion failed");
                        }
                    }
                }
                return core;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n��\n\u0002\b\r\b\u0002\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u00032\u00020\u0004B\u0017\u0012\u0006\u0010\b\u001a\u00028\u0002\u0012\u0006\u0010\f\u001a\u00028\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0006\u001a\u00028\u00032\u0006\u0010\u0005\u001a\u00028\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00028\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u00028\u00038\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000b¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;", "K", "V", "java/util/Map$Entry", "kotlin/jvm/internal/markers/KMutableMap$Entry", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "key", "Ljava/lang/Object;", "getKey", "()Ljava/lang/Object;", FirebaseAnalytics.Param.VALUE, "getValue", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry.class */
    public static final class Entry<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* renamed from: f */
        private final K f22251f;

        /* renamed from: g */
        private final V f22252g;

        public Entry(K k, V v) {
            this.f22251f = k;
            this.f22252g = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f22251f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f22252g;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            ConcurrentWeakMapKt.m760c();
            throw null;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0082\u0004\u0018��*\u0004\b\u0002\u0010\u00012\u00020\u0002B!\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\b\u0010\tR(\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;", "E", "Lkotlin/collections/AbstractMutableSet;", "element", "", "add", "(Ljava/lang/Object;)Z", "", "iterator", "()Ljava/util/Iterator;", "Lkotlin/Function2;", "factory", "Lkotlin/Function2;", "", "getSize", "()I", "size", "<init>", "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet.class */
    private final class KeyValueSet<E> extends AbstractMutableSet<E> {

        /* renamed from: f */
        private final Function2<K, V, E> f22253f;

        /* JADX WARN: Multi-variable type inference failed */
        public KeyValueSet(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
            this.f22253f = function2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(E e) {
            ConcurrentWeakMapKt.m760c();
            throw null;
        }

        @Override // kotlin.collections.AbstractMutableSet
        /* renamed from: c */
        public int mo763c() {
            return ConcurrentWeakMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        @NotNull
        public Iterator<E> iterator() {
            return ((Core) ConcurrentWeakMap.this.core).m770e(this.f22253f);
        }
    }

    public ConcurrentWeakMap() {
        this(false, 1, null);
    }

    public ConcurrentWeakMap(boolean z) {
        this._size = 0;
        this.core = new Core(16);
        this.f22238f = z ? new ReferenceQueue<>() : null;
    }

    public /* synthetic */ ConcurrentWeakMap(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }

    /* renamed from: i */
    private final void m779i(HashedWeakRef<?> hashedWeakRef) {
        ((Core) this.core).m773b(hashedWeakRef);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final void m778j() {
        f22237g.decrementAndGet(this);
    }

    /* renamed from: k */
    private final V m777k(K k, V v) {
        V v2;
        Symbol symbol;
        synchronized (this) {
            ConcurrentWeakMap<K, V>.Core core = (Core) this.core;
            while (true) {
                v2 = (V) Core.m768g(core, k, v, null, 4, null);
                symbol = ConcurrentWeakMapKt.f22257a;
                if (v2 == symbol) {
                    core = core.m767h();
                    this.core = core;
                }
            }
        }
        return v2;
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    /* renamed from: a */
    public Set<Map.Entry<K, V>> mo784a() {
        return new KeyValueSet(ConcurrentWeakMap$entries$1.f22255f);
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    /* renamed from: b */
    public Set<K> mo783b() {
        return new KeyValueSet(ConcurrentWeakMap$keys$1.f22256f);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (K k : keySet()) {
            remove(k);
        }
    }

    @Override // kotlin.collections.AbstractMutableMap
    /* renamed from: e */
    public int mo782e() {
        return this._size;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(@NotNull Object obj) {
        if (obj != null) {
            return (V) ((Core) this.core).m772c(obj);
        }
        return null;
    }

    /* renamed from: l */
    public final void m776l() {
        if (this.f22238f != null) {
            while (true) {
                try {
                    Reference<? extends K> remove = this.f22238f.remove();
                    if (remove == null) {
                        break;
                    }
                    m779i((HashedWeakRef) remove);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
        }
        throw new IllegalStateException("Must be created with weakRefQueue = true".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V put(@NotNull K k, @NotNull V v) {
        Symbol symbol;
        Object g = Core.m768g((Core) this.core, k, v, null, 4, null);
        V v2 = g;
        symbol = ConcurrentWeakMapKt.f22257a;
        if (g == symbol) {
            v2 = m777k(k, v);
        }
        if (v2 == null) {
            f22237g.incrementAndGet(this);
        }
        return v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V remove(@NotNull Object obj) {
        Symbol symbol;
        if (obj == 0) {
            return null;
        }
        Object g = Core.m768g((Core) this.core, obj, null, null, 4, null);
        V v = g;
        symbol = ConcurrentWeakMapKt.f22257a;
        if (g == symbol) {
            v = m777k(obj, null);
        }
        if (v != null) {
            f22237g.decrementAndGet(this);
        }
        return v;
    }
}
