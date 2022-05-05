package com.google.a.b;

import com.google.a.a.d;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/a/b/w.class */
public class w<E> extends m<E> {

    /* renamed from: a  reason: collision with root package name */
    private final transient int f3726a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f3727b;
    private final transient Object[] d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Object[] objArr) {
        this(objArr, 0, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Object[] objArr, int i, int i2) {
        this.f3726a = i;
        this.f3727b = i2;
        this.d = objArr;
    }

    @Override // com.google.a.b.m
    /* renamed from: a */
    public final af<E> listIterator(int i) {
        return new a<E>(this.f3727b, i) { // from class: com.google.a.b.w.1
            @Override // com.google.a.b.a
            protected final E a(int i2) {
                return (E) w.this.d[w.this.f3726a + i2];
            }
        };
    }

    @Override // com.google.a.b.m
    /* renamed from: a */
    public final m<E> subList(int i, int i2) {
        d.a(i, i2, this.f3727b);
        return i == i2 ? f.f3694a : new w<>(this.d, this.f3726a + i, i2 - i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.a.b.k
    public final boolean a() {
        return (this.f3726a == 0 && this.f3727b == this.d.length) ? false : true;
    }

    @Override // com.google.a.b.m, com.google.a.b.k
    /* renamed from: b */
    public final ae<E> iterator() {
        return q.a(this.d, this.f3726a, this.f3727b);
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.a.b.m, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else if (!(obj instanceof List)) {
            z = false;
        } else {
            List<E> list = (List) obj;
            if (size() != list.size()) {
                z = false;
            } else {
                int i = this.f3726a;
                if (obj instanceof w) {
                    w wVar = (w) obj;
                    int i2 = wVar.f3726a;
                    while (i2 < wVar.f3726a + wVar.f3727b) {
                        if (!this.d[i].equals(wVar.d[i2])) {
                            z = false;
                            break;
                        }
                        i2++;
                        i++;
                    }
                    z = true;
                } else {
                    for (E e : list) {
                        if (!this.d[i].equals(e)) {
                            z = false;
                            break;
                        }
                        i++;
                    }
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.util.List
    public E get(int i) {
        d.a(i, this.f3727b);
        return (E) this.d[this.f3726a + i];
    }

    @Override // com.google.a.b.m, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = this.f3726a; i2 < this.f3726a + this.f3727b; i2++) {
            i = (i * 31) + this.d[i2].hashCode();
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        int i;
        if (obj != null) {
            for (int i2 = this.f3726a; i2 < this.f3726a + this.f3727b; i2++) {
                if (this.d[i2].equals(obj)) {
                    i = i2 - this.f3726a;
                    break;
                }
            }
        }
        i = -1;
        return i;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return false;
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        int i;
        if (obj != null) {
            for (int i2 = (this.f3726a + this.f3727b) - 1; i2 >= this.f3726a; i2--) {
                if (this.d[i2].equals(obj)) {
                    i = i2 - this.f3726a;
                    break;
                }
            }
        }
        i = -1;
        return i;
    }

    @Override // java.util.Collection, java.util.List
    public int size() {
        return this.f3727b;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        System.arraycopy(this.d, this.f3726a, objArr, 0, this.f3727b);
        return objArr;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        if (tArr.length < this.f3727b) {
            tArr2 = (T[]) u.a(tArr, this.f3727b);
        } else {
            tArr2 = tArr;
            if (tArr.length > this.f3727b) {
                tArr[this.f3727b] = null;
                tArr2 = tArr;
            }
        }
        System.arraycopy(this.d, this.f3726a, tArr2, 0, this.f3727b);
        return tArr2;
    }

    @Override // com.google.a.b.k
    public String toString() {
        StringBuilder append = e.a(size()).append('[').append(this.d[this.f3726a]);
        for (int i = this.f3726a + 1; i < this.f3726a + this.f3727b; i++) {
            append.append(", ").append(this.d[i]);
        }
        return append.append(']').toString();
    }
}
