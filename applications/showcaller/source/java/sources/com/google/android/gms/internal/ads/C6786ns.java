package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ns */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ns.class */
public final class C6786ns extends C6612j2 implements AbstractC6860ps {
    public C6786ns(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: A5 */
    public final void mo12172A5(String str, m00 m00Var, j00 j00Var) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, m00Var);
        C6686l2.m13741f(m14186c0, j00Var);
        m14187J0(5, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: B1 */
    public final void mo12171B1(zzblv zzblvVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzblvVar);
        m14187J0(6, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: H3 */
    public final void mo12168H3(t00 t00Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, t00Var);
        m14187J0(10, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: T5 */
    public final void mo12165T5(AbstractC6526gs abstractC6526gs) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6526gs);
        m14187J0(2, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6860ps
    /* renamed from: a */
    public final AbstractC6749ms mo12164a() {
        C6675ks c6675ks;
        Parcel m14188D0 = m14188D0(1, m14186c0());
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c6675ks = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            c6675ks = queryLocalInterface instanceof AbstractC6749ms ? (AbstractC6749ms) queryLocalInterface : new C6675ks(readStrongBinder);
        }
        m14188D0.recycle();
        return c6675ks;
    }
}
