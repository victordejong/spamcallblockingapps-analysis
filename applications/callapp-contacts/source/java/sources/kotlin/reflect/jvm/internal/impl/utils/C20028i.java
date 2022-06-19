package kotlin.reflect.jvm.internal.impl.utils;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import kotlin.C20128v;
import kotlin.jvm.internal.C18501ah;
import kotlin.jvm.internal.C18508b;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p534a.AbstractC18484d;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18273i;
/* renamed from: kotlin.reflect.jvm.internal.impl.utils.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/i.class */
public final class C20028i<T> extends AbstractSet<T> {

    /* renamed from: a */
    public static final C20030b f66384a = new C20030b(null);

    /* renamed from: b */
    private Object f66385b;

    /* renamed from: c */
    private int f66386c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.i$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/i$a.class */
    static final class C20029a<T> implements Iterator<T>, AbstractC18484d {

        /* renamed from: a */
        private final Iterator<T> f66387a;

        public C20029a(T[] array) {
            C18524p.m3840d(array, "array");
            this.f66387a = C18508b.m3860a(array);
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f66387a.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            return this.f66387a.next();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.i$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/i$b.class */
    public static final class C20030b {
        private C20030b() {
        }

        public /* synthetic */ C20030b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static <T> C20028i<T> m1187a() {
            return new C20028i<>(null);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.i$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/i$c.class */
    static final class C20031c<T> implements Iterator<T>, AbstractC18484d {

        /* renamed from: a */
        private final T f66388a;

        /* renamed from: b */
        private boolean f66389b = true;

        public C20031c(T t) {
            this.f66388a = t;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f66389b;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f66389b) {
                this.f66389b = false;
                return this.f66388a;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private C20028i() {
    }

    public /* synthetic */ C20028i(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: a */
    public static final <T> C20028i<T> m1188a() {
        return C20030b.m1187a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(T t) {
        Object[] objArr;
        if (size() == 0) {
            this.f66385b = t;
        } else if (size() == 1) {
            if (C18524p.m3850a(this.f66385b, t)) {
                return false;
            }
            this.f66385b = new Object[]{this.f66385b, t};
        } else if (size() < 5) {
            Object obj = this.f66385b;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            Object[] objArr2 = (Object[]) obj;
            if (C18273i.m4201a(objArr2, t)) {
                return false;
            }
            if (size() == 4) {
                int length = objArr2.length;
                Object[] elements = new Object[length];
                System.arraycopy(objArr2, 0, elements, 0, objArr2.length);
                C18524p.m3840d(elements, "elements");
                LinkedHashSet linkedHashSet = (LinkedHashSet) C18273i.m4191b(elements, new LinkedHashSet(C18247ai.m4260a(length)));
                linkedHashSet.add(t);
                C20128v c20128v = C20128v.f66529a;
                objArr = linkedHashSet;
            } else {
                Object[] copyOf = Arrays.copyOf(objArr2, size() + 1);
                C18524p.m3843b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                copyOf[copyOf.length - 1] = t;
                C20128v c20128v2 = C20128v.f66529a;
                objArr = copyOf;
            }
            this.f66385b = objArr;
        } else {
            Object obj2 = this.f66385b;
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
            if (!C18501ah.m3871d(obj2).add(t)) {
                return false;
            }
        }
        this.f66386c = size() + 1;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f66385b = null;
        this.f66386c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (size() == 0) {
            return false;
        }
        if (size() == 1) {
            return C18524p.m3850a(this.f66385b, obj);
        }
        if (size() < 5) {
            Object obj2 = this.f66385b;
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return C18273i.m4201a((Object[]) obj2, obj);
        }
        Object obj3 = this.f66385b;
        Objects.requireNonNull(obj3, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>");
        return ((Set) obj3).contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<T> iterator() {
        if (size() == 0) {
            return Collections.emptySet().iterator();
        }
        if (size() == 1) {
            return new C20031c(this.f66385b);
        }
        if (size() < 5) {
            Object obj = this.f66385b;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return new C20029a((Object[]) obj);
        }
        Object obj2 = this.f66385b;
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
        return C18501ah.m3871d(obj2).iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return this.f66386c;
    }
}
