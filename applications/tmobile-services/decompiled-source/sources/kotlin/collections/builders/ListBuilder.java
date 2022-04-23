package kotlin.collections.builders;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010��\n\u0002\b\u000b\n\u0002\u0010)\n\u0002\b\u0003\n\u0002\u0010+\n\u0002\b\u0012\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0011\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001^B\t\b\u0016¢\u0006\u0004\b[\u0010\u001cB\u0011\b\u0016\u0012\u0006\u0010\\\u001a\u00020\n¢\u0006\u0004\b[\u0010#BO\b\u0002\u0012\f\u0010O\u001a\b\u0012\u0004\u0012\u00028��0N\u0012\u0006\u0010W\u001a\u00020\n\u0012\u0006\u0010U\u001a\u00020\n\u0012\u0006\u0010S\u001a\u00020\u0007\u0012\u000e\u0010Q\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010��\u0012\u000e\u0010X\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010��¢\u0006\u0004\b[\u0010]J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028��H\u0016¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\b\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00028��H\u0016¢\u0006\u0004\b\b\u0010\rJ%\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0010\u001a\u00020\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0012J-\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000e2\u0006\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00028��H\u0002¢\u0006\u0004\b\u0017\u0010\rJ\u0013\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028��0\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u001b\u0010\u001f\u001a\u00020\u00072\n\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\f2\u0006\u0010!\u001a\u00020\nH\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b$\u0010#J\u001a\u0010&\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010%H\u0096\u0002¢\u0006\u0004\b&\u0010\tJ\u0018\u0010'\u001a\u00028��2\u0006\u0010\u000b\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\nH\u0016¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00028��H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010-\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0016¢\u0006\u0004\b/\u00100J\u0016\u00102\u001a\b\u0012\u0004\u0012\u00028��01H\u0096\u0002¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00028��H\u0016¢\u0006\u0004\b4\u0010,J\u0015\u00106\u001a\b\u0012\u0004\u0012\u00028��05H\u0016¢\u0006\u0004\b6\u00107J\u001d\u00106\u001a\b\u0012\u0004\u0012\u00028��052\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b6\u00108J\u0017\u00109\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028��H\u0016¢\u0006\u0004\b9\u0010\tJ\u001d\u0010:\u001a\u00020\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000eH\u0016¢\u0006\u0004\b:\u0010\u0012J\u0017\u0010;\u001a\u00028��2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b;\u0010(J\u0017\u0010<\u001a\u00028��2\u0006\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b<\u0010(J\u001f\u0010?\u001a\u00020\f2\u0006\u0010=\u001a\u00020\n2\u0006\u0010>\u001a\u00020\nH\u0002¢\u0006\u0004\b?\u0010.J\u001d\u0010@\u001a\u00020\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000eH\u0016¢\u0006\u0004\b@\u0010\u0012J5\u0010B\u001a\u00020\n2\u0006\u0010=\u001a\u00020\n2\u0006\u0010>\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000e2\u0006\u0010A\u001a\u00020\u0007H\u0002¢\u0006\u0004\bB\u0010CJ \u0010D\u001a\u00028��2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00028��H\u0096\u0002¢\u0006\u0004\bD\u0010EJ%\u0010I\u001a\b\u0012\u0004\u0012\u00028��0H2\u0006\u0010F\u001a\u00020\n2\u0006\u0010G\u001a\u00020\nH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bL\u0010MR\u001c\u0010O\u001a\b\u0012\u0004\u0012\u00028��0N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u001e\u0010Q\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010��8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010S\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010U\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010W\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010VR\u001e\u0010X\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010��8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bX\u0010RR\u0016\u0010Z\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bY\u0010*¨\u0006_"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", "E", "Ljava/util/List;", "Ljava/util/RandomAccess;", "Lkotlin/jvm/internal/markers/KMutableList;", "Lkotlin/collections/AbstractMutableList;", "element", "", "add", "(Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.INDEX, "", "(ILjava/lang/Object;)V", "", "elements", "addAll", "(ILjava/util/Collection;)Z", "(Ljava/util/Collection;)Z", "i", "n", "addAllInternal", "(ILjava/util/Collection;I)V", "addAtInternal", "", "build", "()Ljava/util/List;", "checkIsMutable", "()V", "clear", "other", "contentEquals", "(Ljava/util/List;)Z", "minCapacity", "ensureCapacity", "(I)V", "ensureExtraCapacity", "", "equals", "get", "(I)Ljava/lang/Object;", "hashCode", "()I", "indexOf", "(Ljava/lang/Object;)I", "insertAtInternal", "(II)V", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "lastIndexOf", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "remove", "removeAll", "removeAt", "removeAtInternal", "rangeOffset", "rangeLength", "removeRangeInternal", "retainAll", "retain", "retainOrRemoveAllInternal", "(IILjava/util/Collection;Z)I", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "fromIndex", "toIndex", "", "subList", "(II)Ljava/util/List;", "", "toString", "()Ljava/lang/String;", "", "array", "[Ljava/lang/Object;", "backing", "Lkotlin/collections/builders/ListBuilder;", "isReadOnly", "Z", Name.LENGTH, "I", "offset", "root", "getSize", "size", "<init>", "initialCapacity", "([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V", "Itr", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/ListBuilder.class */
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, KMutableList {

    /* renamed from: f */
    private E[] f20563f;

    /* renamed from: g */
    private int f20564g;

    /* renamed from: h */
    private int f20565h;

    /* renamed from: i */
    private boolean f20566i;

    /* renamed from: j */
    private final ListBuilder<E> f20567j;

    /* renamed from: k */
    private final ListBuilder<E> f20568k;

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\u00020\u00022\u00020\u0003B\u001f\b\u0016\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00010\u0019\u0012\u0006\u0010\u0016\u001a\u00020\u000e¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u0010\u0010\f\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0011\u0010\rJ\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0015\u0010\u0007R\u0016\u0010\u0016\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00010\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Itr;", "E", "Ljava/util/ListIterator;", "Lkotlin/jvm/internal/markers/KMutableListIterator;", "element", "", "add", "(Ljava/lang/Object;)V", "", "hasNext", "()Z", "hasPrevious", "next", "()Ljava/lang/Object;", "", "nextIndex", "()I", "previous", "previousIndex", "remove", "()V", "set", FirebaseAnalytics.Param.INDEX, "I", "lastIndex", "Lkotlin/collections/builders/ListBuilder;", "list", "Lkotlin/collections/builders/ListBuilder;", "<init>", "(Lkotlin/collections/builders/ListBuilder;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/ListBuilder$Itr.class */
    private static final class Itr<E> implements ListIterator<E>, KMutableListIterator {

        /* renamed from: f */
        private final ListBuilder<E> f20569f;

        /* renamed from: g */
        private int f20570g;

        /* renamed from: h */
        private int f20571h = -1;

        public Itr(@NotNull ListBuilder<E> list, int i) {
            Intrinsics.m1830e(list, "list");
            this.f20569f = list;
            this.f20570g = i;
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            ListBuilder<E> listBuilder = this.f20569f;
            int i = this.f20570g;
            this.f20570g = i + 1;
            listBuilder.add(i, e);
            this.f20571h = -1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f20570g < ((ListBuilder) this.f20569f).f20565h;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f20570g > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            if (this.f20570g < ((ListBuilder) this.f20569f).f20565h) {
                int i = this.f20570g;
                this.f20570g = i + 1;
                this.f20571h = i;
                return (E) ((ListBuilder) this.f20569f).f20563f[((ListBuilder) this.f20569f).f20564g + this.f20571h];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f20570g;
        }

        @Override // java.util.ListIterator
        public E previous() {
            int i = this.f20570g;
            if (i > 0) {
                int i2 = i - 1;
                this.f20570g = i2;
                this.f20571h = i2;
                return (E) ((ListBuilder) this.f20569f).f20563f[((ListBuilder) this.f20569f).f20564g + this.f20571h];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f20570g - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            if (this.f20571h != -1) {
                this.f20569f.remove(this.f20571h);
                this.f20570g = this.f20571h;
                this.f20571h = -1;
                return;
            }
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            if (this.f20571h != -1) {
                this.f20569f.set(this.f20571h, e);
                return;
            }
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
        }
    }

    public ListBuilder() {
        this(10);
    }

    public ListBuilder(int i) {
        this(ListBuilderKt.m2032d(i), 0, 0, false, null, null);
    }

    private ListBuilder(E[] eArr, int i, int i2, boolean z, ListBuilder<E> listBuilder, ListBuilder<E> listBuilder2) {
        this.f20563f = eArr;
        this.f20564g = i;
        this.f20565h = i2;
        this.f20566i = z;
        this.f20567j = listBuilder;
        this.f20568k = listBuilder2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: j */
    private final void m2045j(int i, Collection<? extends E> collection, int i2) {
        ListBuilder<E> listBuilder = this.f20567j;
        if (listBuilder != null) {
            listBuilder.m2045j(i, collection, i2);
            this.f20563f = this.f20567j.f20563f;
            this.f20565h += i2;
            return;
        }
        m2039t(i, i2);
        Iterator<? extends E> it = collection.iterator();
        for (int i3 = 0; i3 < i2; i3++) {
            this.f20563f[i + i3] = it.next();
        }
    }

    /* renamed from: k */
    private final void m2044k(int i, E e) {
        ListBuilder<E> listBuilder = this.f20567j;
        if (listBuilder != null) {
            listBuilder.m2044k(i, e);
            this.f20563f = this.f20567j.f20563f;
            this.f20565h++;
            return;
        }
        m2039t(i, 1);
        this.f20563f[i] = e;
    }

    /* renamed from: n */
    private final void m2043n() {
        ListBuilder<E> listBuilder;
        if (this.f20566i || ((listBuilder = this.f20568k) != null && listBuilder.f20566i)) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: p */
    private final boolean m2042p(List<?> list) {
        boolean h;
        h = ListBuilderKt.m2028h(this.f20563f, this.f20564g, this.f20565h, list);
        return h;
    }

    /* renamed from: r */
    private final void m2041r(int i) {
        if (this.f20567j == null) {
            E[] eArr = this.f20563f;
            if (i > eArr.length) {
                this.f20563f = (E[]) ListBuilderKt.m2031e(this.f20563f, ArrayDeque.f20473j.m2339a(eArr.length, i));
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: s */
    private final void m2040s(int i) {
        m2041r(this.f20565h + i);
    }

    /* renamed from: t */
    private final void m2039t(int i, int i2) {
        m2040s(i2);
        E[] eArr = this.f20563f;
        ArraysKt___ArraysJvmKt.m2302d(eArr, eArr, i + i2, i, this.f20564g + this.f20565h);
        this.f20565h += i2;
    }

    /* renamed from: u */
    private final E m2038u(int i) {
        ListBuilder<E> listBuilder = this.f20567j;
        if (listBuilder != null) {
            E u = listBuilder.m2038u(i);
            this.f20565h--;
            return u;
        }
        E[] eArr = this.f20563f;
        E e = eArr[i];
        ArraysKt___ArraysJvmKt.m2302d(eArr, eArr, i, i + 1, this.f20564g + this.f20565h);
        ListBuilderKt.m2030f(this.f20563f, (this.f20564g + this.f20565h) - 1);
        this.f20565h--;
        return e;
    }

    /* renamed from: v */
    private final void m2037v(int i, int i2) {
        ListBuilder<E> listBuilder = this.f20567j;
        if (listBuilder != null) {
            listBuilder.m2037v(i, i2);
        } else {
            E[] eArr = this.f20563f;
            ArraysKt___ArraysJvmKt.m2302d(eArr, eArr, i, i + i2, this.f20565h);
            E[] eArr2 = this.f20563f;
            int i3 = this.f20565h;
            ListBuilderKt.m2029g(eArr2, i3 - i2, i3);
        }
        this.f20565h -= i2;
    }

    /* renamed from: w */
    private final int m2036w(int i, int i2, Collection<? extends E> collection, boolean z) {
        ListBuilder<E> listBuilder = this.f20567j;
        if (listBuilder != null) {
            int w = listBuilder.m2036w(i, i2, collection, z);
            this.f20565h -= w;
            return w;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i + i3;
            if (collection.contains(this.f20563f[i5]) == z) {
                E[] eArr = this.f20563f;
                i3++;
                eArr[i4 + i] = eArr[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        E[] eArr2 = this.f20563f;
        ArraysKt___ArraysJvmKt.m2302d(eArr2, eArr2, i + i4, i2 + i, this.f20565h);
        E[] eArr3 = this.f20563f;
        int i7 = this.f20565h;
        ListBuilderKt.m2029g(eArr3, i7 - i6, i7);
        this.f20565h -= i6;
        return i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        m2043n();
        AbstractList.f20455f.m2372b(i, this.f20565h);
        m2044k(this.f20564g + i, e);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m2043n();
        m2044k(this.f20564g + this.f20565h, e);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, @NotNull Collection<? extends E> elements) {
        Intrinsics.m1830e(elements, "elements");
        m2043n();
        AbstractList.f20455f.m2372b(i, this.f20565h);
        int size = elements.size();
        m2045j(this.f20564g + i, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.m1830e(elements, "elements");
        m2043n();
        int size = elements.size();
        m2045j(this.f20564g + this.f20565h, elements, size);
        return size > 0;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* renamed from: c */
    public int mo2050c() {
        return this.f20565h;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m2043n();
        m2037v(this.f20564g, this.f20565h);
    }

    @Override // kotlin.collections.AbstractMutableList
    /* renamed from: e */
    public E mo2049e(int i) {
        m2043n();
        AbstractList.f20455f.m2373a(i, this.f20565h);
        return m2038u(this.f20564g + i);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(@Nullable Object obj) {
        return obj == this || ((obj instanceof List) && m2042p((List) obj));
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        AbstractList.f20455f.m2373a(i, this.f20565h);
        return this.f20563f[this.f20564g + i];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i;
        i = ListBuilderKt.m2027i(this.f20563f, this.f20564g, this.f20565h);
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        for (int i = 0; i < this.f20565h; i++) {
            if (Intrinsics.m1834a(this.f20563f[this.f20564g + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.f20565h == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return new Itr(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        for (int i = this.f20565h - 1; i >= 0; i--) {
            if (Intrinsics.m1834a(this.f20563f[this.f20564g + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return new Itr(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i) {
        AbstractList.f20455f.m2372b(i, this.f20565h);
        return new Itr(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m2043n();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            remove(indexOf);
        }
        return indexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.m1830e(elements, "elements");
        m2043n();
        boolean z = false;
        if (m2036w(this.f20564g, this.f20565h, elements, false) > 0) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.m1830e(elements, "elements");
        m2043n();
        boolean z = true;
        if (m2036w(this.f20564g, this.f20565h, elements, true) <= 0) {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m2043n();
        AbstractList.f20455f.m2373a(i, this.f20565h);
        E[] eArr = this.f20563f;
        int i2 = this.f20564g;
        E e2 = eArr[i2 + i];
        eArr[i2 + i] = e;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public List<E> subList(int i, int i2) {
        AbstractList.f20455f.m2371c(i, i2, this.f20565h);
        E[] eArr = this.f20563f;
        int i3 = this.f20564g;
        boolean z = this.f20566i;
        ListBuilder<E> listBuilder = this.f20568k;
        if (listBuilder == null) {
            listBuilder = this;
        }
        return new ListBuilder(eArr, i3 + i, i2 - i, z, this, listBuilder);
    }

    @Override // java.util.AbstractCollection
    @NotNull
    public String toString() {
        String j;
        j = ListBuilderKt.m2026j(this.f20563f, this.f20564g, this.f20565h);
        return j;
    }
}
