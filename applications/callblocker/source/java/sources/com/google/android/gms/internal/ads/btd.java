package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.p118a.AbstractC2244a;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/btd.class */
public final class btd implements AbstractC2244a {
    @GuardedBy("this")

    /* renamed from: a */
    private dzw f12212a;

    /* renamed from: a */
    public final dzw m11656a() {
        dzw dzwVar;
        synchronized (this) {
            dzwVar = this.f12212a;
        }
        return dzwVar;
    }

    /* renamed from: a */
    public final void m11655a(dzw dzwVar) {
        synchronized (this) {
            this.f12212a = dzwVar;
        }
    }

    @Override // com.google.android.gms.ads.p118a.AbstractC2244a
    /* renamed from: a */
    public final void mo11654a(String str, String str2) {
        synchronized (this) {
            if (this.f12212a != null) {
                try {
                    this.f12212a.mo8125a(str, str2);
                } catch (RemoteException e) {
                    C3556uu.m6746d("Remote Exception at onAppEvent.", e);
                }
            }
        }
    }
}
