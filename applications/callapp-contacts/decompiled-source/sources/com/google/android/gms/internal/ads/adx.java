package com.google.android.gms.internal.ads;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adx.class */
public final class adx implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ View f23166a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ vy f23167b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f23168c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ads f23169d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adx(ads adsVar, View view, vy vyVar, int i) {
        this.f23169d = adsVar;
        this.f23166a = view;
        this.f23167b = vyVar;
        this.f23168c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f23169d.a(this.f23166a, this.f23167b, this.f23168c - 1);
    }
}
