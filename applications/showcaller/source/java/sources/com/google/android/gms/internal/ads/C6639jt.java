package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.jt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jt.class */
public final class C6639jt extends C6612j2 implements AbstractC6713lt {
    public C6639jt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: Q0 */
    public final void mo11315Q0(d40 d40Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, d40Var);
        m14187J0(12, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: X1 */
    public final void mo11313X1(String str, AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(null);
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(6, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: a */
    public final void mo11312a() {
        m14187J0(1, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: j */
    public final String mo11308j() {
        Parcel m14188D0 = m14188D0(9, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: k */
    public final List<zzbrl> mo11307k() {
        Parcel m14188D0 = m14188D0(13, m14186c0());
        ArrayList createTypedArrayList = m14188D0.createTypedArrayList(zzbrl.CREATOR);
        m14188D0.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: k1 */
    public final void mo11306k1(s70 s70Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, s70Var);
        m14187J0(11, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: p2 */
    public final void mo11304p2(zzbim zzbimVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbimVar);
        m14187J0(14, m14186c0);
    }
}
