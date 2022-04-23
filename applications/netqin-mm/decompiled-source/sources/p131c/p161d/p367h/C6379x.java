package p131c.p161d.p367h;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.h.x */
/* loaded from: classes2-dex2jar.jar:c/d/h/x.class */
public final class C6379x extends AbstractC6285c<Integer> implements C6381y.AbstractC6388g, RandomAccess, AbstractC6378w0 {

    /* renamed from: d */
    public static final C6379x f20047d;

    /* renamed from: b */
    public int[] f20048b;

    /* renamed from: c */
    public int f20049c;

    static {
        C6379x xVar = new C6379x(new int[0], 0);
        f20047d = xVar;
        xVar.mo20999l();
    }

    public C6379x() {
        this(new int[10], 0);
    }

    public C6379x(int[] iArr, int i) {
        this.f20048b = iArr;
        this.f20049c = i;
    }

    /* renamed from: b */
    public static C6379x m21020b() {
        return f20047d;
    }

    /* renamed from: a */
    public final void m21024a(int i) {
        if (i < 0 || i >= this.f20049c) {
            throw new IndexOutOfBoundsException(m21017f(i));
        }
    }

    /* renamed from: a */
    public final void m21023a(int i, int i2) {
        int i3;
        m21675a();
        if (i < 0 || i > (i3 = this.f20049c)) {
            throw new IndexOutOfBoundsException(m21017f(i));
        }
        int[] iArr = this.f20048b;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f20048b, i, iArr2, i + 1, this.f20049c - i);
            this.f20048b = iArr2;
        }
        this.f20048b[i] = i2;
        this.f20049c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public void add(int i, Integer num) {
        m21023a(i, num.intValue());
    }

    /* renamed from: a */
    public boolean add(Integer num) {
        mo21001g(num.intValue());
        return true;
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        m21675a();
        C6381y.m21009a(collection);
        if (!(collection instanceof C6379x)) {
            return super.addAll(collection);
        }
        C6379x xVar = (C6379x) collection;
        int i = xVar.f20049c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f20049c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f20048b;
            if (i3 > iArr.length) {
                this.f20048b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(xVar.f20048b, 0, this.f20048b, this.f20049c, xVar.f20049c);
            this.f20049c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: b */
    public int m21019b(int i, int i2) {
        m21675a();
        m21024a(i);
        int[] iArr = this.f20048b;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6390i
    /* renamed from: b */
    public C6381y.AbstractC6390i<Integer> mo20996b(int i) {
        if (i >= this.f20049c) {
            return new C6379x(Arrays.copyOf(this.f20048b, i), this.f20049c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public Integer set(int i, Integer num) {
        return Integer.valueOf(m21019b(i, num.intValue()));
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6379x)) {
            return super.equals(obj);
        }
        C6379x xVar = (C6379x) obj;
        if (this.f20049c != xVar.f20049c) {
            return false;
        }
        int[] iArr = xVar.f20048b;
        for (int i = 0; i < this.f20049c; i++) {
            if (this.f20048b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m21017f(int i) {
        return "Index:" + i + ", Size:" + this.f20049c;
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6388g
    /* renamed from: g */
    public void mo21001g(int i) {
        m21675a();
        int i2 = this.f20049c;
        int[] iArr = this.f20048b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f20048b = iArr2;
        }
        int[] iArr3 = this.f20048b;
        int i3 = this.f20049c;
        this.f20049c = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public Integer get(int i) {
        return Integer.valueOf(getInt(i));
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6388g
    public int getInt(int i) {
        m21024a(i);
        return this.f20048b[i];
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f20049c; i2++) {
            i = (i * 31) + this.f20048b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public Integer remove(int i) {
        m21675a();
        m21024a(i);
        int[] iArr = this.f20048b;
        int i2 = iArr[i];
        int i3 = this.f20049c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f20049c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m21675a();
        for (int i = 0; i < this.f20049c; i++) {
            if (obj.equals(Integer.valueOf(this.f20048b[i]))) {
                int[] iArr = this.f20048b;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f20049c - i) - 1);
                this.f20049c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m21675a();
        if (i2 >= i) {
            int[] iArr = this.f20048b;
            System.arraycopy(iArr, i2, iArr, i, this.f20049c - i2);
            this.f20049c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f20049c;
    }
}
