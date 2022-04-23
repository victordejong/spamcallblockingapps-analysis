package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bau.class */
public final class bau implements dsi<bav> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<wl> f24093a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f24094b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<wo> f24095c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<View> f24096d;
    private final dsv<eht.a.EnumC0477a> e;

    private bau(dsv<wl> dsvVar, dsv<Context> dsvVar2, dsv<wo> dsvVar3, dsv<View> dsvVar4, dsv<eht.a.EnumC0477a> dsvVar5) {
        this.f24093a = dsvVar;
        this.f24094b = dsvVar2;
        this.f24095c = dsvVar3;
        this.f24096d = dsvVar4;
        this.e = dsvVar5;
    }

    public static bau a(dsv<wl> dsvVar, dsv<Context> dsvVar2, dsv<wo> dsvVar3, dsv<View> dsvVar4, dsv<eht.a.EnumC0477a> dsvVar5) {
        return new bau(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bav(this.f24093a.a(), this.f24094b.a(), this.f24095c.a(), this.f24096d.a(), this.e.a());
    }
}
