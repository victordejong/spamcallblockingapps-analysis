package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzn;
import com.google.android.gms.common.zzq;
import com.google.android.gms.common.zzs;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p357c.C13161a;
import com.google.android.gms.internal.p357c.C13163c;
/* renamed from: com.google.android.gms.common.internal.at */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/at.class */
public final class C11994at extends C13161a implements AbstractC11996av {
    public C11994at(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.AbstractC11996av
    /* renamed from: a */
    public final zzq mo19218a(zzn zznVar) throws RemoteException {
        Parcel m13591c = m13591c();
        C13163c.m13586a(m13591c, zznVar);
        Parcel m13592a = m13592a(6, m13591c);
        zzq zzqVar = (zzq) C13163c.m13587a(m13592a, zzq.CREATOR);
        m13592a.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.AbstractC11996av
    /* renamed from: a */
    public final boolean mo19219a() throws RemoteException {
        Parcel m13592a = m13592a(7, m13591c());
        boolean m13589a = C13163c.m13589a(m13592a);
        m13592a.recycle();
        return m13589a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC11996av
    /* renamed from: a */
    public final boolean mo19217a(zzs zzsVar, AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel m13591c = m13591c();
        C13163c.m13586a(m13591c, zzsVar);
        C13163c.m13588a(m13591c, abstractC12126b);
        Parcel m13592a = m13592a(5, m13591c);
        boolean m13589a = C13163c.m13589a(m13592a);
        m13592a.recycle();
        return m13589a;
    }
}
