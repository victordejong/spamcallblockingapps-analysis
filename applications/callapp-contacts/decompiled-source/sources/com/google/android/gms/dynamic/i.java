package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/i.class */
final class i implements m {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ FrameLayout f22972a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ LayoutInflater f22973b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ViewGroup f22974c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Bundle f22975d;
    final /* synthetic */ a e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(a aVar, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.e = aVar;
        this.f22972a = frameLayout;
        this.f22973b = layoutInflater;
        this.f22974c = viewGroup;
        this.f22975d = bundle;
    }

    @Override // com.google.android.gms.dynamic.m
    public final int a() {
        return 2;
    }

    @Override // com.google.android.gms.dynamic.m
    public final void b() {
        this.f22972a.removeAllViews();
        this.f22972a.addView(this.e.f22960a.a(this.f22973b, this.f22974c, this.f22975d));
    }
}
