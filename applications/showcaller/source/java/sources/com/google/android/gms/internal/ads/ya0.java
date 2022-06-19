package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ya0.class */
public final class ya0 extends C6612j2 implements ab0 {
    public ya0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.ab0
    /* renamed from: K0 */
    public final void mo8877K0(Intent intent) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, intent);
        m14187J0(1, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.ab0
    /* renamed from: O0 */
    public final void mo8876O0(AbstractC6253a abstractC6253a, String str, String str2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        m14187J0(2, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.ab0
    public final void zzg() {
        m14187J0(3, m14186c0());
    }
}
