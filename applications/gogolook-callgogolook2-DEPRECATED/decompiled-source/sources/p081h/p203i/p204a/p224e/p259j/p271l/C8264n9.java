package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.l.n9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/n9.class */
public final class C8264n9 extends AbstractC8145h8<Integer> implements AbstractC8353s9, AbstractC8109fb, RandomAccess {

    /* renamed from: d */
    public static final C8264n9 f19099d;

    /* renamed from: b */
    public int[] f19100b;

    /* renamed from: c */
    public int f19101c;

    static {
        C8264n9 n9Var = new C8264n9(new int[0], 0);
        f19099d = n9Var;
        n9Var.mo18116e();
    }

    public C8264n9() {
        this(new int[10], 0);
    }

    public C8264n9(int[] iArr, int i) {
        this.f19100b = iArr;
        this.f19101c = i;
    }

    /* renamed from: c */
    public static C8264n9 m18256c() {
        return f19099d;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m18479b();
        if (i < 0 || i > (i2 = this.f19101c)) {
            throw new IndexOutOfBoundsException(m18254h(i));
        }
        int[] iArr = this.f19100b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f19100b, i, iArr2, i + 1, this.f19101c - i);
            this.f19100b = iArr2;
        }
        this.f19100b[i] = intValue;
        this.f19101c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m18252j(((Integer) obj).intValue());
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m18479b();
        C8302p9.m18205a(collection);
        if (!(collection instanceof C8264n9)) {
            return super.addAll(collection);
        }
        C8264n9 n9Var = (C8264n9) collection;
        int i = n9Var.f19101c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19101c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f19100b;
            if (i3 > iArr.length) {
                this.f19100b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(n9Var.f19100b, 0, this.f19100b, this.f19101c, n9Var.f19101c);
            this.f19101c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8264n9)) {
            return super.equals(obj);
        }
        C8264n9 n9Var = (C8264n9) obj;
        if (this.f19101c != n9Var.f19101c) {
            return false;
        }
        int[] iArr = n9Var.f19100b;
        for (int i = 0; i < this.f19101c; i++) {
            if (this.f19100b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final void m18255g(int i) {
        if (i < 0 || i >= this.f19101c) {
            throw new IndexOutOfBoundsException(m18254h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    public final int getInt(int i) {
        m18255g(i);
        return this.f19100b[i];
    }

    /* renamed from: h */
    public final String m18254h(int i) {
        int i2 = this.f19101c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19101c; i2++) {
            i = (i * 31) + this.f19100b[i2];
        }
        return i;
    }

    /* renamed from: i */
    public final AbstractC8353s9 mo18117b(int i) {
        if (i >= this.f19101c) {
            return new C8264n9(Arrays.copyOf(this.f19100b, i), this.f19101c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f19100b[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public final void m18252j(int i) {
        m18479b();
        int i2 = this.f19101c;
        int[] iArr = this.f19100b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f19100b = iArr2;
        }
        int[] iArr3 = this.f19100b;
        int i3 = this.f19101c;
        this.f19101c = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m18479b();
        m18255g(i);
        int[] iArr = this.f19100b;
        int i2 = iArr[i];
        int i3 = this.f19101c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f19101c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8145h8, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m18479b();
        for (int i = 0; i < this.f19101c; i++) {
            if (obj.equals(Integer.valueOf(this.f19100b[i]))) {
                int[] iArr = this.f19100b;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f19101c - i) - 1);
                this.f19101c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m18479b();
        if (i2 >= i) {
            int[] iArr = this.f19100b;
            System.arraycopy(iArr, i2, iArr, i, this.f19101c - i2);
            this.f19101c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m18479b();
        m18255g(i);
        int[] iArr = this.f19100b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19101c;
    }
}
