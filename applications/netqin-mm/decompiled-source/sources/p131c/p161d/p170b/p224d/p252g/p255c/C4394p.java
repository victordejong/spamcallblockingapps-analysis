package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzci;
import com.google.android.gms.internal.clearcut.zzcn;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.c.p */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/p.class */
public final class C4394p extends AbstractC4374l<Boolean> implements zzcn<Boolean>, RandomAccess {

    /* renamed from: b */
    public boolean[] f16608b;

    /* renamed from: c */
    public int f16609c;

    static {
        new C4394p().zzv();
    }

    public C4394p() {
        this(new boolean[10], 0);
    }

    public C4394p(boolean[] zArr, int i) {
        this.f16608b = zArr;
        this.f16609c = i;
    }

    /* renamed from: a */
    public final void m25736a(int i) {
        if (i < 0 || i >= this.f16609c) {
            throw new IndexOutOfBoundsException(m25733f(i));
        }
    }

    /* renamed from: a */
    public final void m25735a(int i, boolean z) {
        int i2;
        m25822a();
        if (i < 0 || i > (i2 = this.f16609c)) {
            throw new IndexOutOfBoundsException(m25733f(i));
        }
        boolean[] zArr = this.f16608b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f16608b, i, zArr2, i + 1, this.f16609c - i);
            this.f16608b = zArr2;
        }
        this.f16608b[i] = z;
        this.f16609c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public final void m25734a(boolean z) {
        m25735a(this.f16609c, z);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m25735a(i, ((Boolean) obj).booleanValue());
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m25822a();
        zzci.m10701a(collection);
        if (!(collection instanceof C4394p)) {
            return super.addAll(collection);
        }
        C4394p pVar = (C4394p) collection;
        int i = pVar.f16609c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16609c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f16608b;
            if (i3 > zArr.length) {
                this.f16608b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(pVar.f16608b, 0, this.f16608b, this.f16609c, pVar.f16609c);
            this.f16609c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    /* renamed from: c */
    public final /* synthetic */ zzcn<Boolean> mo10687c(int i) {
        if (i >= this.f16609c) {
            return new C4394p(Arrays.copyOf(this.f16608b, i), this.f16609c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4394p)) {
            return super.equals(obj);
        }
        C4394p pVar = (C4394p) obj;
        if (this.f16609c != pVar.f16609c) {
            return false;
        }
        boolean[] zArr = pVar.f16608b;
        for (int i = 0; i < this.f16609c; i++) {
            if (this.f16608b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m25733f(int i) {
        int i2 = this.f16609c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m25736a(i);
        return Boolean.valueOf(this.f16608b[i]);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16609c; i2++) {
            i = (i * 31) + zzci.m10698a(this.f16608b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25822a();
        m25736a(i);
        boolean[] zArr = this.f16608b;
        boolean z = zArr[i];
        int i2 = this.f16609c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, i2 - i);
        }
        this.f16609c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m25822a();
        for (int i = 0; i < this.f16609c; i++) {
            if (obj.equals(Boolean.valueOf(this.f16608b[i]))) {
                boolean[] zArr = this.f16608b;
                System.arraycopy(zArr, i + 1, zArr, i, this.f16609c - i);
                this.f16609c--;
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
            boolean[] zArr = this.f16608b;
            System.arraycopy(zArr, i2, zArr, i, this.f16609c - i2);
            this.f16609c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m25822a();
        m25736a(i);
        boolean[] zArr = this.f16608b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16609c;
    }
}
