package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* renamed from: com.google.android.gms.dynamic.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/i.class */
public final class C12134i implements AbstractC12138m {

    /* renamed from: a */
    final /* synthetic */ FrameLayout f39662a;

    /* renamed from: b */
    final /* synthetic */ LayoutInflater f39663b;

    /* renamed from: c */
    final /* synthetic */ ViewGroup f39664c;

    /* renamed from: d */
    final /* synthetic */ Bundle f39665d;

    /* renamed from: e */
    final /* synthetic */ AbstractC12125a f39666e;

    public C12134i(AbstractC12125a abstractC12125a, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f39666e = abstractC12125a;
        this.f39662a = frameLayout;
        this.f39663b = layoutInflater;
        this.f39664c = viewGroup;
        this.f39665d = bundle;
    }

    @Override // com.google.android.gms.dynamic.AbstractC12138m
    /* renamed from: a */
    public final int mo18977a() {
        return 2;
    }

    @Override // com.google.android.gms.dynamic.AbstractC12138m
    /* renamed from: b */
    public final void mo18976b() {
        this.f39662a.removeAllViews();
        this.f39662a.addView(this.f39666e.f39650a.mo12159a(this.f39663b, this.f39664c, this.f39665d));
    }
}
