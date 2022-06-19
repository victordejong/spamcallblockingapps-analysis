package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* renamed from: com.google.android.gms.internal.ads.zf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zf.class */
public final class RunnableC7217zf implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C6365cg f32915d;

    /* renamed from: e */
    final /* synthetic */ C6440eg f32916e;

    public RunnableC7217zf(C6440eg c6440eg, C6365cg c6365cg) {
        this.f32916e = c6440eg;
        this.f32915d = c6365cg;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        this.f32915d.m16057a();
        sparseArray = this.f32916e.f22152q;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            sparseArray2 = this.f32916e.f22152q;
            ((C6959sg) sparseArray2.valueAt(i)).m11054g();
        }
    }
}
