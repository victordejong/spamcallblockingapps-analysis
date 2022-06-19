package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpa.class */
class cpa<E> extends cpd<E> {

    /* renamed from: a */
    Object[] f13482a;

    /* renamed from: b */
    int f13483b = 0;

    /* renamed from: c */
    boolean f13484c;

    public cpa(int i) {
        cow.m10919a(i, "initialCapacity");
        this.f13482a = new Object[i];
    }

    /* renamed from: a */
    private final void m10900a(int i) {
        if (this.f13482a.length >= i) {
            if (!this.f13484c) {
                return;
            }
            this.f13482a = (Object[]) this.f13482a.clone();
            this.f13484c = false;
            return;
        }
        Object[] objArr = this.f13482a;
        int length = this.f13482a.length;
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
        this.f13482a = Arrays.copyOf(objArr, i4);
        this.f13484c = false;
    }

    /* renamed from: a */
    public cpa<E> mo10888a(E e) {
        cor.m10936a(e);
        m10900a(this.f13483b + 1);
        Object[] objArr = this.f13482a;
        int i = this.f13483b;
        this.f13483b = i + 1;
        objArr[i] = e;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cpd
    /* renamed from: a */
    public cpd<E> mo10889a(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            m10900a(this.f13483b + collection.size());
            if (collection instanceof cpb) {
                this.f13483b = ((cpb) collection).mo10863a(this.f13482a, this.f13483b);
                return this;
            }
        }
        super.mo10889a((Iterable) iterable);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cpd
    /* renamed from: b */
    public /* synthetic */ cpd mo10886b(Object obj) {
        return mo10888a((cpa<E>) obj);
    }
}
