package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzz.class */
public final class bzz implements eir {

    /* renamed from: a  reason: collision with root package name */
    private ekc f25468a;

    public final void a(ekc ekcVar) {
        synchronized (this) {
            this.f25468a = ekcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        synchronized (this) {
            ekc ekcVar = this.f25468a;
            if (ekcVar != null) {
                try {
                    ekcVar.a();
                } catch (RemoteException e) {
                    zzd.zzd("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }
}
