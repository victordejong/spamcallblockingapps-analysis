package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyw.class */
class cyw<E> extends cyv<E> {

    /* renamed from: a  reason: collision with root package name */
    Object[] f26581a;

    /* renamed from: b  reason: collision with root package name */
    int f26582b = 0;

    /* renamed from: c  reason: collision with root package name */
    boolean f26583c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cyw(int i) {
        cys.a(i, "initialCapacity");
        this.f26581a = new Object[i];
    }

    private final void a(int i) {
        Object[] objArr = this.f26581a;
        if (objArr.length < i) {
            int length = objArr.length;
            if (i >= 0) {
                int i2 = length + (length >> 1) + 1;
                int i3 = i2;
                if (i2 < i) {
                    i3 = Integer.highestOneBit(i - 1) << 1;
                }
                int i4 = i3;
                if (i3 < 0) {
                    i4 = Integer.MAX_VALUE;
                }
                this.f26581a = Arrays.copyOf(objArr, i4);
                this.f26583c = false;
                return;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        } else if (this.f26583c) {
            this.f26581a = (Object[]) objArr.clone();
            this.f26583c = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.cyv
    public cyv<E> a(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            a(this.f26582b + collection.size());
            if (collection instanceof cyt) {
                this.f26582b = ((cyt) collection).a(this.f26581a, this.f26582b);
                return this;
            }
        }
        super.a((Iterable) iterable);
        return this;
    }

    /* renamed from: b */
    public cyw<E> a(E e) {
        cyg.a(e);
        a(this.f26582b + 1);
        Object[] objArr = this.f26581a;
        int i = this.f26582b;
        this.f26582b = i + 1;
        objArr[i] = e;
        return this;
    }
}
