package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oc.class */
final class oc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ a.EnumC0408a f28255a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ oa f28256b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oc(oa oaVar, a.EnumC0408a aVar) {
        this.f28256b = oaVar;
        this.f28255a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f28256b.f28252a.a(oe.a(this.f28255a));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
