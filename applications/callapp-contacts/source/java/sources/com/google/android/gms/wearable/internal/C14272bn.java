package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.internal.wearable.C13724a;
import com.google.android.gms.internal.wearable.C13726c;
/* renamed from: com.google.android.gms.wearable.internal.bn */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bn.class */
public final class C14272bn extends C13724a implements AbstractC14271bm {
    public C14272bn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wearable.internal.IWearableService");
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: a */
    public final void mo11416a(AbstractC14266bh abstractC14266bh, AbstractC14264bf abstractC14264bf, String str) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        C13726c.m12280a(m12283a, abstractC14264bf);
        m12283a.writeString(str);
        m12282a(34, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: a */
    public final void mo11415a(AbstractC14266bh abstractC14266bh, zzd zzdVar) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        C13726c.m12278a(m12283a, zzdVar);
        m12282a(16, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: a */
    public final void mo11414a(AbstractC14266bh abstractC14266bh, zzfw zzfwVar) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        C13726c.m12278a(m12283a, zzfwVar);
        m12282a(17, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: a */
    public final void mo11413a(AbstractC14266bh abstractC14266bh, String str) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        m12283a.writeString(str);
        m12282a(32, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: a */
    public final void mo11412a(AbstractC14266bh abstractC14266bh, String str, int i) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        m12283a.writeString(str);
        m12283a.writeInt(i);
        m12282a(42, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: a */
    public final void mo11411a(AbstractC14266bh abstractC14266bh, String str, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        m12283a.writeString(str);
        C13726c.m12278a(m12283a, parcelFileDescriptor);
        m12282a(38, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: a */
    public final void mo11410a(AbstractC14266bh abstractC14266bh, String str, ParcelFileDescriptor parcelFileDescriptor, long j, long j2) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        m12283a.writeString(str);
        C13726c.m12278a(m12283a, parcelFileDescriptor);
        m12283a.writeLong(j);
        m12283a.writeLong(j2);
        m12282a(39, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: a */
    public final void mo11409a(AbstractC14266bh abstractC14266bh, String str, String str2, byte[] bArr) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        m12283a.writeString(str);
        m12283a.writeString(str2);
        m12283a.writeByteArray(bArr);
        m12282a(12, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: b */
    public final void mo11408b(AbstractC14266bh abstractC14266bh, AbstractC14264bf abstractC14264bf, String str) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        C13726c.m12280a(m12283a, abstractC14264bf);
        m12283a.writeString(str);
        m12282a(35, m12283a);
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14271bm
    /* renamed from: b */
    public final void mo11407b(AbstractC14266bh abstractC14266bh, String str, int i) throws RemoteException {
        Parcel m12283a = m12283a();
        C13726c.m12280a(m12283a, abstractC14266bh);
        m12283a.writeString(str);
        m12283a.writeInt(i);
        m12282a(33, m12283a);
    }
}
