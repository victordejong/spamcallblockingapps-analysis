package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.ya */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ya.class */
public final class C7175ya extends C6612j2 implements AbstractC6286ab {
    public C7175ya(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6286ab
    /* renamed from: D4 */
    public final void mo8883D4(AbstractC6253a abstractC6253a, String str) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeString("GMA_SDK");
        m14187J0(2, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6286ab
    /* renamed from: I3 */
    public final void mo8882I3(int[] iArr) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeIntArray(null);
        m14187J0(4, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6286ab
    /* renamed from: M4 */
    public final void mo8881M4(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(7, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6286ab
    /* renamed from: V3 */
    public final void mo8880V3(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(0);
        m14187J0(6, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6286ab
    /* renamed from: d */
    public final void mo8879d() {
        m14187J0(3, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6286ab
    /* renamed from: q4 */
    public final void mo8878q4(byte[] bArr) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeByteArray(bArr);
        m14187J0(5, m14186c0);
    }
}
