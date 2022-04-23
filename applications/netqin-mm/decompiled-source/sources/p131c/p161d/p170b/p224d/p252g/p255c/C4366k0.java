package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzci;
import com.google.android.gms.internal.clearcut.zzcn;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.c.k0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/k0.class */
public final class C4366k0 extends AbstractC4374l<Integer> implements zzcn<Integer>, RandomAccess {

    /* renamed from: d */
    public static final C4366k0 f16540d;

    /* renamed from: b */
    public int[] f16541b;

    /* renamed from: c */
    public int f16542c;

    static {
        C4366k0 k0Var = new C4366k0();
        f16540d = k0Var;
        k0Var.zzv();
    }

    public C4366k0() {
        this(new int[10], 0);
    }

    public C4366k0(int[] iArr, int i) {
        this.f16541b = iArr;
        this.f16542c = i;
    }

    /* renamed from: b */
    public static C4366k0 m25888b() {
        return f16540d;
    }

    /* renamed from: a */
    public final void m25890a(int i) {
        m25889a(this.f16542c, i);
    }

    /* renamed from: a */
    public final void m25889a(int i, int i2) {
        int i3;
        m25822a();
        if (i < 0 || i > (i3 = this.f16542c)) {
            throw new IndexOutOfBoundsException(m25886l(i));
        }
        int[] iArr = this.f16541b;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f16541b, i, iArr2, i + 1, this.f16542c - i);
            this.f16541b = iArr2;
        }
        this.f16541b[i] = i2;
        this.f16542c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m25889a(i, ((Integer) obj).intValue());
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m25822a();
        zzci.m10701a(collection);
        if (!(collection instanceof C4366k0)) {
            return super.addAll(collection);
        }
        C4366k0 k0Var = (C4366k0) collection;
        int i = k0Var.f16542c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16542c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f16541b;
            if (i3 > iArr.length) {
                this.f16541b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(k0Var.f16541b, 0, this.f16541b, this.f16542c, k0Var.f16542c);
            this.f16542c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    /* renamed from: c */
    public final /* synthetic */ zzcn<Integer> mo10687c(int i) {
        if (i >= this.f16542c) {
            return new C4366k0(Arrays.copyOf(this.f16541b, i), this.f16542c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4366k0)) {
            return super.equals(obj);
        }
        C4366k0 k0Var = (C4366k0) obj;
        if (this.f16542c != k0Var.f16542c) {
            return false;
        }
        int[] iArr = k0Var.f16541b;
        for (int i = 0; i < this.f16542c; i++) {
            if (this.f16541b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final void m25887f(int i) {
        if (i < 0 || i >= this.f16542c) {
            throw new IndexOutOfBoundsException(m25886l(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    public final int getInt(int i) {
        m25887f(i);
        return this.f16541b[i];
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16542c; i2++) {
            i = (i * 31) + this.f16541b[i2];
        }
        return i;
    }

    /* renamed from: l */
    public final String m25886l(int i) {
        int i2 = this.f16542c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25822a();
        m25887f(i);
        int[] iArr = this.f16541b;
        int i2 = iArr[i];
        int i3 = this.f16542c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, i3 - i);
        }
        this.f16542c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m25822a();
        for (int i = 0; i < this.f16542c; i++) {
            if (obj.equals(Integer.valueOf(this.f16541b[i]))) {
                int[] iArr = this.f16541b;
                System.arraycopy(iArr, i + 1, iArr, i, this.f16542c - i);
                this.f16542c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25822a();
        if (i2 >= i) {
            int[] iArr = this.f16541b;
            System.arraycopy(iArr, i2, iArr, i, this.f16542c - i2);
            this.f16542c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m25822a();
        m25887f(i);
        int[] iArr = this.f16541b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16542c;
    }
}
