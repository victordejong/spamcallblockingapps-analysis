package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adx.class */
public final class adx implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ View f40026a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC13002vy f40027b;

    /* renamed from: c */
    private final /* synthetic */ int f40028c;

    /* renamed from: d */
    private final /* synthetic */ C12170ads f40029d;

    public adx(C12170ads c12170ads, View view, AbstractC13002vy abstractC13002vy, int i) {
        this.f40029d = c12170ads;
        this.f40026a = view;
        this.f40027b = abstractC13002vy;
        this.f40028c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f40029d.m18851a(this.f40026a, this.f40027b, this.f40028c - 1);
    }
}
