package kotlin.p518a;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.AbstractC18264d;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0010(\n\u0002\b\b\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001d\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0002\u0010\fJ\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028��¢\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001fH\u0096\u0002J\u000e\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0006J\u0015\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0014¢\u0006\u0002\u0010#J'\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\u00010\t\"\u0004\b\u0001\u0010\u00012\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u00010\tH\u0014¢\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00020\u0006*\u00020\u00062\u0006\u0010!\u001a\u00020\u0006H\u0082\bR\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006@RX\u0096\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006'"}, m4298d2 = {"Lkotlin/collections/RingBuffer;", "T", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "capacity", "", "(I)V", "buffer", "", "", "filledSize", "([Ljava/lang/Object;I)V", "[Ljava/lang/Object;", "<set-?>", "size", "getSize", "()I", "startIndex", "add", "", "element", "(Ljava/lang/Object;)V", "expanded", "maxCapacity", "get", "index", "(I)Ljava/lang/Object;", "isFull", "", "iterator", "", "removeFirst", "n", "toArray", "()[Ljava/lang/Object;", "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "forward", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.a.ao */
/* loaded from: classes5-dex2jar.jar:kotlin/a/ao.class */
public final class C18253ao<T> extends AbstractC18264d<T> implements RandomAccess {

    /* renamed from: b */
    final int f63358b;

    /* renamed from: c */
    int f63359c;

    /* renamed from: d */
    int f63360d;

    /* renamed from: e */
    final Object[] f63361e;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0007"}, m4298d2 = {"kotlin/collections/RingBuffer$iterator$1", "Lkotlin/collections/AbstractIterator;", "count", "", "index", "computeNext", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.a.ao$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/a/ao$a.class */
    public static final class C18254a extends AbstractC18262b<T> {

        /* renamed from: b */
        private int f63363b;

        /* renamed from: c */
        private int f63364c;

        C18254a() {
            C18253ao.this = r4;
            this.f63363b = r4.size();
            this.f63364c = r4.f63359c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.p518a.AbstractC18262b
        /* renamed from: a */
        protected final void mo3901a() {
            if (this.f63363b == 0) {
                m4234b();
                return;
            }
            m4235a(C18253ao.this.f63361e[this.f63364c]);
            this.f63364c = (this.f63364c + 1) % C18253ao.this.f63358b;
            this.f63363b--;
        }
    }

    public C18253ao(int i) {
        this(new Object[i], 0);
    }

    public C18253ao(Object[] buffer, int i) {
        C18524p.m3840d(buffer, "buffer");
        this.f63361e = buffer;
        if (i >= 0) {
            if (i <= buffer.length) {
                this.f63358b = buffer.length;
                this.f63360d = i;
                return;
            }
            throw new IllegalArgumentException(("ring buffer filled size: " + i + " cannot be larger than the buffer size: " + buffer.length).toString());
        }
        throw new IllegalArgumentException("ring buffer filled size should not be negative but it is ".concat(String.valueOf(i)).toString());
    }

    @Override // kotlin.p518a.AbstractC18225a
    /* renamed from: a */
    public final int mo3987a() {
        return this.f63360d;
    }

    /* renamed from: a */
    public final void m4245a(int i) {
        if (i >= 0) {
            if (!(i <= size())) {
                throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i + ", size = " + size()).toString());
            } else if (i <= 0) {
                return;
            } else {
                int i2 = this.f63359c;
                int i3 = this.f63358b;
                int i4 = (i2 + i) % i3;
                if (i2 > i4) {
                    C18273i.m4219a(this.f63361e, (Object) null, i2, i3);
                    C18273i.m4219a(this.f63361e, (Object) null, 0, i4);
                } else {
                    C18273i.m4219a(this.f63361e, (Object) null, i2, i4);
                }
                this.f63359c = i4;
                this.f63360d = size() - i;
                return;
            }
        }
        throw new IllegalArgumentException("n shouldn't be negative but it is ".concat(String.valueOf(i)).toString());
    }

    /* renamed from: b */
    public final boolean m4243b() {
        return size() == this.f63358b;
    }

    @Override // kotlin.p518a.AbstractC18264d, java.util.List
    public final T get(int i) {
        AbstractC18264d.C18265a.m4233a(i, size());
        return (T) this.f63361e[(this.f63359c + i) % this.f63358b];
    }

    @Override // kotlin.p518a.AbstractC18264d, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<T> iterator() {
        return new C18254a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.p518a.AbstractC18225a, java.util.Collection
    public final Object[] toArray() {
        return toArray(new Object[size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.lang.Object[]] */
    @Override // kotlin.p518a.AbstractC18225a, java.util.Collection
    public final <T> T[] toArray(T[] array) {
        int i;
        int i2;
        C18524p.m3840d(array, "array");
        T[] tArr = array;
        if (array.length < size()) {
            tArr = Arrays.copyOf(array, size());
            C18524p.m3843b(tArr, "java.util.Arrays.copyOf(this, newSize)");
        }
        int size = size();
        int i3 = this.f63359c;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i4 >= size) {
                break;
            }
            i = 0;
            i2 = i4;
            if (i3 >= this.f63358b) {
                break;
            }
            tArr[i4] = this.f63361e[i3];
            i4++;
            i3++;
        }
        while (i2 < size) {
            tArr[i2] = this.f63361e[i];
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
