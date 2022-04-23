package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ex1.class */
public final class ex1<K, V> {

    /* renamed from: a */
    Object[] f6464a = new Object[14];

    /* renamed from: b */
    int f6465b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ex1(int i) {
    }

    /* renamed from: a */
    public final ex1<K, V> m7582a(K k, V v) {
        int i = this.f6465b + 1;
        int i2 = i + i;
        Object[] objArr = this.f6464a;
        int length = objArr.length;
        if (i2 > length) {
            this.f6464a = Arrays.copyOf(objArr, cx1.m7769b(length, i2));
        }
        xw1.m4820a(k, v);
        Object[] objArr2 = this.f6464a;
        int i3 = this.f6465b;
        int i4 = i3 + i3;
        objArr2[i4] = k;
        objArr2[i4 + 1] = v;
        this.f6465b = i3 + 1;
        return this;
    }

    /* renamed from: b */
    public final zzedg<K, V> m7581b() {
        return zzedt.zzh(this.f6465b, this.f6464a);
    }
}
