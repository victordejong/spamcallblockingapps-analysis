package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.bu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bu.class */
final /* synthetic */ class RunnableC1673bu implements Runnable {

    /* renamed from: b */
    private final eu f6204b;

    /* renamed from: c */
    private final Map f6205c;

    RunnableC1673bu(eu euVar, Map map) {
        this.f6204b = euVar;
        this.f6205c = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6204b.E6(this.f6205c);
    }
}
