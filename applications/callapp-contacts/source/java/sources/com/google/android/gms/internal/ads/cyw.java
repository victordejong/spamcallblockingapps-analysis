package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyw.class */
class cyw<E> extends cyv<E> {

    /* renamed from: a */
    Object[] f46776a;

    /* renamed from: b */
    int f46777b = 0;

    /* renamed from: c */
    boolean f46778c;

    public cyw(int i) {
        cys.m17041a(i, "initialCapacity");
        this.f46776a = new Object[i];
    }

    /* renamed from: a */
    private final void m17038a(int i) {
        Object[] objArr = this.f46776a;
        if (objArr.length >= i) {
            if (!this.f46778c) {
                return;
            }
            this.f46776a = (Object[]) objArr.clone();
            this.f46778c = false;
            return;
        }
        int length = objArr.length;
        if (i < 0) {
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
        int i2 = length + (length >> 1) + 1;
        int i3 = i2;
        if (i2 < i) {
            i3 = Integer.highestOneBit(i - 1) << 1;
        }
        int i4 = i3;
        if (i3 < 0) {
            i4 = Integer.MAX_VALUE;
        }
        this.f46776a = Arrays.copyOf(objArr, i4);
        this.f46778c = false;
    }

    @Override // com.google.android.gms.internal.ads.cyv
    /* renamed from: a */
    public cyv<E> mo17017a(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            m17038a(this.f46777b + collection.size());
            if (collection instanceof cyt) {
                this.f46777b = ((cyt) collection).mo16996a(this.f46776a, this.f46777b);
                return this;
            }
        }
        super.mo17017a((Iterable) iterable);
        return this;
    }

    /* renamed from: b */
    public cyw<E> mo17016a(E e) {
        cyg.m17060a(e);
        m17038a(this.f46777b + 1);
        Object[] objArr = this.f46776a;
        int i = this.f46777b;
        this.f46777b = i + 1;
        objArr[i] = e;
        return this;
    }
}
