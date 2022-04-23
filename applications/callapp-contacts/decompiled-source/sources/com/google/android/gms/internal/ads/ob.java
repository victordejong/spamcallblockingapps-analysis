package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ob.class */
final class ob implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ a.EnumC0408a f28253a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ oa f28254b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ob(oa oaVar, a.EnumC0408a aVar) {
        this.f28254b = oaVar;
        this.f28253a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f28254b.f28252a.a(oe.a(this.f28253a));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
