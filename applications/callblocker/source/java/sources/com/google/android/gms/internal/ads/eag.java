package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eag.class */
public final class eag extends dkj implements eae {
    public eag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7928a() {
        m9328b(1, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7927a(float f) {
        Parcel m9326y = m9326y();
        m9326y.writeFloat(f);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7926a(AbstractC2731a abstractC2731a, String str) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeString(str);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7925a(ech echVar) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, echVar);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7924a(AbstractC3166gi abstractC3166gi) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3166gi);
        m9328b(12, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7923a(AbstractC3280ko abstractC3280ko) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3280ko);
        m9328b(11, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7922a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(3, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7921a(String str, AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(6, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7920a(boolean z) {
        Parcel m9326y = m9326y();
        dkk.m9321a(m9326y, z);
        m9328b(4, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: b */
    public final float mo7919b() {
        Parcel m9329a = m9329a(7, m9326y());
        float readFloat = m9329a.readFloat();
        m9329a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: b */
    public final void mo7918b(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(10, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: c */
    public final boolean mo7917c() {
        Parcel m9329a = m9329a(8, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: d */
    public final String mo7916d() {
        Parcel m9329a = m9329a(9, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: e */
    public final List<C3159gb> mo7915e() {
        Parcel m9329a = m9329a(13, m9326y());
        ArrayList createTypedArrayList = m9329a.createTypedArrayList(C3159gb.CREATOR);
        m9329a.recycle();
        return createTypedArrayList;
    }
}
