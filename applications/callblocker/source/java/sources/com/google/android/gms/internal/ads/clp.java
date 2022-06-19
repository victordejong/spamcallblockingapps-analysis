package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/clp.class */
public final class clp extends dkj implements clo {
    public clp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.clo
    /* renamed from: a */
    public final AbstractC2731a mo11090a(String str, AbstractC2731a abstractC2731a, String str2, String str3, String str4, String str5) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeString(str2);
        m9326y.writeString(str3);
        m9326y.writeString(str4);
        m9326y.writeString(str5);
        Parcel m9329a = m9329a(9, m9326y);
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.clo
    /* renamed from: a */
    public final String mo11093a() {
        Parcel m9329a = m9329a(6, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.clo
    /* renamed from: a */
    public final void mo11091a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC2731a2);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.clo
    /* renamed from: a */
    public final boolean mo11092a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        Parcel m9329a = m9329a(2, m9326y);
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.clo
    /* renamed from: b */
    public final void mo11089b(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(4, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.clo
    /* renamed from: b */
    public final void mo11088b(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC2731a2);
        m9328b(8, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.clo
    /* renamed from: c */
    public final void mo11087c(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(7, m9326y);
    }
}
