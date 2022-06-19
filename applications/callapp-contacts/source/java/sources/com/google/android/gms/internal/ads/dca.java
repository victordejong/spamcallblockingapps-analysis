package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dca.class */
final class dca implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f46934a;

    public dca(czy czyVar, Context context) {
        this.f46934a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.f46829s;
            csaVar.zzb(this.f46934a);
        } catch (Exception e) {
            cuyVar = czy.f46831u;
            cuyVar.m17192a(2019, -1L, e);
        }
    }
}
