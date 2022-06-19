package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dul.class */
final class dul implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ View f15812a;

    /* renamed from: b */
    private final /* synthetic */ dui f15813b;

    public dul(dui duiVar, View view) {
        this.f15813b = duiVar;
        this.f15812a = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15813b.m8546a(this.f15812a);
    }
}
