package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/p.class */
public final class p extends up {
    private static void a(final uy uyVar) {
        za.zzex("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        yq.f28555a.post(new Runnable(uyVar) { // from class: com.google.android.gms.internal.ads.o

            /* renamed from: a  reason: collision with root package name */
            private final uy f28251a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28251a = uyVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                uy uyVar2 = this.f28251a;
                if (uyVar2 != null) {
                    try {
                        uyVar2.a(1);
                    } catch (RemoteException e) {
                        za.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final Bundle a() throws RemoteException {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(b bVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(b bVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(emc emcVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(emd emdVar) {
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(ur urVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(uz uzVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(zzaww zzawwVar) {
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(zzvq zzvqVar, uy uyVar) throws RemoteException {
        a(uyVar);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void b(zzvq zzvqVar, uy uyVar) throws RemoteException {
        a(uyVar);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final boolean b() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final String c() throws RemoteException {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final ul d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final emj e() {
        return null;
    }
}
