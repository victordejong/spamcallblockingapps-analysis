package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.share.internal.MessengerShareContentUtility;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��L\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0007\u0018�� I*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001IB\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0007\b\u0016¢\u0006\u0002\u0010\u0006B\u0015\b\u0016\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJ\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0016J\u001d\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bH\u0016J\u0016\u0010\u001a\u001a\u00020\u00142\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bH\u0016J\u0013\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028��¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028��¢\u0006\u0002\u0010\u001cJ\b\u0010\u001e\u001a\u00020\u0017H\u0016J\u0016\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0016J\u001e\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bH\u0002J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004H\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0004H\u0002J\u001d\u0010'\u001a\u00020\u00142\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00140)H\u0082\bJ\u000b\u0010*\u001a\u00028��¢\u0006\u0002\u0010+J\r\u0010,\u001a\u0004\u0018\u00018��¢\u0006\u0002\u0010+J\u0016\u0010-\u001a\u00028��2\u0006\u0010\u0018\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u00100\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028��H\u0016¢\u0006\u0002\u00101J\u0016\u00102\u001a\u00028��2\u0006\u0010!\u001a\u00020\u0004H\u0083\b¢\u0006\u0002\u0010.J\u0011\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0083\bJM\u00103\u001a\u00020\u00172>\u00104\u001a:\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b6\u0012\b\b7\u0012\u0004\b\b(\u000e\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b¢\u0006\f\b6\u0012\b\b7\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u001705H��¢\u0006\u0002\b8J\b\u00109\u001a\u00020\u0014H\u0016J\u000b\u0010:\u001a\u00028��¢\u0006\u0002\u0010+J\u0015\u0010;\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028��H\u0016¢\u0006\u0002\u00101J\r\u0010<\u001a\u0004\u0018\u00018��¢\u0006\u0002\u0010+J\u0010\u0010=\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u0010?\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0016J\u0016\u0010@\u001a\u00020\u00142\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bH\u0016J\u0015\u0010A\u001a\u00028��2\u0006\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0002\u0010.J\u000b\u0010B\u001a\u00028��¢\u0006\u0002\u0010+J\r\u0010C\u001a\u0004\u0018\u00018��¢\u0006\u0002\u0010+J\u000b\u0010D\u001a\u00028��¢\u0006\u0002\u0010+J\r\u0010E\u001a\u0004\u0018\u00018��¢\u0006\u0002\u0010+J\u0016\u0010F\u001a\u00020\u00142\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bH\u0016J\u001e\u0010G\u001a\u00028��2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010HR\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004@RX\u0096\u000e¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012¨\u0006J"}, m400d2 = {"Lkotlin/collections/ArrayDeque;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/AbstractMutableList;", "initialCapacity", "", "(I)V", "()V", MessengerShareContentUtility.ELEMENTS, "", "(Ljava/util/Collection;)V", "elementData", "", "", "[Ljava/lang/Object;", "head", "<set-?>", "size", "getSize", "()I", "add", "", "element", "(Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.INDEX, "(ILjava/lang/Object;)V", "addAll", "addFirst", "(Ljava/lang/Object;)V", "addLast", "clear", "contains", "copyCollectionElements", "internalIndex", "copyElements", "newCapacity", "decremented", "ensureCapacity", "minCapacity", "filterInPlace", "predicate", "Lkotlin/Function1;", "first", "()Ljava/lang/Object;", "firstOrNull", "get", "(I)Ljava/lang/Object;", "incremented", "indexOf", "(Ljava/lang/Object;)I", "internalGet", "internalStructure", "structure", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "internalStructure$kotlin_stdlib", "isEmpty", "last", "lastIndexOf", "lastOrNull", "negativeMod", "positiveMod", "remove", "removeAll", "removeAt", "removeFirst", "removeFirstOrNull", "removeLast", "removeLastOrNull", "retainAll", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/collections/ArrayDeque.class */
public final class ArrayDeque<E> extends AbstractMutableList<E> {
    private static final int defaultMinCapacity = 10;
    private static final int maxArraySize = 2147483639;
    private Object[] elementData;
    private int head;
    private int size;
    public static final Companion Companion = new Companion(null);
    private static final Object[] emptyElementData = new Object[0];

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\b\u0007\b\u0080\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H��¢\u0006\u0002\b\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0018\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\r"}, m400d2 = {"Lkotlin/collections/ArrayDeque$Companion;", "", "()V", "defaultMinCapacity", "", "emptyElementData", "", "[Ljava/lang/Object;", "maxArraySize", "newCapacity", "oldCapacity", "minCapacity", "newCapacity$kotlin_stdlib", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/collections/ArrayDeque$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int newCapacity$kotlin_stdlib(int i, int i2) {
            int i3 = i + (i >> 1);
            int i4 = i3;
            if (i3 - i2 < 0) {
                i4 = i2;
            }
            int i5 = i4;
            if (i4 - 2147483639 > 0) {
                i5 = i2 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            return i5;
        }
    }

    public ArrayDeque() {
        this.elementData = emptyElementData;
    }

    public ArrayDeque(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = emptyElementData;
        } else if (i <= 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i);
        } else {
            objArr = new Object[i];
        }
        this.elementData = objArr;
    }

    public ArrayDeque(Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        Object[] array = elements.toArray(new Object[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.elementData = array;
        this.size = array.length;
        if (array.length == 0 ? true : z) {
            this.elementData = emptyElementData;
        }
    }

    private final void copyCollectionElements(int i, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.elementData.length;
        while (i < length && it.hasNext()) {
            this.elementData[i] = it.next();
            i++;
        }
        int i2 = this.head;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.elementData[i3] = it.next();
        }
        this.size = size() + collection.size();
    }

    private final void copyElements(int i) {
        Object[] objArr = new Object[i];
        Object[] objArr2 = this.elementData;
        ArraysKt.copyInto(objArr2, objArr, 0, this.head, objArr2.length);
        Object[] objArr3 = this.elementData;
        int length = objArr3.length;
        int i2 = this.head;
        ArraysKt.copyInto(objArr3, objArr, length - i2, 0, i2);
        this.head = 0;
        this.elementData = objArr;
    }

    private final int decremented(int i) {
        return i == 0 ? ArraysKt.getLastIndex(this.elementData) : i - 1;
    }

    private final void ensureCapacity(int i) {
        if (i >= 0) {
            Object[] objArr = this.elementData;
            if (i <= objArr.length) {
                return;
            }
            if (objArr == emptyElementData) {
                this.elementData = new Object[RangesKt.coerceAtLeast(i, 10)];
                return;
            } else {
                copyElements(Companion.newCapacity$kotlin_stdlib(objArr.length, i));
                return;
            }
        }
        throw new IllegalStateException("Deque is too big.");
    }

    private final boolean filterInPlace(Function1<? super E, Boolean> function1) {
        int i;
        boolean z = false;
        boolean z2 = false;
        if (!isEmpty()) {
            if (this.elementData.length == 0) {
                z2 = false;
            } else {
                int positiveMod = positiveMod(this.head + size());
                int i2 = this.head;
                if (this.head < positiveMod) {
                    i = i2;
                    for (int i3 = this.head; i3 < positiveMod; i3++) {
                        Object obj = this.elementData[i3];
                        if (function1.invoke(obj).booleanValue()) {
                            this.elementData[i] = obj;
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    ArraysKt.fill(this.elementData, (Object) null, i, positiveMod);
                } else {
                    int length = this.elementData.length;
                    z = false;
                    for (int i4 = this.head; i4 < length; i4++) {
                        Object obj2 = this.elementData[i4];
                        this.elementData[i4] = null;
                        if (function1.invoke(obj2).booleanValue()) {
                            this.elementData[i2] = obj2;
                            i2++;
                        } else {
                            z = true;
                        }
                    }
                    i = positiveMod(i2);
                    for (int i5 = 0; i5 < positiveMod; i5++) {
                        Object obj3 = this.elementData[i5];
                        this.elementData[i5] = null;
                        if (function1.invoke(obj3).booleanValue()) {
                            this.elementData[i] = obj3;
                            i = incremented(i);
                        } else {
                            z = true;
                        }
                    }
                }
                z2 = z;
                if (z) {
                    this.size = negativeMod(i - this.head);
                    z2 = z;
                }
            }
        }
        return z2;
    }

    public final int incremented(int i) {
        return i == ArraysKt.getLastIndex(this.elementData) ? 0 : i + 1;
    }

    private final E internalGet(int i) {
        return (E) this.elementData[i];
    }

    private final int internalIndex(int i) {
        return positiveMod(this.head + i);
    }

    public final int negativeMod(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = i + this.elementData.length;
        }
        return i2;
    }

    public final int positiveMod(int i) {
        Object[] objArr = this.elementData;
        int i2 = i;
        if (i >= objArr.length) {
            i2 = i - objArr.length;
        }
        return i2;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, size());
        if (i == size()) {
            addLast(e);
        } else if (i == 0) {
            addFirst(e);
        } else {
            ensureCapacity(size() + 1);
            int positiveMod = positiveMod(this.head + i);
            if (i < ((size() + 1) >> 1)) {
                int decremented = decremented(positiveMod);
                int decremented2 = decremented(this.head);
                int i2 = this.head;
                if (decremented >= i2) {
                    Object[] objArr = this.elementData;
                    objArr[decremented2] = objArr[i2];
                    ArraysKt.copyInto(objArr, objArr, i2, i2 + 1, decremented + 1);
                } else {
                    Object[] objArr2 = this.elementData;
                    ArraysKt.copyInto(objArr2, objArr2, i2 - 1, i2, objArr2.length);
                    Object[] objArr3 = this.elementData;
                    objArr3[objArr3.length - 1] = objArr3[0];
                    ArraysKt.copyInto(objArr3, objArr3, 0, 1, decremented + 1);
                }
                this.elementData[decremented] = e;
                this.head = decremented2;
            } else {
                int positiveMod2 = positiveMod(this.head + size());
                if (positiveMod < positiveMod2) {
                    Object[] objArr4 = this.elementData;
                    ArraysKt.copyInto(objArr4, objArr4, positiveMod + 1, positiveMod, positiveMod2);
                } else {
                    Object[] objArr5 = this.elementData;
                    ArraysKt.copyInto(objArr5, objArr5, 1, 0, positiveMod2);
                    Object[] objArr6 = this.elementData;
                    objArr6[0] = objArr6[objArr6.length - 1];
                    ArraysKt.copyInto(objArr6, objArr6, positiveMod + 1, positiveMod, objArr6.length - 1);
                }
                this.elementData[positiveMod] = e;
            }
            this.size = size() + 1;
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        addLast(e);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i == size()) {
            return addAll(elements);
        }
        ensureCapacity(size() + elements.size());
        int positiveMod = positiveMod(this.head + size());
        int positiveMod2 = positiveMod(this.head + i);
        int size = elements.size();
        if (i >= ((size() + 1) >> 1)) {
            int i2 = positiveMod2 + size;
            if (positiveMod2 < positiveMod) {
                int i3 = size + positiveMod;
                Object[] objArr = this.elementData;
                if (i3 <= objArr.length) {
                    ArraysKt.copyInto(objArr, objArr, i2, positiveMod2, positiveMod);
                } else if (i2 >= objArr.length) {
                    ArraysKt.copyInto(objArr, objArr, i2 - objArr.length, positiveMod2, positiveMod);
                } else {
                    int length = positiveMod - (i3 - objArr.length);
                    ArraysKt.copyInto(objArr, objArr, 0, length, positiveMod);
                    Object[] objArr2 = this.elementData;
                    ArraysKt.copyInto(objArr2, objArr2, i2, positiveMod2, length);
                }
            } else {
                Object[] objArr3 = this.elementData;
                ArraysKt.copyInto(objArr3, objArr3, size, 0, positiveMod);
                Object[] objArr4 = this.elementData;
                if (i2 >= objArr4.length) {
                    ArraysKt.copyInto(objArr4, objArr4, i2 - objArr4.length, positiveMod2, objArr4.length);
                } else {
                    ArraysKt.copyInto(objArr4, objArr4, 0, objArr4.length - size, objArr4.length);
                    Object[] objArr5 = this.elementData;
                    ArraysKt.copyInto(objArr5, objArr5, i2, positiveMod2, objArr5.length - size);
                }
            }
            copyCollectionElements(positiveMod2, elements);
            return true;
        }
        int i4 = this.head;
        int i5 = i4 - size;
        if (positiveMod2 < i4) {
            Object[] objArr6 = this.elementData;
            ArraysKt.copyInto(objArr6, objArr6, i5, i4, objArr6.length);
            if (size >= positiveMod2) {
                Object[] objArr7 = this.elementData;
                ArraysKt.copyInto(objArr7, objArr7, objArr7.length - size, 0, positiveMod2);
            } else {
                Object[] objArr8 = this.elementData;
                ArraysKt.copyInto(objArr8, objArr8, objArr8.length - size, 0, size);
                Object[] objArr9 = this.elementData;
                ArraysKt.copyInto(objArr9, objArr9, 0, size, positiveMod2);
            }
        } else if (i5 >= 0) {
            Object[] objArr10 = this.elementData;
            ArraysKt.copyInto(objArr10, objArr10, i5, i4, positiveMod2);
        } else {
            Object[] objArr11 = this.elementData;
            i5 += objArr11.length;
            int length2 = objArr11.length - i5;
            if (length2 >= positiveMod2 - i4) {
                ArraysKt.copyInto(objArr11, objArr11, i5, i4, positiveMod2);
            } else {
                ArraysKt.copyInto(objArr11, objArr11, i5, i4, i4 + length2);
                Object[] objArr12 = this.elementData;
                ArraysKt.copyInto(objArr12, objArr12, 0, this.head + length2, positiveMod2);
            }
        }
        this.head = i5;
        copyCollectionElements(negativeMod(positiveMod2 - size), elements);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        ensureCapacity(size() + elements.size());
        copyCollectionElements(positiveMod(this.head + size()), elements);
        return true;
    }

    public final void addFirst(E e) {
        ensureCapacity(size() + 1);
        int decremented = decremented(this.head);
        this.head = decremented;
        this.elementData[decremented] = e;
        this.size = size() + 1;
    }

    public final void addLast(E e) {
        ensureCapacity(size() + 1);
        this.elementData[positiveMod(this.head + size())] = e;
        this.size = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int positiveMod = positiveMod(this.head + size());
        int i = this.head;
        if (i < positiveMod) {
            ArraysKt.fill(this.elementData, (Object) null, i, positiveMod);
        } else if (!isEmpty()) {
            Object[] objArr = this.elementData;
            ArraysKt.fill(objArr, (Object) null, this.head, objArr.length);
            ArraysKt.fill(this.elementData, (Object) null, 0, positiveMod);
        }
        this.head = 0;
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final E first() {
        if (!isEmpty()) {
            return (E) this.elementData[this.head];
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v7 */
    public final E firstOrNull() {
        E e;
        if (isEmpty()) {
            e = null;
        } else {
            e = this.elementData[this.head];
        }
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, size());
        return (E) this.elementData[positiveMod(this.head + i)];
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.size;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i;
        int positiveMod = positiveMod(this.head + size());
        int i2 = this.head;
        if (i2 < positiveMod) {
            while (i2 < positiveMod) {
                if (Intrinsics.areEqual(obj, this.elementData[i2])) {
                    i = this.head;
                } else {
                    i2++;
                }
            }
            return -1;
        } else if (i2 < positiveMod) {
            return -1;
        } else {
            int length = this.elementData.length;
            while (true) {
                if (i2 >= length) {
                    for (int i3 = 0; i3 < positiveMod; i3++) {
                        if (Intrinsics.areEqual(obj, this.elementData[i3])) {
                            i2 = i3 + this.elementData.length;
                            i = this.head;
                        }
                    }
                    return -1;
                } else if (Intrinsics.areEqual(obj, this.elementData[i2])) {
                    i = this.head;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return i2 - i;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object[], java.lang.Object] */
    public final void internalStructure$kotlin_stdlib(Function2<? super Integer, ? super Object[], Unit> structure) {
        Intrinsics.checkNotNullParameter(structure, "structure");
        int positiveMod = positiveMod(this.head + size());
        if (isEmpty()) {
            structure.invoke(Integer.valueOf(this.head), new Object[0]);
            return;
        }
        ?? r0 = new Object[size()];
        int i = this.head;
        if (i < positiveMod) {
            ArraysKt.copyInto$default(this.elementData, (Object[]) r0, 0, i, positiveMod, 2, (Object) null);
            structure.invoke(Integer.valueOf(this.head), r0);
            return;
        }
        ArraysKt.copyInto$default(this.elementData, (Object[]) r0, 0, i, 0, 10, (Object) null);
        Object[] objArr = this.elementData;
        ArraysKt.copyInto(objArr, (Object[]) r0, objArr.length - this.head, 0, positiveMod);
        structure.invoke(Integer.valueOf(this.head - this.elementData.length), r0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final E last() {
        if (!isEmpty()) {
            return (E) this.elementData[positiveMod(this.head + CollectionsKt.getLastIndex(this))];
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int lastIndex;
        int i;
        int positiveMod = positiveMod(this.head + size());
        int i2 = this.head;
        if (i2 < positiveMod) {
            lastIndex = positiveMod - 1;
            if (lastIndex < i2) {
                return -1;
            }
            while (!Intrinsics.areEqual(obj, this.elementData[lastIndex])) {
                if (lastIndex == i2) {
                    return -1;
                }
                lastIndex--;
            }
            i = this.head;
        } else if (i2 <= positiveMod) {
            return -1;
        } else {
            while (true) {
                positiveMod--;
                if (positiveMod < 0) {
                    lastIndex = ArraysKt.getLastIndex(this.elementData);
                    int i3 = this.head;
                    if (lastIndex < i3) {
                        return -1;
                    }
                    while (!Intrinsics.areEqual(obj, this.elementData[lastIndex])) {
                        if (lastIndex == i3) {
                            return -1;
                        }
                        lastIndex--;
                    }
                    i = this.head;
                } else if (Intrinsics.areEqual(obj, this.elementData[positiveMod])) {
                    lastIndex = positiveMod + this.elementData.length;
                    i = this.head;
                    break;
                }
            }
        }
        return lastIndex - i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final E lastOrNull() {
        E e;
        if (isEmpty()) {
            e = null;
        } else {
            e = this.elementData[positiveMod(this.head + CollectionsKt.getLastIndex(this))];
        }
        return e;
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
    public boolean removeAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        boolean z2 = false;
        if (!isEmpty()) {
            if (this.elementData.length == 0) {
                z2 = false;
            } else {
                int positiveMod = positiveMod(this.head + size());
                int i = this.head;
                if (this.head < positiveMod) {
                    for (int i2 = this.head; i2 < positiveMod; i2++) {
                        Object obj = this.elementData[i2];
                        if (!elements.contains(obj)) {
                            this.elementData[i] = obj;
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    ArraysKt.fill(this.elementData, (Object) null, i, positiveMod);
                } else {
                    int length = this.elementData.length;
                    z = false;
                    for (int i3 = this.head; i3 < length; i3++) {
                        Object obj2 = this.elementData[i3];
                        this.elementData[i3] = null;
                        if (!elements.contains(obj2)) {
                            this.elementData[i] = obj2;
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    i = positiveMod(i);
                    for (int i4 = 0; i4 < positiveMod; i4++) {
                        Object obj3 = this.elementData[i4];
                        this.elementData[i4] = null;
                        if (!elements.contains(obj3)) {
                            this.elementData[i] = obj3;
                            i = incremented(i);
                        } else {
                            z = true;
                        }
                    }
                }
                z2 = z;
                if (z) {
                    this.size = negativeMod(i - this.head);
                    z2 = z;
                }
            }
        }
        return z2;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int i) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, size());
        if (i == CollectionsKt.getLastIndex(this)) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        int positiveMod = positiveMod(this.head + i);
        E e = (E) this.elementData[positiveMod];
        if (i < (size() >> 1)) {
            int i2 = this.head;
            if (positiveMod >= i2) {
                Object[] objArr = this.elementData;
                ArraysKt.copyInto(objArr, objArr, i2 + 1, i2, positiveMod);
            } else {
                Object[] objArr2 = this.elementData;
                ArraysKt.copyInto(objArr2, objArr2, 1, 0, positiveMod);
                Object[] objArr3 = this.elementData;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i3 = this.head;
                ArraysKt.copyInto(objArr3, objArr3, i3 + 1, i3, objArr3.length - 1);
            }
            Object[] objArr4 = this.elementData;
            int i4 = this.head;
            objArr4[i4] = null;
            this.head = incremented(i4);
        } else {
            int positiveMod2 = positiveMod(this.head + CollectionsKt.getLastIndex(this));
            if (positiveMod <= positiveMod2) {
                Object[] objArr5 = this.elementData;
                ArraysKt.copyInto(objArr5, objArr5, positiveMod, positiveMod + 1, positiveMod2 + 1);
            } else {
                Object[] objArr6 = this.elementData;
                ArraysKt.copyInto(objArr6, objArr6, positiveMod, positiveMod + 1, objArr6.length);
                Object[] objArr7 = this.elementData;
                objArr7[objArr7.length - 1] = objArr7[0];
                ArraysKt.copyInto(objArr7, objArr7, 0, 1, positiveMod2 + 1);
            }
            this.elementData[positiveMod2] = null;
        }
        this.size = size() - 1;
        return e;
    }

    public final E removeFirst() {
        if (!isEmpty()) {
            E e = (E) this.elementData[this.head];
            Object[] objArr = this.elementData;
            int i = this.head;
            objArr[i] = null;
            this.head = incremented(i);
            this.size = size() - 1;
            return e;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    public final E removeFirstOrNull() {
        return isEmpty() ? null : removeFirst();
    }

    public final E removeLast() {
        if (!isEmpty()) {
            int positiveMod = positiveMod(this.head + CollectionsKt.getLastIndex(this));
            E e = (E) this.elementData[positiveMod];
            this.elementData[positiveMod] = null;
            this.size = size() - 1;
            return e;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    public final E removeLastOrNull() {
        return isEmpty() ? null : removeLast();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<? extends Object> elements) {
        int i;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        boolean z2 = false;
        if (!isEmpty()) {
            if (this.elementData.length == 0) {
                z2 = false;
            } else {
                int positiveMod = positiveMod(this.head + size());
                int i2 = this.head;
                if (this.head < positiveMod) {
                    i = i2;
                    for (int i3 = this.head; i3 < positiveMod; i3++) {
                        Object obj = this.elementData[i3];
                        if (elements.contains(obj)) {
                            this.elementData[i] = obj;
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    ArraysKt.fill(this.elementData, (Object) null, i, positiveMod);
                } else {
                    int length = this.elementData.length;
                    z = false;
                    for (int i4 = this.head; i4 < length; i4++) {
                        Object obj2 = this.elementData[i4];
                        this.elementData[i4] = null;
                        if (elements.contains(obj2)) {
                            this.elementData[i2] = obj2;
                            i2++;
                        } else {
                            z = true;
                        }
                    }
                    i = positiveMod(i2);
                    for (int i5 = 0; i5 < positiveMod; i5++) {
                        Object obj3 = this.elementData[i5];
                        this.elementData[i5] = null;
                        if (elements.contains(obj3)) {
                            this.elementData[i] = obj3;
                            i = incremented(i);
                        } else {
                            z = true;
                        }
                    }
                }
                z2 = z;
                if (z) {
                    this.size = negativeMod(i - this.head);
                    z2 = z;
                }
            }
        }
        return z2;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, size());
        int positiveMod = positiveMod(this.head + i);
        E e2 = (E) this.elementData[positiveMod];
        this.elementData[positiveMod] = e;
        return e2;
    }
}
