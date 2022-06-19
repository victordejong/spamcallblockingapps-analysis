package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcr.class */
final class dcr extends dbc<Float> implements dde<Float>, det, RandomAccess {

    /* renamed from: a */
    private static final dcr f14059a;

    /* renamed from: b */
    private float[] f14060b;

    /* renamed from: c */
    private int f14061c;

    static {
        dcr dcrVar = new dcr(new float[0], 0);
        f14059a = dcrVar;
        dcrVar.mo10038b();
    }

    dcr() {
        this(new float[10], 0);
    }

    private dcr(float[] fArr, int i) {
        this.f14060b = fArr;
        this.f14061c = i;
    }

    /* renamed from: b */
    private final void m10101b(int i) {
        if (i < 0 || i >= this.f14061c) {
            throw new IndexOutOfBoundsException(m10100c(i));
        }
    }

    /* renamed from: c */
    private final String m10100c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f14061c).toString();
    }

    @Override // com.google.android.gms.internal.ads.dde
    /* renamed from: a */
    public final /* synthetic */ dde<Float> mo9923a(int i) {
        if (i < this.f14061c) {
            throw new IllegalArgumentException();
        }
        return new dcr(Arrays.copyOf(this.f14060b, i), this.f14061c);
    }

    /* renamed from: a */
    public final void m10102a(float f) {
        m10248c();
        if (this.f14061c == this.f14060b.length) {
            float[] fArr = new float[((this.f14061c * 3) / 2) + 1];
            System.arraycopy(this.f14060b, 0, fArr, 0, this.f14061c);
            this.f14060b = fArr;
        }
        float[] fArr2 = this.f14060b;
        int i = this.f14061c;
        this.f14061c = i + 1;
        fArr2[i] = f;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m10248c();
        if (i < 0 || i > this.f14061c) {
            throw new IndexOutOfBoundsException(m10100c(i));
        }
        if (this.f14061c < this.f14060b.length) {
            System.arraycopy(this.f14060b, i, this.f14060b, i + 1, this.f14061c - i);
        } else {
            float[] fArr = new float[((this.f14061c * 3) / 2) + 1];
            System.arraycopy(this.f14060b, 0, fArr, 0, i);
            System.arraycopy(this.f14060b, i, fArr, i + 1, this.f14061c - i);
            this.f14060b = fArr;
        }
        this.f14060b[i] = floatValue;
        this.f14061c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m10102a(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        boolean z = false;
        m10248c();
        dcz.m10047a(collection);
        if (!(collection instanceof dcr)) {
            z = super.addAll(collection);
        } else {
            dcr dcrVar = (dcr) collection;
            if (dcrVar.f14061c != 0) {
                if (Integer.MAX_VALUE - this.f14061c < dcrVar.f14061c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f14061c + dcrVar.f14061c;
                if (i > this.f14060b.length) {
                    this.f14060b = Arrays.copyOf(this.f14060b, i);
                }
                System.arraycopy(dcrVar.f14060b, 0, this.f14060b, this.f14061c, dcrVar.f14061c);
                this.f14061c = i;
                this.modCount++;
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (!(obj instanceof dcr)) {
            z = super.equals(obj);
        } else {
            dcr dcrVar = (dcr) obj;
            z = false;
            if (this.f14061c == dcrVar.f14061c) {
                float[] fArr = dcrVar.f14060b;
                int i = 0;
                while (true) {
                    if (i >= this.f14061c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (Float.floatToIntBits(this.f14060b[i]) != Float.floatToIntBits(fArr[i])) {
                        break;
                    }
                    i++;
                }
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m10101b(i);
        return Float.valueOf(this.f14060b[i]);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f14061c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f14060b[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m10248c();
        m10101b(i);
        float f = this.f14060b[i];
        if (i < this.f14061c - 1) {
            System.arraycopy(this.f14060b, i + 1, this.f14060b, i, (this.f14061c - i) - 1);
        }
        this.f14061c--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m10248c();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f14061c) {
                break;
            } else if (obj.equals(Float.valueOf(this.f14060b[i]))) {
                System.arraycopy(this.f14060b, i + 1, this.f14060b, i, (this.f14061c - i) - 1);
                this.f14061c--;
                this.modCount++;
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m10248c();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.f14060b, i2, this.f14060b, i, this.f14061c - i2);
        this.f14061c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m10248c();
        m10101b(i);
        float f = this.f14060b[i];
        this.f14060b[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14061c;
    }
}
