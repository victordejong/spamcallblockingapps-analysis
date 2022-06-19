package kotlin.reflect.jvm.internal.impl.utils;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
/* renamed from: kotlin.reflect.jvm.internal.impl.utils.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/h.class */
public final class C20023h<E> extends AbstractList<E> implements RandomAccess {

    /* renamed from: a */
    private int f66378a;

    /* renamed from: b */
    private Object f66379b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/h$a.class */
    static final class C20025a<T> implements Iterator<T> {

        /* renamed from: a */
        private static final C20025a f66380a = new C20025a();

        private C20025a() {
        }

        /* renamed from: a */
        public static <T> C20025a<T> m1191a() {
            return f66380a;
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

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/h$b.class */
    final class C20026b extends AbstractC20027c<E> {

        /* renamed from: b */
        private final int f66382b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20026b() {
            super();
            C20023h.this = r4;
            this.f66382b = r4.modCount;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20023h.AbstractC20027c
        /* renamed from: a */
        protected final E mo1190a() {
            return (E) C20023h.this.f66379b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20023h.AbstractC20027c
        /* renamed from: b */
        protected final void mo1189b() {
            if (C20023h.this.modCount == this.f66382b) {
                return;
            }
            throw new ConcurrentModificationException("ModCount: " + C20023h.this.modCount + "; expected: " + this.f66382b);
        }

        @Override // java.util.Iterator
        public final void remove() {
            mo1189b();
            C20023h.this.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.h$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/h$c.class */
    public static abstract class AbstractC20027c<T> implements Iterator<T> {

        /* renamed from: a */
        private boolean f66383a;

        private AbstractC20027c() {
        }

        /* renamed from: a */
        protected abstract T mo1190a();

        /* renamed from: b */
        protected abstract void mo1189b();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.f66383a;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!this.f66383a) {
                this.f66383a = true;
                mo1189b();
                return mo1190a();
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: a */
    private static /* synthetic */ void m1196a(int i) {
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
        if (i < 0 || i > (i2 = this.f66378a)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f66378a);
        }
        if (i2 == 0) {
            this.f66379b = e;
        } else if (i2 == 1 && i == 0) {
            this.f66379b = new Object[]{e, this.f66379b};
        } else {
            Object[] objArr = new Object[i2 + 1];
            if (i2 == 1) {
                objArr[0] = this.f66379b;
            } else {
                Object[] objArr2 = (Object[]) this.f66379b;
                System.arraycopy(objArr2, 0, objArr, 0, i);
                System.arraycopy(objArr2, i, objArr, i + 1, this.f66378a - i);
            }
            objArr[i] = e;
            this.f66379b = objArr;
        }
        this.f66378a++;
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        int i = this.f66378a;
        if (i == 0) {
            this.f66379b = e;
        } else if (i == 1) {
            this.f66379b = new Object[]{this.f66379b, e};
        } else {
            Object[] objArr = (Object[]) this.f66379b;
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
                this.f66379b = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
            }
            objArr2[this.f66378a] = e;
        }
        this.f66378a++;
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f66379b = null;
        this.f66378a = 0;
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.f66378a)) {
            return i2 == 1 ? (E) this.f66379b : (E) ((Object[]) this.f66379b)[i];
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f66378a);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        int i = this.f66378a;
        if (i == 0) {
            C20025a m1191a = C20025a.m1191a();
            if (m1191a == null) {
                m1196a(2);
            }
            return m1191a;
        } else if (i == 1) {
            return new C20026b();
        } else {
            Iterator<E> it2 = super.iterator();
            if (it2 == null) {
                m1196a(3);
            }
            return it2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [java.lang.Object[], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v30, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.lang.Object] */
    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        int i2;
        E e;
        if (i < 0 || i >= (i2 = this.f66378a)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f66378a);
        }
        if (i2 == 1) {
            e = this.f66379b;
            this.f66379b = null;
        } else {
            ?? r0 = (Object[]) this.f66379b;
            e = r0[i];
            if (i2 == 2) {
                this.f66379b = r0[1 - i];
            } else {
                int i3 = (i2 - i) - 1;
                if (i3 > 0) {
                    System.arraycopy(r0, i + 1, r0, i, i3);
                }
                r0[this.f66378a - 1] = 0;
            }
        }
        this.f66378a--;
        this.modCount++;
        return e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Object] */
    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        int i2;
        E e2;
        if (i < 0 || i >= (i2 = this.f66378a)) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f66378a);
        }
        if (i2 == 1) {
            ?? r0 = this.f66379b;
            this.f66379b = e;
            e2 = r0;
        } else {
            ?? r02 = (Object[]) this.f66379b;
            ?? r03 = r02[i];
            r02[i] = e;
            e2 = r03;
        }
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f66378a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        if (tArr == 0) {
            m1196a(4);
        }
        int length = tArr.length;
        int i = this.f66378a;
        if (i == 1) {
            if (length == 0) {
                T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
                tArr2[0] = this.f66379b;
                if (tArr2 == 0) {
                    m1196a(5);
                }
                return tArr2;
            }
            tArr[0] = this.f66379b;
        } else if (length < i) {
            T[] tArr3 = (T[]) Arrays.copyOf((Object[]) this.f66379b, i, tArr.getClass());
            if (tArr3 == null) {
                m1196a(6);
            }
            return tArr3;
        } else if (i != 0) {
            System.arraycopy(this.f66379b, 0, tArr, 0, i);
        }
        int i2 = this.f66378a;
        if (length > i2) {
            tArr[i2] = 0;
        }
        if (tArr == 0) {
            m1196a(7);
        }
        return tArr;
    }
}
