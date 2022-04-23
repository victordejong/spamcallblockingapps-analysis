package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0013\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B\u0011\b\u0016\u0012\u0006\u0010\"\u001a\u00020\b¢\u0006\u0004\b)\u0010\u0017B\u001f\u0012\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018\u0012\u0006\u0010*\u001a\u00020\b¢\u0006\u0004\b)\u0010+J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028��¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\r\u001a\u00028��2\u0006\u0010\f\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u0012H\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\b¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00010\u0018\"\u0004\b\u0001\u0010\u00012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u0018H\u0014¢\u0006\u0004\b\u001a\u0010\u001dJ\u001c\u0010\u001e\u001a\u00020\b*\u00020\b2\u0006\u0010\u0015\u001a\u00020\bH\u0082\b¢\u0006\u0004\b\u001e\u0010\u001fR\u001e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R$\u0010%\u001a\u00020\b2\u0006\u0010$\u001a\u00020\b8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b%\u0010#\u001a\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010#¨\u0006,"}, d2 = {"Lkotlin/collections/RingBuffer;", "T", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "element", "", "add", "(Ljava/lang/Object;)V", "", "maxCapacity", "expanded", "(I)Lkotlin/collections/RingBuffer;", FirebaseAnalytics.Param.INDEX, "get", "(I)Ljava/lang/Object;", "", "isFull", "()Z", "", "iterator", "()Ljava/util/Iterator;", "n", "removeFirst", "(I)V", "", "", "toArray", "()[Ljava/lang/Object;", "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "forward", "(II)I", "buffer", "[Ljava/lang/Object;", "capacity", "I", "<set-?>", "size", "getSize", "()I", "startIndex", "<init>", "filledSize", "([Ljava/lang/Object;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/RingBuffer.class */
public final class RingBuffer<T> extends AbstractList<T> implements RandomAccess {

    /* renamed from: g */
    private final int f20537g;

    /* renamed from: h */
    private int f20538h;

    /* renamed from: i */
    private int f20539i;

    /* renamed from: j */
    private final Object[] f20540j;

    public RingBuffer(int i) {
        this(new Object[i], 0);
    }

    public RingBuffer(@NotNull Object[] buffer, int i) {
        Intrinsics.m1830e(buffer, "buffer");
        this.f20540j = buffer;
        boolean z = true;
        if (i >= 0) {
            if (i > this.f20540j.length) {
                z = false;
            }
            if (z) {
                this.f20537g = this.f20540j.length;
                this.f20539i = i;
                return;
            }
            throw new IllegalArgumentException(("ring buffer filled size: " + i + " cannot be larger than the buffer size: " + this.f20540j.length).toString());
        }
        throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i).toString());
    }

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return this.f20539i;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public T get(int i) {
        AbstractList.f20455f.m2373a(i, size());
        return (T) this.f20540j[(this.f20538h + i) % this.f20537g];
    }

    /* renamed from: h */
    public final void m2066h(T t) {
        if (!m2064k()) {
            this.f20540j[(this.f20538h + size()) % this.f20537g] = t;
            this.f20539i = size() + 1;
            return;
        }
        throw new IllegalStateException("ring buffer is full");
    }

    @Override // kotlin.collections.AbstractList, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<T> iterator() {
        return new AbstractIterator<T>() { // from class: kotlin.collections.RingBuffer$iterator$1

            /* renamed from: h */
            private int f20541h;

            /* renamed from: i */
            private int f20542i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i;
                this.f20541h = RingBuffer.this.size();
                i = RingBuffer.this.f20538h;
                this.f20542i = i;
            }

            @Override // kotlin.collections.AbstractIterator
            /* renamed from: a */
            protected void mo1672a() {
                Object[] objArr;
                if (this.f20541h == 0) {
                    m2376b();
                    return;
                }
                objArr = RingBuffer.this.f20540j;
                m2375c(objArr[this.f20542i]);
                this.f20542i = (this.f20542i + 1) % RingBuffer.this.f20537g;
                this.f20541h--;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    /* renamed from: j */
    public final RingBuffer<T> m2065j(int i) {
        int d;
        Object[] objArr;
        int i2 = this.f20537g;
        d = RangesKt___RangesKt.m1711d(i2 + (i2 >> 1) + 1, i);
        if (this.f20538h == 0) {
            objArr = Arrays.copyOf(this.f20540j, d);
            Intrinsics.m1831d(objArr, "java.util.Arrays.copyOf(this, newSize)");
        } else {
            objArr = toArray(new Object[d]);
        }
        return new RingBuffer<>(objArr, size());
    }

    /* renamed from: k */
    public final boolean m2064k() {
        return size() == this.f20537g;
    }

    /* renamed from: n */
    public final void m2063n(int i) {
        boolean z = true;
        if (i >= 0) {
            if (i > size()) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i + ", size = " + size()).toString());
            } else if (i > 0) {
                int i2 = this.f20538h;
                int i3 = (i2 + i) % this.f20537g;
                if (i2 > i3) {
                    ArraysKt___ArraysJvmKt.m2297i(this.f20540j, null, i2, this.f20537g);
                    ArraysKt___ArraysJvmKt.m2297i(this.f20540j, null, 0, i3);
                } else {
                    ArraysKt___ArraysJvmKt.m2297i(this.f20540j, null, i2, i3);
                }
                this.f20538h = i3;
                this.f20539i = size() - i;
            }
        } else {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i).toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        int i;
        int i2;
        Intrinsics.m1830e(array, "array");
        T[] tArr = array;
        if (array.length < size()) {
            tArr = (T[]) Arrays.copyOf(array, size());
            Intrinsics.m1831d(tArr, "java.util.Arrays.copyOf(this, newSize)");
        }
        int size = size();
        int i3 = this.f20538h;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i4 >= size) {
                break;
            }
            i = 0;
            i2 = i4;
            if (i3 >= this.f20537g) {
                break;
            }
            tArr[i4] = this.f20540j[i3];
            i4++;
            i3++;
        }
        while (i2 < size) {
            tArr[i2] = this.f20540j[i];
            i2++;
            i++;
        }
        if (tArr.length > size()) {
            tArr[size()] = null;
        }
        if (tArr != null) {
            return tArr;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
