package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.C10582a;
/* renamed from: com.google.android.gms.internal.ads.oc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oc.class */
final class RunnableC12791oc implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C10582a.EnumC10583a f49627a;

    /* renamed from: b */
    private final /* synthetic */ C12789oa f49628b;

    public RunnableC12791oc(C12789oa c12789oa, C10582a.EnumC10583a enumC10583a) {
        this.f49628b = c12789oa;
        this.f49627a = enumC10583a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f49628b.f49624a.mo14434a(C12793oe.m14330a(this.f49627a));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
