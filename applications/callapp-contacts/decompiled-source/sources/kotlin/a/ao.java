package kotlin.a;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.a.d;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0010(\n\u0002\b\b\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001d\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0002\u0010\fJ\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028��¢\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001fH\u0096\u0002J\u000e\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0006J\u0015\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0014¢\u0006\u0002\u0010#J'\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\u00010\t\"\u0004\b\u0001\u0010\u00012\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u00010\tH\u0014¢\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00020\u0006*\u00020\u00062\u0006\u0010!\u001a\u00020\u0006H\u0082\bR\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006@RX\u0096\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006'"}, d2 = {"Lkotlin/collections/RingBuffer;", "T", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "capacity", "", "(I)V", "buffer", "", "", "filledSize", "([Ljava/lang/Object;I)V", "[Ljava/lang/Object;", "<set-?>", "size", "getSize", "()I", "startIndex", "add", "", "element", "(Ljava/lang/Object;)V", "expanded", "maxCapacity", "get", "index", "(I)Ljava/lang/Object;", "isFull", "", "iterator", "", "removeFirst", "n", "toArray", "()[Ljava/lang/Object;", "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "forward", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/a/ao.class */
final class ao<T> extends d<T> implements RandomAccess {

    /* renamed from: b  reason: collision with root package name */
    final int f36574b;

    /* renamed from: c  reason: collision with root package name */
    int f36575c;

    /* renamed from: d  reason: collision with root package name */
    int f36576d;
    final Object[] e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0007"}, d2 = {"kotlin/collections/RingBuffer$iterator$1", "Lkotlin/collections/AbstractIterator;", "count", "", "index", "computeNext", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/a/ao$a.class */
    public static final class a extends b<T> {

        /* renamed from: b  reason: collision with root package name */
        private int f36578b;

        /* renamed from: c  reason: collision with root package name */
        private int f36579c;

        a() {
            this.f36578b = ao.this.size();
            this.f36579c = ao.this.f36575c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.a.b
        protected final void a() {
            if (this.f36578b == 0) {
                b();
                return;
            }
            a(ao.this.e[this.f36579c]);
            this.f36579c = (this.f36579c + 1) % ao.this.f36574b;
            this.f36578b--;
        }
    }

    public ao(int i) {
        this(new Object[i], 0);
    }

    public ao(Object[] buffer, int i) {
        p.d(buffer, "buffer");
        this.e = buffer;
        boolean z = true;
        if (i >= 0) {
            if (i > buffer.length) {
                z = false;
            }
            if (z) {
                this.f36574b = buffer.length;
                this.f36576d = i;
                return;
            }
            throw new IllegalArgumentException(("ring buffer filled size: " + i + " cannot be larger than the buffer size: " + buffer.length).toString());
        }
        throw new IllegalArgumentException("ring buffer filled size should not be negative but it is ".concat(String.valueOf(i)).toString());
    }

    @Override // kotlin.a.a
    public final int a() {
        return this.f36576d;
    }

    public final void a(int i) {
        boolean z = true;
        if (i >= 0) {
            if (i > size()) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i + ", size = " + size()).toString());
            } else if (i > 0) {
                int i2 = this.f36575c;
                int i3 = this.f36574b;
                int i4 = (i2 + i) % i3;
                if (i2 > i4) {
                    i.a(this.e, (Object) null, i2, i3);
                    i.a(this.e, (Object) null, 0, i4);
                } else {
                    i.a(this.e, (Object) null, i2, i4);
                }
                this.f36575c = i4;
                this.f36576d = size() - i;
            }
        } else {
            throw new IllegalArgumentException("n shouldn't be negative but it is ".concat(String.valueOf(i)).toString());
        }
    }

    public final boolean b() {
        return size() == this.f36574b;
    }

    @Override // kotlin.a.d, java.util.List
    public final T get(int i) {
        d.a.a(i, size());
        return (T) this.e[(this.f36575c + i) % this.f36574b];
    }

    @Override // kotlin.a.d, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<T> iterator() {
        return new a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.a.a, java.util.Collection
    public final Object[] toArray() {
        return toArray(new Object[size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.a.a, java.util.Collection
    public final <T> T[] toArray(T[] array) {
        int i;
        int i2;
        p.d(array, "array");
        T[] tArr = array;
        if (array.length < size()) {
            tArr = (T[]) Arrays.copyOf(array, size());
            p.b(tArr, "java.util.Arrays.copyOf(this, newSize)");
        }
        int size = size();
        int i3 = this.f36575c;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i4 >= size) {
                break;
            }
            i = 0;
            i2 = i4;
            if (i3 >= this.f36574b) {
                break;
            }
            tArr[i4] = this.e[i3];
            i4++;
            i3++;
        }
        while (i2 < size) {
            tArr[i2] = this.e[i];
            i2++;
            i++;
        }
        if (tArr.length > size()) {
            tArr[size()] = null;
        }
        Objects.requireNonNull(tArr, "null cannot be cast to non-null type kotlin.Array<T>");
        return tArr;
    }
}
