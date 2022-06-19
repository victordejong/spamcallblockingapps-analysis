package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpu.class */
public final class dpu implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dqa f15333a;

    /* renamed from: b */
    private final /* synthetic */ dpt f15334b;

    public dpu(dpt dptVar, dqa dqaVar) {
        this.f15334b = dptVar;
        this.f15333a = dqaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        this.f15333a.m8903a();
        sparseArray = this.f15334b.f15322p;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            sparseArray2 = this.f15334b.f15322p;
            ((dqn) sparseArray2.valueAt(i)).m8858b();
        }
    }
}
