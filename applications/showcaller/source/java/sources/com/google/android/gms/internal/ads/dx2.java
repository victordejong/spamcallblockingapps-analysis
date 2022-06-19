package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dx2.class */
public final class dx2<K, V> {

    /* renamed from: a */
    Object[] f21914a;

    /* renamed from: b */
    int f21915b;

    public dx2() {
        this(4);
    }

    public dx2(int i) {
        this.f21914a = new Object[i + i];
        this.f21915b = 0;
    }

    /* renamed from: d */
    private final void m15655d(int i) {
        int i2 = i + i;
        Object[] objArr = this.f21914a;
        int length = objArr.length;
        if (i2 > length) {
            this.f21914a = Arrays.copyOf(objArr, zw2.m8154b(length, i2));
        }
    }

    /* renamed from: a */
    public final dx2<K, V> m15658a(K k, V v) {
        m15655d(this.f21915b + 1);
        gw2.m14795a(k, v);
        Object[] objArr = this.f21914a;
        int i = this.f21915b;
        int i2 = i + i;
        objArr[i2] = k;
        objArr[i2 + 1] = v;
        this.f21915b = i + 1;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final dx2<K, V> m15657b(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        if (iterable instanceof Collection) {
            m15655d(this.f21915b + iterable.size());
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            m15658a(entry.getKey(), entry.getValue());
        }
        return this;
    }

    /* renamed from: c */
    public final zzfon<K, V> m15656c() {
        return zzfqc.zzh(this.f21915b, this.f21914a);
    }
}
