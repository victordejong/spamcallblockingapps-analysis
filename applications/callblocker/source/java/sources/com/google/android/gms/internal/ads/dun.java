package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dun.class */
public final class dun implements ValueCallback<String> {

    /* renamed from: a */
    private final /* synthetic */ duk f15816a;

    public dun(duk dukVar) {
        this.f15816a = dukVar;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        this.f15816a.f15810d.m8544a(this.f15816a.f15807a, this.f15816a.f15808b, str, this.f15816a.f15809c);
    }
}
