package com.google.android.gms.internal.p134a;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.a.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/a/g.class */
public final class C2758g extends C2752a implements AbstractC2756e {
    public C2758g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.p134a.AbstractC2756e
    /* renamed from: a */
    public final String mo13764a() {
        Parcel m13769a = m13769a(1, m13768o_());
        String readString = m13769a.readString();
        m13769a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.p134a.AbstractC2756e
    /* renamed from: a */
    public final boolean mo13763a(boolean z) {
        Parcel m13768o_ = m13768o_();
        C2754c.m13766a(m13768o_, true);
        Parcel m13769a = m13769a(2, m13768o_);
        boolean m13767a = C2754c.m13767a(m13769a);
        m13769a.recycle();
        return m13767a;
    }

    @Override // com.google.android.gms.internal.p134a.AbstractC2756e
    /* renamed from: b */
    public final boolean mo13762b() {
        Parcel m13769a = m13769a(6, m13768o_());
        boolean m13767a = C2754c.m13767a(m13769a);
        m13769a.recycle();
        return m13767a;
    }
}
