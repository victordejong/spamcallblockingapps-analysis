package kotlin.reflect.jvm.internal.impl.utils;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/h.class */
public final class h<E> extends AbstractList<E> implements RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private int f38523a;

    /* renamed from: b  reason: collision with root package name */
    private Object f38524b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/h$a.class */
    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private static final a f38525a = new a();

        private a() {
        }

        public static <T> a<T> a() {
            return f38525a;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final T next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/h$b.class */
    final class b extends c<E> {

        /* renamed from: b  reason: collision with root package name */
        private final int f38527b;

        public b() {
            super();
            this.f38527b = h.this.modCount;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.h.c
        protected final E a() {
            return (E) h.this.f38524b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.h.c
        protected final void b() {
            if (h.this.modCount != this.f38527b) {
                throw new ConcurrentModificationException("ModCount: " + h.this.modCount + "; expected: " + this.f38527b);
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            b();
            h.this.clear();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/h$c.class */
    static abstract class c<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f38528a;

        private c() {
        }

        protected abstract T a();

        protected abstract void b();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.f38528a;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!this.f38528a) {
                this.f38528a = true;
                b();
                return a();
            }
            throw new NoSuchElementException();
        }
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 2 || i == 3 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 5 || i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
                break;
            case 4:
                objArr[0] = "a";
                break;
            default:
                objArr[0] = "elements";
                break;
        }
        if (i == 2 || i == 3) {
            objArr[1] = "iterator";
        } else if (i == 5 || i == 6 || i == 7) {
            objArr[1] = "toArray";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
        }
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                break;
            case 4:
                objArr[2] = "toArray";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 2 || i == 3 || i == 5 || i == 6 || i == 7) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        if (i < 0 || i > (i2 = this.f38523a)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f38523a);
        }
        if (i2 == 0) {
            this.f38524b = e;
        } else if (i2 == 1 && i == 0) {
            this.f38524b = new Object[]{e, this.f38524b};
        } else {
            Object[] objArr = new Object[i2 + 1];
            if (i2 == 1) {
                objArr[0] = this.f38524b;
            } else {
                Object[] objArr2 = (Object[]) this.f38524b;
                System.arraycopy(objArr2, 0, objArr, 0, i);
                System.arraycopy(objArr2, i, objArr, i + 1, this.f38523a - i);
            }
            objArr[i] = e;
            this.f38524b = objArr;
        }
        this.f38523a++;
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        int i = this.f38523a;
        if (i == 0) {
            this.f38524b = e;
        } else if (i == 1) {
            this.f38524b = new Object[]{this.f38524b, e};
        } else {
            Object[] objArr = (Object[]) this.f38524b;
            int length = objArr.length;
            Object[] objArr2 = objArr;
            if (i >= length) {
                int i2 = ((length * 3) / 2) + 1;
                int i3 = i + 1;
                int i4 = i2;
                if (i2 < i3) {
                    i4 = i3;
                }
                objArr2 = new Object[i4];
                this.f38524b = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
            }
            objArr2[this.f38523a] = e;
        }
        this.f38523a++;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f38524b = null;
        this.f38523a = 0;
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.f38523a)) {
            return i2 == 1 ? (E) this.f38524b : (E) ((Object[]) this.f38524b)[i];
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f38523a);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        int i = this.f38523a;
        if (i == 0) {
            a a2 = a.a();
            if (a2 == null) {
                a(2);
            }
            return a2;
        } else if (i == 1) {
            return new b();
        } else {
            Iterator<E> it2 = super.iterator();
            if (it2 == null) {
                a(3);
            }
            return it2;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        int i2;
        E e;
        if (i < 0 || i >= (i2 = this.f38523a)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f38523a);
        }
        if (i2 == 1) {
            e = (E) this.f38524b;
            this.f38524b = null;
        } else {
            Object[] objArr = (Object[]) this.f38524b;
            e = (E) objArr[i];
            if (i2 == 2) {
                this.f38524b = objArr[1 - i];
            } else {
                int i3 = (i2 - i) - 1;
                if (i3 > 0) {
                    System.arraycopy(objArr, i + 1, objArr, i, i3);
                }
                objArr[this.f38523a - 1] = null;
            }
        }
        this.f38523a--;
        this.modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        int i2;
        E e2;
        if (i < 0 || i >= (i2 = this.f38523a)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f38523a);
        }
        if (i2 == 1) {
            e2 = (E) this.f38524b;
            this.f38524b = e;
        } else {
            Object[] objArr = (Object[]) this.f38524b;
            e2 = (E) objArr[i];
            objArr[i] = e;
        }
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f38523a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        if (tArr == 0) {
            a(4);
        }
        int length = tArr.length;
        int i = this.f38523a;
        if (i == 1) {
            if (length != 0) {
                tArr[0] = this.f38524b;
            } else {
                T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
                tArr2[0] = this.f38524b;
                if (tArr2 == 0) {
                    a(5);
                }
                return tArr2;
            }
        } else if (length < i) {
            T[] tArr3 = (T[]) Arrays.copyOf((Object[]) this.f38524b, i, tArr.getClass());
            if (tArr3 == null) {
                a(6);
            }
            return tArr3;
        } else if (i != 0) {
            System.arraycopy(this.f38524b, 0, tArr, 0, i);
        }
        int i2 = this.f38523a;
        if (length > i2) {
            tArr[i2] = 0;
        }
        if (tArr == 0) {
            a(7);
        }
        return tArr;
    }
}
