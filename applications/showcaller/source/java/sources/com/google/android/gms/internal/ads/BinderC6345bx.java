package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.AbstractC5629f;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.bx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bx.class */
public final class BinderC6345bx extends AbstractBinderC6382cx {

    /* renamed from: d */
    private final AbstractC5629f f21002d;

    /* renamed from: e */
    private final String f21003e;

    /* renamed from: f */
    private final String f21004f;

    public BinderC6345bx(AbstractC5629f abstractC5629f, String str, String str2) {
        this.f21002d = abstractC5629f;
        this.f21003e = str;
        this.f21004f = str2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6419dx
    /* renamed from: Y */
    public final void mo15663Y(AbstractC6253a abstractC6253a) {
        if (abstractC6253a == null) {
            return;
        }
        this.f21002d.mo8990d((View) BinderC6255b.m16745J0(abstractC6253a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6419dx
    /* renamed from: a */
    public final void mo15662a() {
        this.f21002d.mo8992b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6419dx
    /* renamed from: b */
    public final String mo15661b() {
        return this.f21003e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6419dx
    /* renamed from: c */
    public final String mo15660c() {
        return this.f21004f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6419dx
    /* renamed from: d */
    public final void mo15659d() {
        this.f21002d.mo8991c();
    }
}
