package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aeo.class */
public final class aeo implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ View f8017a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3501st f8018b;

    /* renamed from: c */
    private final /* synthetic */ int f8019c;

    /* renamed from: d */
    private final /* synthetic */ aem f8020d;

    public aeo(aem aemVar, View view, AbstractC3501st abstractC3501st, int i) {
        this.f8020d = aemVar;
        this.f8017a = view;
        this.f8018b = abstractC3501st;
        this.f8019c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8020d.m13532a(this.f8017a, this.f8018b, this.f8019c - 1);
    }
}
