package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acx.class */
public final class acx implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ View f7865a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3501st f7866b;

    /* renamed from: c */
    private final /* synthetic */ int f7867c;

    /* renamed from: d */
    private final /* synthetic */ acs f7868d;

    public acx(acs acsVar, View view, AbstractC3501st abstractC3501st, int i) {
        this.f7868d = acsVar;
        this.f7865a = view;
        this.f7866b = abstractC3501st;
        this.f7867c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7868d.m13623a(this.f7865a, this.f7866b, this.f7867c - 1);
    }
}
