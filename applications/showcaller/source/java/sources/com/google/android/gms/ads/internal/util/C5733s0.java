package com.google.android.gms.ads.internal.util;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.internal.ads.C6612j2;
import com.google.android.gms.internal.ads.C6686l2;
/* renamed from: com.google.android.gms.ads.internal.util.s0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/s0.class */
public final class C5733s0 extends C6612j2 implements AbstractC5739u0 {
    public C5733s0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5739u0
    public final boolean zze(AbstractC6253a abstractC6253a, String str, String str2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        Parcel m14188D0 = m14188D0(1, m14186c0);
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5739u0
    public final void zzf(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(2, m14186c0);
    }
}
