package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczp.class */
public final class zzczp implements zzux {

    /* renamed from: a */
    public zzwo f26819a;

    /* renamed from: a */
    public final void m13732a(zzwo zzwoVar) {
        synchronized (this) {
            this.f26819a = zzwoVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void onAdClicked() {
        synchronized (this) {
            if (this.f26819a != null) {
                try {
                    this.f26819a.onAdClicked();
                } catch (RemoteException e) {
                    zzbbq.m15853c("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }
}
