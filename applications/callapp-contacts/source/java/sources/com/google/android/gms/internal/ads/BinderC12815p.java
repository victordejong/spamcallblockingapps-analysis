package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/p.class */
public final class BinderC12815p extends AbstractBinderC12966up {
    /* renamed from: a */
    private static void m14286a(AbstractC12975uy abstractC12975uy) {
        C13088za.zzex("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        C13077yq.f50094a.post(new Runnable(abstractC12975uy) { // from class: com.google.android.gms.internal.ads.o

            /* renamed from: a */
            private final AbstractC12975uy f49623a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49623a = abstractC12975uy;
            }

            @Override // java.lang.Runnable
            public final void run() {
                AbstractC12975uy abstractC12975uy2 = this.f49623a;
                if (abstractC12975uy2 != null) {
                    try {
                        abstractC12975uy2.mo14072a(1);
                    } catch (RemoteException e) {
                        C13088za.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final Bundle mo14103a() throws RemoteException {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14102a(AbstractC12126b abstractC12126b) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14101a(AbstractC12126b abstractC12126b, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14100a(emc emcVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14099a(emd emdVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14098a(AbstractC12968ur abstractC12968ur) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14097a(AbstractC12976uz abstractC12976uz) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14096a(zzaww zzawwVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14095a(zzvq zzvqVar, AbstractC12975uy abstractC12975uy) throws RemoteException {
        m14286a(abstractC12975uy);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14094a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: b */
    public final void mo14092b(zzvq zzvqVar, AbstractC12975uy abstractC12975uy) throws RemoteException {
        m14286a(abstractC12975uy);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: b */
    public final boolean mo14093b() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: c */
    public final String mo14091c() throws RemoteException {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: d */
    public final AbstractC12962ul mo14090d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: e */
    public final emj mo14089e() {
        return null;
    }
}
