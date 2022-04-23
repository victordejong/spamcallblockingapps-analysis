package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzig;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.f.g3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/g3.class */
public final class C4499g3 extends AbstractC4498g2<Float> implements zzig<Float>, AbstractC4507h4, RandomAccess {

    /* renamed from: b */
    public float[] f16750b;

    /* renamed from: c */
    public int f16751c;

    static {
        new C4499g3(new float[0], 0).mo9631H();
    }

    public C4499g3() {
        this(new float[10], 0);
    }

    public C4499g3(float[] fArr, int i) {
        this.f16750b = fArr;
        this.f16751c = i;
    }

    /* renamed from: a */
    public final void m25474a(float f) {
        m25475a();
        int i = this.f16751c;
        float[] fArr = this.f16750b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f16750b = fArr2;
        }
        float[] fArr3 = this.f16750b;
        int i2 = this.f16751c;
        this.f16751c = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        m25475a();
        if (i < 0 || i > (i2 = this.f16751c)) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
        float[] fArr = this.f16750b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f16750b, i, fArr2, i + 1, this.f16751c - i);
            this.f16750b = fArr2;
        }
        this.f16750b[i] = floatValue;
        this.f16751c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m25474a(((Float) obj).floatValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m25475a();
        zzia.m9638a(collection);
        if (!(collection instanceof C4499g3)) {
            return super.addAll(collection);
        }
        C4499g3 g3Var = (C4499g3) collection;
        int i = g3Var.f16751c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16751c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f16750b;
            if (i3 > fArr.length) {
                this.f16750b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(g3Var.f16750b, 0, this.f16750b, this.f16751c, g3Var.f16751c);
            this.f16751c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4499g3)) {
            return super.equals(obj);
        }
        C4499g3 g3Var = (C4499g3) obj;
        if (this.f16751c != g3Var.f16751c) {
            return false;
        }
        float[] fArr = g3Var.f16750b;
        for (int i = 0; i < this.f16751c; i++) {
            if (Float.floatToIntBits(this.f16750b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzb(i);
        return Float.valueOf(this.f16750b[i]);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16751c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f16750b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f16750b[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25475a();
        zzb(i);
        float[] fArr = this.f16750b;
        float f = fArr[i];
        int i2 = this.f16751c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f16751c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25475a();
        if (i2 >= i) {
            float[] fArr = this.f16750b;
            System.arraycopy(fArr, i2, fArr, i, this.f16751c - i2);
            this.f16751c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m25475a();
        zzb(i);
        float[] fArr = this.f16750b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16751c;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* synthetic */ zzig<Float> zza(int i) {
        if (i >= this.f16751c) {
            return new C4499g3(Arrays.copyOf(this.f16750b, i), this.f16751c);
        }
        throw new IllegalArgumentException();
    }

    public final void zzb(int i) {
        if (i < 0 || i >= this.f16751c) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
    }

    public final String zzc(int i) {
        int i2 = this.f16751c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }
}
