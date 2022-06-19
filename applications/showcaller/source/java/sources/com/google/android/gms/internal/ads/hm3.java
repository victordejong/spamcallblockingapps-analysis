package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hm3.class */
public final class hm3<V> {

    /* renamed from: c */
    private final AbstractC6358c9<V> f23982c;

    /* renamed from: b */
    private final SparseArray<V> f23981b = new SparseArray<>();

    /* renamed from: a */
    private int f23980a = -1;

    public hm3(AbstractC6358c9<V> abstractC6358c9) {
        this.f23982c = abstractC6358c9;
    }

    /* renamed from: a */
    public final V m14594a(int i) {
        if (this.f23980a == -1) {
            this.f23980a = 0;
        }
        while (true) {
            int i2 = this.f23980a;
            if (i2 > 0 && i < this.f23981b.keyAt(i2)) {
                this.f23980a--;
            }
        }
        while (this.f23980a < this.f23981b.size() - 1 && i >= this.f23981b.keyAt(this.f23980a + 1)) {
            this.f23980a++;
        }
        return this.f23981b.valueAt(this.f23980a);
    }

    /* renamed from: b */
    public final void m14593b(int i, V v) {
        if (this.f23980a == -1) {
            C7173y8.m8895d(this.f23981b.size() == 0);
            this.f23980a = 0;
        }
        if (this.f23981b.size() > 0) {
            SparseArray<V> sparseArray = this.f23981b;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            C7173y8.m8898a(i >= keyAt);
            if (keyAt == i) {
                SparseArray<V> sparseArray2 = this.f23981b;
                ((yl3) sparseArray2.valueAt(sparseArray2.size() - 1)).f32544b;
            }
        }
        this.f23981b.append(i, v);
    }

    /* renamed from: c */
    public final V m14592c() {
        SparseArray<V> sparseArray = this.f23981b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    /* renamed from: d */
    public final void m14591d(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.f23981b.size() - 1) {
                int i4 = i3 + 1;
                if (i < this.f23981b.keyAt(i4)) {
                    return;
                }
                ((yl3) this.f23981b.valueAt(i3)).f32544b;
                this.f23981b.removeAt(i3);
                int i5 = this.f23980a;
                if (i5 > 0) {
                    this.f23980a = i5 - 1;
                }
                i2 = i4;
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    public final void m14590e() {
        for (int i = 0; i < this.f23981b.size(); i++) {
            ((yl3) this.f23981b.valueAt(i)).f32544b;
        }
        this.f23980a = -1;
        this.f23981b.clear();
    }

    /* renamed from: f */
    public final boolean m14589f() {
        return this.f23981b.size() == 0;
    }
}
