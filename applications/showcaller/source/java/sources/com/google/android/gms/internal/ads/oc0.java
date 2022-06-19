package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oc0.class */
public final class oc0 extends C6612j2 implements rc0 {
    public oc0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.rc0
    /* renamed from: E1 */
    public final void mo11614E1(String str, vc0 vc0Var) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, vc0Var);
        m14187J0(7, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.rc0
    /* renamed from: X0 */
    public final void mo11613X0(zzcbj zzcbjVar, vc0 vc0Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzcbjVar);
        C6686l2.m13741f(m14186c0, vc0Var);
        m14187J0(5, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.rc0
    /* renamed from: Z2 */
    public final void mo11612Z2(zzcbj zzcbjVar, vc0 vc0Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzcbjVar);
        C6686l2.m13741f(m14186c0, vc0Var);
        m14187J0(6, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.rc0
    /* renamed from: v1 */
    public final void mo11611v1(zzcbj zzcbjVar, vc0 vc0Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzcbjVar);
        C6686l2.m13741f(m14186c0, vc0Var);
        m14187J0(4, m14186c0);
    }
}
