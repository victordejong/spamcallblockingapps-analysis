package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.wearable.C13724a;
import com.google.android.gms.internal.wearable.C13726c;
import java.util.List;
/* renamed from: com.google.android.gms.wearable.internal.bl */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bl.class */
public final class C14270bl extends C13724a implements AbstractC14268bj {
    public C14270bl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wearable.internal.IWearableListener");
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11384a(DataHolder dataHolder) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12278a(m12283a, dataHolder);
        m12281b(1, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11383a(zzah zzahVar) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12278a(m12283a, zzahVar);
        m12281b(8, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11382a(zzaw zzawVar) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12278a(m12283a, zzawVar);
        m12281b(7, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11381a(zzfe zzfeVar) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12278a(m12283a, zzfeVar);
        m12281b(2, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11380a(zzfo zzfoVar) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12278a(m12283a, zzfoVar);
        m12281b(3, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11379a(zzi zziVar) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12278a(m12283a, zziVar);
        m12281b(9, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11378a(zzl zzlVar) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12278a(m12283a, zzlVar);
        m12281b(6, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11377a(List<zzfo> list) throws RemoteException {
        Parcel m12283a = m12283a();
        m12283a.writeTypedList(list);
        m12281b(5, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: b */
    public final void mo11375b(zzfo zzfoVar) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12278a(m12283a, zzfoVar);
        m12281b(4, m12283a);
    }
}
