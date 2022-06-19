package p255u7;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Queue;
/* renamed from: u7.b */
/* loaded from: classes2-dex2jar.jar:u7/b.class */
public class C4535b<E> extends AbstractCollection<E> implements Queue, Cloneable, Serializable {

    /* renamed from: a */
    public transient Object[] f13943a = new Object[16];

    /* renamed from: b */
    public transient int f13944b;

    /* renamed from: c */
    public transient int f13945c;

    /* renamed from: u7.b$b */
    /* loaded from: classes2-dex2jar.jar:u7/b$b.class */
    public class C4537b implements Iterator<E> {

        /* renamed from: a */
        public int f13946a;

        /* renamed from: b */
        public int f13947b;

        /* renamed from: c */
        public int f13948c = -1;

        public C4537b(C4536a c4536a) {
            C4535b.this = r4;
            this.f13946a = r4.f13944b;
            this.f13947b = r4.f13945c;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13946a != this.f13947b;
        }

        @Override // java.util.Iterator
        public E next() {
            int i = this.f13946a;
            int i2 = this.f13947b;
            if (i != i2) {
                C4535b c4535b = C4535b.this;
                Object[] objArr = c4535b.f13943a;
                E e = (E) objArr[i];
                if (c4535b.f13945c != i2 || e == null) {
                    throw new ConcurrentModificationException();
                }
                this.f13948c = i;
                this.f13946a = (i + 1) & (objArr.length - 1);
                return e;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            int i = this.f13948c;
            if (i >= 0) {
                if (C4535b.this.m859b(i)) {
                    int i2 = this.f13946a;
                    C4535b c4535b = C4535b.this;
                    this.f13946a = (i2 - 1) & (c4535b.f13943a.length - 1);
                    this.f13947b = c4535b.f13945c;
                }
                this.f13948c = -1;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final <T> T[] m860a(T[] tArr) {
        int i = this.f13944b;
        int i2 = this.f13945c;
        if (i < i2) {
            System.arraycopy(this.f13943a, i, tArr, 0, size());
        } else if (i > i2) {
            Object[] objArr = this.f13943a;
            int length = objArr.length - i;
            System.arraycopy(objArr, i, tArr, 0, length);
            System.arraycopy(this.f13943a, 0, tArr, length, this.f13945c);
        }
        return tArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(E e) {
        addLast(e);
        return true;
    }

    public void addFirst(E e) {
        Objects.requireNonNull(e, "e == null");
        Object[] objArr = this.f13943a;
        int length = (this.f13944b - 1) & (objArr.length - 1);
        this.f13944b = length;
        objArr[length] = e;
        if (length == this.f13945c) {
            m858c();
        }
    }

    public void addLast(E e) {
        Objects.requireNonNull(e, "e == null");
        Object[] objArr = this.f13943a;
        int i = this.f13945c;
        objArr[i] = e;
        int length = (objArr.length - 1) & (i + 1);
        this.f13945c = length;
        if (length == this.f13944b) {
            m858c();
        }
    }

    /* renamed from: b */
    public final boolean m859b(int i) {
        Object[] objArr = this.f13943a;
        int length = objArr.length - 1;
        int i2 = this.f13944b;
        int i3 = this.f13945c;
        int i4 = (i - i2) & length;
        int i5 = (i3 - i) & length;
        if (i4 < ((i3 - i2) & length)) {
            if (i4 < i5) {
                if (i2 <= i) {
                    System.arraycopy(objArr, i2, objArr, i2 + 1, i4);
                } else {
                    System.arraycopy(objArr, 0, objArr, 1, i);
                    objArr[0] = objArr[length];
                    System.arraycopy(objArr, i2, objArr, i2 + 1, length - i2);
                }
                objArr[i2] = null;
                this.f13944b = (i2 + 1) & length;
                return false;
            } else if (i < i3) {
                System.arraycopy(objArr, i + 1, objArr, i, i5);
                this.f13945c = i3 - 1;
                return true;
            } else {
                System.arraycopy(objArr, i + 1, objArr, i, length - i);
                objArr[length] = objArr[0];
                System.arraycopy(objArr, 1, objArr, 0, i3);
                this.f13945c = (i3 - 1) & length;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: c */
    public final void m858c() {
        int i = this.f13944b;
        Object[] objArr = this.f13943a;
        int length = objArr.length;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 >= 0) {
            Object[] objArr2 = new Object[i3];
            System.arraycopy(objArr, i, objArr2, 0, i2);
            System.arraycopy(this.f13943a, 0, objArr2, i2, i);
            this.f13943a = objArr2;
            this.f13944b = 0;
            this.f13945c = length;
            return;
        }
        throw new IllegalStateException("Sorry, deque too big");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        int i;
        int i2 = this.f13944b;
        int i3 = this.f13945c;
        if (i2 != i3) {
            this.f13945c = 0;
            this.f13944b = 0;
            int length = this.f13943a.length;
            do {
                this.f13943a[i2] = null;
                i = (i2 + 1) & (length - 1);
                i2 = i;
            } while (i != i3);
        }
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            C4535b c4535b = (C4535b) super.clone();
            Object[] objArr = this.f13943a;
            System.arraycopy(objArr, 0, c4535b.f13943a, 0, objArr.length);
            return c4535b;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f13943a.length;
        int i = this.f13944b;
        while (true) {
            int i2 = i;
            Object obj2 = this.f13943a[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                return true;
            }
            i = (i2 + 1) & (length - 1);
        }
    }

    @Override // java.util.Queue
    public E element() {
        E e = (E) this.f13943a[this.f13944b];
        if (e != null) {
            return e;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f13944b == this.f13945c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new C4537b(null);
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        addLast(e);
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        return (E) this.f13943a[this.f13944b];
    }

    @Override // java.util.Queue
    public E poll() {
        return pollFirst();
    }

    public E pollFirst() {
        int i = this.f13944b;
        Object[] objArr = this.f13943a;
        E e = (E) objArr[i];
        if (e == null) {
            return null;
        }
        objArr[i] = null;
        this.f13944b = (i + 1) & (objArr.length - 1);
        return e;
    }

    @Override // java.util.Queue
    public E remove() {
        E pollFirst = pollFirst();
        if (pollFirst != null) {
            return pollFirst;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        boolean z;
        if (obj == null) {
            z = false;
        } else {
            int length = this.f13943a.length;
            int i = this.f13944b;
            while (true) {
                int i2 = i;
                Object obj2 = this.f13943a[i2];
                z = false;
                if (obj2 == null) {
                    break;
                } else if (obj.equals(obj2)) {
                    m859b(i2);
                    z = true;
                    break;
                } else {
                    i = (i2 + 1) & (length - 1);
                }
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return (this.f13945c - this.f13944b) & (this.f13943a.length - 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        m860a(objArr);
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.Object[]] */
    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        T[] tArr2 = tArr;
        if (tArr.length < size) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
        }
        m860a(tArr2);
        if (tArr2.length > size) {
            tArr2[size] = null;
        }
        return tArr2;
    }
}
