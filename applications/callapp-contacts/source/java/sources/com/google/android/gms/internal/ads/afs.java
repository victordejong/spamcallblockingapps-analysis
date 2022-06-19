package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afs.class */
public final class afs implements dsi<Context> {

    /* renamed from: a */
    private final afp f40160a;

    public afs(afp afpVar) {
        this.f40160a = afpVar;
    }

    /* renamed from: a */
    public static Context m18765a(afp afpVar) {
        return (Context) dso.m15764b(afpVar.f40154b);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m18765a(this.f40160a);
    }
}
