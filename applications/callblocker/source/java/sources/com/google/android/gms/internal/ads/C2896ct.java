package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ct */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ct.class */
public final class C2896ct extends dkj implements AbstractC2893cr {
    public C2896ct(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: a */
    public final String mo10715a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        Parcel m9329a = m9329a(1, m9326y);
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: a */
    public final List<String> mo10717a() {
        Parcel m9329a = m9329a(3, m9326y());
        ArrayList<String> createStringArrayList = m9329a.createStringArrayList();
        m9329a.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: a */
    public final boolean mo10716a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        Parcel m9329a = m9329a(10, m9326y);
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.android.gms.internal.ads.bu] */
    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: b */
    public final AbstractC2844bu mo10712b(String str) {
        C2847bw c2847bw;
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        Parcel m9329a = m9329a(2, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            c2847bw = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            c2847bw = queryLocalInterface instanceof AbstractC2844bu ? (AbstractC2844bu) queryLocalInterface : new C2847bw(readStrongBinder);
        }
        m9329a.recycle();
        return c2847bw;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: b */
    public final String mo10714b() {
        Parcel m9329a = m9329a(4, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: b */
    public final void mo10713b(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: c */
    public final void mo10711c() {
        m9328b(6, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: c */
    public final void mo10710c(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: d */
    public final eba mo10709d() {
        Parcel m9329a = m9329a(7, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: e */
    public final void mo10708e() {
        m9328b(8, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: f */
    public final AbstractC2731a mo10707f() {
        Parcel m9329a = m9329a(9, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: g */
    public final AbstractC2731a mo10706g() {
        Parcel m9329a = m9329a(11, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: h */
    public final boolean mo10705h() {
        Parcel m9329a = m9329a(12, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: i */
    public final boolean mo10704i() {
        Parcel m9329a = m9329a(13, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: j */
    public final void mo10703j() {
        m9328b(15, m9326y());
    }
}
