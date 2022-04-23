package kotlin.collections;

import com.google.android.gms.common.api.Api;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b!\b\u0007\u0018�� R*\u0004\b��\u0010\u00012\u00020\u0002:\u0001RB\u0011\b\u0016\u0012\u0006\u0010O\u001a\u00020\u0007¢\u0006\u0004\bP\u0010\u001bB\t\b\u0016¢\u0006\u0004\bP\u0010\u0014B\u0017\b\u0016\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000b¢\u0006\u0004\bP\u0010QJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u0005\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00028��H\u0016¢\u0006\u0004\b\u0005\u0010\nJ%\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\r\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00028��¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00028��¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0015\u0010\u0006J%\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000bH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001f\u0010\u001bJ$\u0010\"\u001a\u00020\u00042\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00040 H\u0082\b¢\u0006\u0004\b\"\u0010#J\r\u0010$\u001a\u00028��¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u0004\u0018\u00018��¢\u0006\u0004\b&\u0010%J\u0018\u0010'\u001a\u00028��2\u0006\u0010\b\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b)\u0010\u001dJ\u0017\u0010*\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00028��H\u0016¢\u0006\u0004\b*\u0010+J\u0018\u0010,\u001a\u00028��2\u0006\u0010\u0016\u001a\u00020\u0007H\u0083\b¢\u0006\u0004\b,\u0010(J\u0018\u0010\u0016\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0083\b¢\u0006\u0004\b\u0016\u0010\u001dJO\u00106\u001a\u00020\t2>\u00103\u001a:\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b.\u0012\b\b/\u0012\u0004\b\b(0\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010201¢\u0006\f\b.\u0012\b\b/\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\t0-H��¢\u0006\u0004\b4\u00105J\u000f\u00107\u001a\u00020\u0004H\u0016¢\u0006\u0004\b7\u00108J\r\u00109\u001a\u00028��¢\u0006\u0004\b9\u0010%J\u0017\u0010:\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00028��H\u0016¢\u0006\u0004\b:\u0010+J\u000f\u0010;\u001a\u0004\u0018\u00018��¢\u0006\u0004\b;\u0010%J\u0017\u0010<\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b<\u0010\u001dJ\u0017\u0010=\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b=\u0010\u001dJ\u0017\u0010>\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��H\u0016¢\u0006\u0004\b>\u0010\u0006J\u001d\u0010?\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000bH\u0016¢\u0006\u0004\b?\u0010\u000fJ\u0017\u0010@\u001a\u00028��2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b@\u0010(J\r\u0010A\u001a\u00028��¢\u0006\u0004\bA\u0010%J\u000f\u0010B\u001a\u0004\u0018\u00018��¢\u0006\u0004\bB\u0010%J\r\u0010C\u001a\u00028��¢\u0006\u0004\bC\u0010%J\u000f\u0010D\u001a\u0004\u0018\u00018��¢\u0006\u0004\bD\u0010%J\u001d\u0010E\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000bH\u0016¢\u0006\u0004\bE\u0010\u000fJ \u0010F\u001a\u00028��2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00028��H\u0096\u0002¢\u0006\u0004\bF\u0010GR\u001e\u0010H\u001a\n\u0012\u0006\u0012\u0004\u0018\u000102018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u00100\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010JR$\u0010L\u001a\u00020\u00072\u0006\u0010K\u001a\u00020\u00078\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bL\u0010J\u001a\u0004\bM\u0010N¨\u0006S"}, d2 = {"Lkotlin/collections/ArrayDeque;", "E", "Lkotlin/collections/AbstractMutableList;", "element", "", "add", "(Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.INDEX, "", "(ILjava/lang/Object;)V", "", "elements", "addAll", "(ILjava/util/Collection;)Z", "(Ljava/util/Collection;)Z", "addFirst", "(Ljava/lang/Object;)V", "addLast", "clear", "()V", "contains", "internalIndex", "copyCollectionElements", "(ILjava/util/Collection;)V", "newCapacity", "copyElements", "(I)V", "decremented", "(I)I", "minCapacity", "ensureCapacity", "Lkotlin/Function1;", "predicate", "filterInPlace", "(Lkotlin/Function1;)Z", "first", "()Ljava/lang/Object;", "firstOrNull", "get", "(I)Ljava/lang/Object;", "incremented", "indexOf", "(Ljava/lang/Object;)I", "internalGet", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "head", "", "", "structure", "internalStructure$kotlin_stdlib", "(Lkotlin/Function2;)V", "internalStructure", "isEmpty", "()Z", "last", "lastIndexOf", "lastOrNull", "negativeMod", "positiveMod", "remove", "removeAll", "removeAt", "removeFirst", "removeFirstOrNull", "removeLast", "removeLastOrNull", "retainAll", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "elementData", "[Ljava/lang/Object;", "I", "<set-?>", "size", "getSize", "()I", "initialCapacity", "<init>", "(Ljava/util/Collection;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@WasExperimental
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ArrayDeque.class */
public final class ArrayDeque<E> extends AbstractMutableList<E> {

    /* renamed from: f */
    private int f20474f;

    /* renamed from: g */
    private Object[] f20475g = f20472i;

    /* renamed from: h */
    private int f20476h;

    /* renamed from: j */
    public static final Companion f20473j = new Companion(null);

    /* renamed from: i */
    private static final Object[] f20472i = new Object[0];

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0006\b\u0080\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H��¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0007\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\b¨\u0006\u0010"}, d2 = {"Lkotlin/collections/ArrayDeque$Companion;", "", "oldCapacity", "minCapacity", "newCapacity$kotlin_stdlib", "(II)I", "newCapacity", "defaultMinCapacity", "I", "", "", "emptyElementData", "[Ljava/lang/Object;", "maxArraySize", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/collections/ArrayDeque$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final int m2339a(int i, int i2) {
            int i3 = i + (i >> 1);
            int i4 = i3;
            if (i3 - i2 < 0) {
                i4 = i2;
            }
            int i5 = i4;
            if (i4 - 2147483639 > 0) {
                i5 = i2 > 2147483639 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : 2147483639;
            }
            return i5;
        }
    }

    /* renamed from: p */
    private final void m2346p(int i, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.f20475g.length;
        while (i < length && it.hasNext()) {
            this.f20475g[i] = it.next();
            i++;
        }
        int i2 = this.f20474f;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.f20475g[i3] = it.next();
        }
        this.f20476h = size() + collection.size();
    }

    /* renamed from: r */
    private final void m2345r(int i) {
        Object[] objArr = new Object[i];
        Object[] objArr2 = this.f20475g;
        ArraysKt___ArraysJvmKt.m2302d(objArr2, objArr, 0, this.f20474f, objArr2.length);
        Object[] objArr3 = this.f20475g;
        int length = objArr3.length;
        int i2 = this.f20474f;
        ArraysKt___ArraysJvmKt.m2302d(objArr3, objArr, length - i2, 0, i2);
        this.f20474f = 0;
        this.f20475g = objArr;
    }

    /* renamed from: s */
    private final int m2344s(int i) {
        return i == 0 ? ArraysKt___ArraysKt.m2229x(this.f20475g) : i - 1;
    }

    /* renamed from: t */
    private final void m2343t(int i) {
        int b;
        if (i >= 0) {
            Object[] objArr = this.f20475g;
            if (i > objArr.length) {
                if (objArr == f20472i) {
                    b = RangesKt___RangesKt.m1713b(i, 10);
                    this.f20475g = new Object[b];
                    return;
                }
                m2345r(f20473j.m2339a(objArr.length, i));
                return;
            }
            return;
        }
        throw new IllegalStateException("Deque is too big.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public final int m2342u(int i) {
        int x;
        x = ArraysKt___ArraysKt.m2229x(this.f20475g);
        return i == x ? 0 : i + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public final int m2341v(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = i + this.f20475g.length;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public final int m2340w(int i) {
        Object[] objArr = this.f20475g;
        int i2 = i;
        if (i >= objArr.length) {
            i2 = i - objArr.length;
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        AbstractList.f20455f.m2372b(i, size());
        if (i == size()) {
            addLast(e);
        } else if (i == 0) {
            addFirst(e);
        } else {
            m2343t(size() + 1);
            int w = m2340w(this.f20474f + i);
            if (i < ((size() + 1) >> 1)) {
                int s = m2344s(w);
                int s2 = m2344s(this.f20474f);
                int i2 = this.f20474f;
                if (s >= i2) {
                    Object[] objArr = this.f20475g;
                    objArr[s2] = objArr[i2];
                    ArraysKt___ArraysJvmKt.m2302d(objArr, objArr, i2, i2 + 1, s + 1);
                } else {
                    Object[] objArr2 = this.f20475g;
                    ArraysKt___ArraysJvmKt.m2302d(objArr2, objArr2, i2 - 1, i2, objArr2.length);
                    Object[] objArr3 = this.f20475g;
                    objArr3[objArr3.length - 1] = objArr3[0];
                    ArraysKt___ArraysJvmKt.m2302d(objArr3, objArr3, 0, 1, s + 1);
                }
                this.f20475g[s] = e;
                this.f20474f = s2;
            } else {
                int w2 = m2340w(this.f20474f + size());
                if (w < w2) {
                    Object[] objArr4 = this.f20475g;
                    ArraysKt___ArraysJvmKt.m2302d(objArr4, objArr4, w + 1, w, w2);
                } else {
                    Object[] objArr5 = this.f20475g;
                    ArraysKt___ArraysJvmKt.m2302d(objArr5, objArr5, 1, 0, w2);
                    Object[] objArr6 = this.f20475g;
                    objArr6[0] = objArr6[objArr6.length - 1];
                    ArraysKt___ArraysJvmKt.m2302d(objArr6, objArr6, w + 1, w, objArr6.length - 1);
                }
                this.f20475g[w] = e;
            }
            this.f20476h = size() + 1;
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        addLast(e);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, @NotNull Collection<? extends E> elements) {
        Intrinsics.m1830e(elements, "elements");
        AbstractList.f20455f.m2372b(i, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i == size()) {
            return addAll(elements);
        }
        m2343t(size() + elements.size());
        int w = m2340w(this.f20474f + size());
        int w2 = m2340w(this.f20474f + i);
        int size = elements.size();
        if (i < ((size() + 1) >> 1)) {
            int i2 = this.f20474f;
            int i3 = i2 - size;
            if (w2 < i2) {
                Object[] objArr = this.f20475g;
                ArraysKt___ArraysJvmKt.m2302d(objArr, objArr, i3, i2, objArr.length);
                if (size >= w2) {
                    Object[] objArr2 = this.f20475g;
                    ArraysKt___ArraysJvmKt.m2302d(objArr2, objArr2, objArr2.length - size, 0, w2);
                } else {
                    Object[] objArr3 = this.f20475g;
                    ArraysKt___ArraysJvmKt.m2302d(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f20475g;
                    ArraysKt___ArraysJvmKt.m2302d(objArr4, objArr4, 0, size, w2);
                }
            } else if (i3 >= 0) {
                Object[] objArr5 = this.f20475g;
                ArraysKt___ArraysJvmKt.m2302d(objArr5, objArr5, i3, i2, w2);
            } else {
                Object[] objArr6 = this.f20475g;
                i3 += objArr6.length;
                int length = objArr6.length - i3;
                if (length >= w2 - i2) {
                    ArraysKt___ArraysJvmKt.m2302d(objArr6, objArr6, i3, i2, w2);
                } else {
                    ArraysKt___ArraysJvmKt.m2302d(objArr6, objArr6, i3, i2, i2 + length);
                    Object[] objArr7 = this.f20475g;
                    ArraysKt___ArraysJvmKt.m2302d(objArr7, objArr7, 0, this.f20474f + length, w2);
                }
            }
            this.f20474f = i3;
            m2346p(m2341v(w2 - size), elements);
            return true;
        }
        int i4 = w2 + size;
        if (w2 < w) {
            int i5 = size + w;
            Object[] objArr8 = this.f20475g;
            if (i5 <= objArr8.length) {
                ArraysKt___ArraysJvmKt.m2302d(objArr8, objArr8, i4, w2, w);
            } else if (i4 >= objArr8.length) {
                ArraysKt___ArraysJvmKt.m2302d(objArr8, objArr8, i4 - objArr8.length, w2, w);
            } else {
                int length2 = w - (i5 - objArr8.length);
                ArraysKt___ArraysJvmKt.m2302d(objArr8, objArr8, 0, length2, w);
                Object[] objArr9 = this.f20475g;
                ArraysKt___ArraysJvmKt.m2302d(objArr9, objArr9, i4, w2, length2);
            }
        } else {
            Object[] objArr10 = this.f20475g;
            ArraysKt___ArraysJvmKt.m2302d(objArr10, objArr10, size, 0, w);
            Object[] objArr11 = this.f20475g;
            if (i4 >= objArr11.length) {
                ArraysKt___ArraysJvmKt.m2302d(objArr11, objArr11, i4 - objArr11.length, w2, objArr11.length);
            } else {
                ArraysKt___ArraysJvmKt.m2302d(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                Object[] objArr12 = this.f20475g;
                ArraysKt___ArraysJvmKt.m2302d(objArr12, objArr12, i4, w2, objArr12.length - size);
            }
        }
        m2346p(w2, elements);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.m1830e(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        m2343t(size() + elements.size());
        m2346p(m2340w(this.f20474f + size()), elements);
        return true;
    }

    public final void addFirst(E e) {
        m2343t(size() + 1);
        int s = m2344s(this.f20474f);
        this.f20474f = s;
        this.f20475g[s] = e;
        this.f20476h = size() + 1;
    }

    public final void addLast(E e) {
        m2343t(size() + 1);
        this.f20475g[m2340w(this.f20474f + size())] = e;
        this.f20476h = size() + 1;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* renamed from: c */
    public int mo2050c() {
        return this.f20476h;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int w = m2340w(this.f20474f + size());
        int i = this.f20474f;
        if (i < w) {
            ArraysKt___ArraysJvmKt.m2297i(this.f20475g, null, i, w);
        } else if (!isEmpty()) {
            Object[] objArr = this.f20475g;
            ArraysKt___ArraysJvmKt.m2297i(objArr, null, this.f20474f, objArr.length);
            ArraysKt___ArraysJvmKt.m2297i(this.f20475g, null, 0, w);
        }
        this.f20474f = 0;
        this.f20476h = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* renamed from: e */
    public E mo2049e(int i) {
        int h;
        int h2;
        AbstractList.f20455f.m2373a(i, size());
        h = CollectionsKt__CollectionsKt.m2173h(this);
        if (i == h) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        int w = m2340w(this.f20474f + i);
        E e = (E) this.f20475g[w];
        if (i < (size() >> 1)) {
            int i2 = this.f20474f;
            if (w >= i2) {
                Object[] objArr = this.f20475g;
                ArraysKt___ArraysJvmKt.m2302d(objArr, objArr, i2 + 1, i2, w);
            } else {
                Object[] objArr2 = this.f20475g;
                ArraysKt___ArraysJvmKt.m2302d(objArr2, objArr2, 1, 0, w);
                Object[] objArr3 = this.f20475g;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i3 = this.f20474f;
                ArraysKt___ArraysJvmKt.m2302d(objArr3, objArr3, i3 + 1, i3, objArr3.length - 1);
            }
            Object[] objArr4 = this.f20475g;
            int i4 = this.f20474f;
            objArr4[i4] = null;
            this.f20474f = m2342u(i4);
        } else {
            h2 = CollectionsKt__CollectionsKt.m2173h(this);
            int w2 = m2340w(this.f20474f + h2);
            if (w <= w2) {
                Object[] objArr5 = this.f20475g;
                ArraysKt___ArraysJvmKt.m2302d(objArr5, objArr5, w, w + 1, w2 + 1);
            } else {
                Object[] objArr6 = this.f20475g;
                ArraysKt___ArraysJvmKt.m2302d(objArr6, objArr6, w, w + 1, objArr6.length);
                Object[] objArr7 = this.f20475g;
                objArr7[objArr7.length - 1] = objArr7[0];
                ArraysKt___ArraysJvmKt.m2302d(objArr7, objArr7, 0, 1, w2 + 1);
            }
            this.f20475g[w2] = null;
        }
        this.f20476h = size() - 1;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        AbstractList.f20455f.m2373a(i, size());
        return (E) this.f20475g[m2340w(this.f20474f + i)];
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i;
        int w = m2340w(this.f20474f + size());
        int i2 = this.f20474f;
        if (i2 < w) {
            while (i2 < w) {
                if (Intrinsics.m1834a(obj, this.f20475g[i2])) {
                    i = this.f20474f;
                } else {
                    i2++;
                }
            }
            return -1;
        } else if (i2 < w) {
            return -1;
        } else {
            int length = this.f20475g.length;
            while (true) {
                if (i2 >= length) {
                    for (int i3 = 0; i3 < w; i3++) {
                        if (Intrinsics.m1834a(obj, this.f20475g[i3])) {
                            i2 = i3 + this.f20475g.length;
                            i = this.f20474f;
                        }
                    }
                    return -1;
                } else if (Intrinsics.m1834a(obj, this.f20475g[i2])) {
                    i = this.f20474f;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return i2 - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int x;
        int i;
        int w = m2340w(this.f20474f + size());
        int i2 = this.f20474f;
        if (i2 < w) {
            x = w - 1;
            if (x < i2) {
                return -1;
            }
            while (!Intrinsics.m1834a(obj, this.f20475g[x])) {
                if (x == i2) {
                    return -1;
                }
                x--;
            }
            i = this.f20474f;
        } else if (i2 <= w) {
            return -1;
        } else {
            while (true) {
                w--;
                if (w < 0) {
                    x = ArraysKt___ArraysKt.m2229x(this.f20475g);
                    int i3 = this.f20474f;
                    if (x < i3) {
                        return -1;
                    }
                    while (!Intrinsics.m1834a(obj, this.f20475g[x])) {
                        if (x == i3) {
                            return -1;
                        }
                        x--;
                    }
                    i = this.f20474f;
                } else if (Intrinsics.m1834a(obj, this.f20475g[w])) {
                    x = w + this.f20475g.length;
                    i = this.f20474f;
                    break;
                }
            }
        }
        return x - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.m1830e(elements, "elements");
        boolean z = false;
        boolean z2 = false;
        if (!isEmpty()) {
            if (this.f20475g.length == 0) {
                z2 = false;
            } else {
                int w = m2340w(this.f20474f + size());
                int i = this.f20474f;
                if (this.f20474f < w) {
                    for (int i2 = this.f20474f; i2 < w; i2++) {
                        Object obj = this.f20475g[i2];
                        if (!elements.contains(obj)) {
                            this.f20475g[i] = obj;
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    ArraysKt___ArraysJvmKt.m2297i(this.f20475g, null, i, w);
                } else {
                    int length = this.f20475g.length;
                    z = false;
                    for (int i3 = this.f20474f; i3 < length; i3++) {
                        Object obj2 = this.f20475g[i3];
                        this.f20475g[i3] = null;
                        if (!elements.contains(obj2)) {
                            this.f20475g[i] = obj2;
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    i = m2340w(i);
                    for (int i4 = 0; i4 < w; i4++) {
                        Object obj3 = this.f20475g[i4];
                        this.f20475g[i4] = null;
                        if (!elements.contains(obj3)) {
                            this.f20475g[i] = obj3;
                            i = m2342u(i);
                        } else {
                            z = true;
                        }
                    }
                }
                z2 = z;
                if (z) {
                    this.f20476h = m2341v(i - this.f20474f);
                    z2 = z;
                }
            }
        }
        return z2;
    }

    public final E removeFirst() {
        if (!isEmpty()) {
            E e = (E) this.f20475g[this.f20474f];
            Object[] objArr = this.f20475g;
            int i = this.f20474f;
            objArr[i] = null;
            this.f20474f = m2342u(i);
            this.f20476h = size() - 1;
            return e;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    public final E removeLast() {
        int h;
        if (!isEmpty()) {
            h = CollectionsKt__CollectionsKt.m2173h(this);
            int w = m2340w(this.f20474f + h);
            E e = (E) this.f20475g[w];
            this.f20475g[w] = null;
            this.f20476h = size() - 1;
            return e;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.m1830e(elements, "elements");
        boolean z = false;
        boolean z2 = false;
        if (!isEmpty()) {
            if (this.f20475g.length == 0) {
                z2 = false;
            } else {
                int w = m2340w(this.f20474f + size());
                int i = this.f20474f;
                if (this.f20474f < w) {
                    for (int i2 = this.f20474f; i2 < w; i2++) {
                        Object obj = this.f20475g[i2];
                        if (elements.contains(obj)) {
                            this.f20475g[i] = obj;
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    ArraysKt___ArraysJvmKt.m2297i(this.f20475g, null, i, w);
                } else {
                    int length = this.f20475g.length;
                    z = false;
                    for (int i3 = this.f20474f; i3 < length; i3++) {
                        Object obj2 = this.f20475g[i3];
                        this.f20475g[i3] = null;
                        if (elements.contains(obj2)) {
                            this.f20475g[i] = obj2;
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    i = m2340w(i);
                    for (int i4 = 0; i4 < w; i4++) {
                        Object obj3 = this.f20475g[i4];
                        this.f20475g[i4] = null;
                        if (elements.contains(obj3)) {
                            this.f20475g[i] = obj3;
                            i = m2342u(i);
                        } else {
                            z = true;
                        }
                    }
                }
                z2 = z;
                if (z) {
                    this.f20476h = m2341v(i - this.f20474f);
                    z2 = z;
                }
            }
        }
        return z2;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        AbstractList.f20455f.m2373a(i, size());
        int w = m2340w(this.f20474f + i);
        E e2 = (E) this.f20475g[w];
        this.f20475g[w] = e;
        return e2;
    }
}
