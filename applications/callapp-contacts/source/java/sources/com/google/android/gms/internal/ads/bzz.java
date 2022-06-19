package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzz.class */
public final class bzz implements eir {

    /* renamed from: a */
    private ekc f45177a;

    /* renamed from: a */
    public final void m17535a(ekc ekcVar) {
        synchronized (this) {
            this.f45177a = ekcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        synchronized (this) {
            ekc ekcVar = this.f45177a;
            if (ekcVar != null) {
                try {
                    ekcVar.mo14826a();
                } catch (RemoteException e) {
                    zzd.zzd("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }
}
