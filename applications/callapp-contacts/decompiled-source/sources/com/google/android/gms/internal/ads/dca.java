package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dca.class */
final class dca implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f26715a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dca(czy czyVar, Context context) {
        this.f26715a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.s;
            csaVar.zzb(this.f26715a);
        } catch (Exception e) {
            cuyVar = czy.u;
            cuyVar.a(2019, -1L, e);
        }
    }
}
