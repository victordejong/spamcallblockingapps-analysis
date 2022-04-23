package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afs.class */
public final class afs implements dsi<Context> {

    /* renamed from: a  reason: collision with root package name */
    private final afp f23230a;

    public afs(afp afpVar) {
        this.f23230a = afpVar;
    }

    public static Context a(afp afpVar) {
        return (Context) dso.b(afpVar.f23224b);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f23230a);
    }
}
