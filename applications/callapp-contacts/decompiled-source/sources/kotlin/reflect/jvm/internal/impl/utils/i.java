package kotlin.reflect.jvm.internal.impl.utils;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import kotlin.a.ai;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a.d;
import kotlin.jvm.internal.ah;
import kotlin.jvm.internal.p;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/i.class */
public final class i<T> extends AbstractSet<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final b f38529a = new b(null);

    /* renamed from: b  reason: collision with root package name */
    private Object f38530b;

    /* renamed from: c  reason: collision with root package name */
    private int f38531c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/i$a.class */
    static final class a<T> implements Iterator<T>, d {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<T> f38532a;

        public a(T[] array) {
            p.d(array, "array");
            this.f38532a = kotlin.jvm.internal.b.a(array);
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38532a.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            return this.f38532a.next();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/i$b.class */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static <T> i<T> a() {
            return new i<>(null);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/i$c.class */
    static final class c<T> implements Iterator<T>, d {

        /* renamed from: a  reason: collision with root package name */
        private final T f38533a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f38534b = true;

        public c(T t) {
            this.f38533a = t;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38534b;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f38534b) {
                this.f38534b = false;
                return this.f38533a;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private i() {
    }

    public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final <T> i<T> a() {
        return b.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(T t) {
        Object[] objArr;
        if (size() == 0) {
            this.f38530b = t;
        } else if (size() == 1) {
            if (p.a(this.f38530b, t)) {
                return false;
            }
            this.f38530b = new Object[]{this.f38530b, t};
        } else if (size() < 5) {
            Object obj = this.f38530b;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            Object[] objArr2 = (Object[]) obj;
            if (kotlin.a.i.a(objArr2, t)) {
                return false;
            }
            if (size() == 4) {
                int length = objArr2.length;
                Object[] elements = new Object[length];
                System.arraycopy(objArr2, 0, elements, 0, objArr2.length);
                p.d(elements, "elements");
                LinkedHashSet linkedHashSet = (LinkedHashSet) kotlin.a.i.b(elements, new LinkedHashSet(ai.a(length)));
                linkedHashSet.add(t);
                v vVar = v.f38654a;
                objArr = linkedHashSet;
            } else {
                Object[] copyOf = Arrays.copyOf(objArr2, size() + 1);
                p.b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                copyOf[copyOf.length - 1] = t;
                v vVar2 = v.f38654a;
                objArr = copyOf;
            }
            this.f38530b = objArr;
        } else {
            Object obj2 = this.f38530b;
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
            if (!ah.d(obj2).add(t)) {
                return false;
            }
        }
        this.f38531c = size() + 1;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f38530b = null;
        this.f38531c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (size() == 0) {
            return false;
        }
        if (size() == 1) {
            return p.a(this.f38530b, obj);
        }
        if (size() < 5) {
            Object obj2 = this.f38530b;
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return kotlin.a.i.a((Object[]) obj2, obj);
        }
        Object obj3 = this.f38530b;
        Objects.requireNonNull(obj3, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>");
        return ((Set) obj3).contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<T> iterator() {
        if (size() == 0) {
            return Collections.emptySet().iterator();
        }
        if (size() == 1) {
            return new c(this.f38530b);
        }
        if (size() < 5) {
            Object obj = this.f38530b;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return new a((Object[]) obj);
        }
        Object obj2 = this.f38530b;
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
        return ah.d(obj2).iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return this.f38531c;
    }
}
