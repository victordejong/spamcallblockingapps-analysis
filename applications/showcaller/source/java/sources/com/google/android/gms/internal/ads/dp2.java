package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dp2.class */
public final class dp2 extends C6612j2 implements fp2 {
    public dp2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.fp2
    /* renamed from: E */
    public final boolean mo15124E(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        Parcel m14188D0 = m14188D0(2, m14186c0);
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }

    @Override // com.google.android.gms.internal.ads.fp2
    /* renamed from: P0 */
    public final AbstractC6253a mo15123P0(String str, AbstractC6253a abstractC6253a, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeString("");
        m14186c0.writeString("javascript");
        m14186c0.writeString(str4);
        m14186c0.writeString("Google");
        m14186c0.writeString(str6);
        m14186c0.writeString(str7);
        m14186c0.writeString(str8);
        Parcel m14188D0 = m14188D0(11, m14186c0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }

    @Override // com.google.android.gms.internal.ads.fp2
    /* renamed from: V */
    public final void mo15122V(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(7, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.fp2
    /* renamed from: W2 */
    public final void mo15121W2(AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, abstractC6253a2);
        m14187J0(8, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.fp2
    /* renamed from: d5 */
    public final void mo15120d5(AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, abstractC6253a2);
        m14187J0(5, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.fp2
    /* renamed from: f */
    public final String mo15119f() {
        Parcel m14188D0 = m14188D0(6, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.fp2
    /* renamed from: z1 */
    public final AbstractC6253a mo15118z1(String str, AbstractC6253a abstractC6253a, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeString("");
        m14186c0.writeString("javascript");
        m14186c0.writeString(str4);
        m14186c0.writeString(str5);
        m14186c0.writeString(str6);
        m14186c0.writeString(str7);
        m14186c0.writeString(str8);
        Parcel m14188D0 = m14188D0(10, m14186c0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }

    @Override // com.google.android.gms.internal.ads.fp2
    public final void zzf(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(4, m14186c0);
    }
}
