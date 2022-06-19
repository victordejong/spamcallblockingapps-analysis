package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.C10582a;
/* renamed from: com.google.android.gms.internal.ads.ob */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ob.class */
final class RunnableC12790ob implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C10582a.EnumC10583a f49625a;

    /* renamed from: b */
    private final /* synthetic */ C12789oa f49626b;

    public RunnableC12790ob(C12789oa c12789oa, C10582a.EnumC10583a enumC10583a) {
        this.f49626b = c12789oa;
        this.f49625a = enumC10583a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f49626b.f49624a.mo14434a(C12793oe.m14330a(this.f49625a));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
