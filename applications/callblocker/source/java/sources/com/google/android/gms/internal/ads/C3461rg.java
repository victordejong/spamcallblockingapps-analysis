package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AbstractC2392b;
/* renamed from: com.google.android.gms.internal.ads.rg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rg.class */
public final class C3461rg implements AbstractC2392b {

    /* renamed from: a */
    private final AbstractC3445qr f17302a;

    public C3461rg(AbstractC3445qr abstractC3445qr) {
        this.f17302a = abstractC3445qr;
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2392b
    /* renamed from: a */
    public final String mo7263a() {
        String str = null;
        if (this.f17302a != null) {
            try {
                str = this.f17302a.mo7292a();
            } catch (RemoteException e) {
                C3645yb.m6746d("Could not forward getType to RewardItem", e);
            }
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2392b
    /* renamed from: b */
    public final int mo7262b() {
        int i;
        if (this.f17302a == null) {
            i = 0;
        } else {
            try {
                i = this.f17302a.mo7291b();
            } catch (RemoteException e) {
                C3645yb.m6746d("Could not forward getAmount to RewardItem", e);
                i = 0;
            }
        }
        return i;
    }
}
