package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yw2.class */
class yw2<E> extends zw2<E> {

    /* renamed from: a */
    Object[] f32687a;

    /* renamed from: b */
    int f32688b = 0;

    /* renamed from: c */
    boolean f32689c;

    public yw2(int i) {
        this.f32687a = new Object[i];
    }

    /* renamed from: e */
    private final void m8669e(int i) {
        Object[] objArr = this.f32687a;
        int length = objArr.length;
        if (length < i) {
            this.f32687a = Arrays.copyOf(objArr, zw2.m8154b(length, i));
            this.f32689c = false;
        } else if (!this.f32689c) {
        } else {
            this.f32687a = (Object[]) objArr.clone();
            this.f32689c = false;
        }
    }

    /* renamed from: c */
    public final yw2<E> m8671c(E e) {
        Objects.requireNonNull(e);
        m8669e(this.f32688b + 1);
        Object[] objArr = this.f32687a;
        int i = this.f32688b;
        this.f32688b = i + 1;
        objArr[i] = e;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final zw2<E> m8670d(Iterable<? extends E> iterable) {
        m8669e(this.f32688b + iterable.size());
        if (iterable instanceof zzfoe) {
            this.f32688b = ((zzfoe) iterable).zzg(this.f32687a, this.f32688b);
            return this;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            mo8155a(it.next());
        }
        return this;
    }
}
