package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzel.class */
public final class zzel extends zza implements zzej {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzel(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: B0 */
    public final void mo11346B0(Bundle bundle, zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, bundle);
        zzb.m13402c(a, zznVar);
        m13465c(19, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: C */
    public final List<zzkr> mo11345C(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        a.writeString(str3);
        zzb.m13401d(a, z);
        Parcel b = m13466b(15, a);
        ArrayList createTypedArrayList = b.createTypedArrayList(zzkr.CREATOR);
        b.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: D0 */
    public final void mo11344D0(zzkr zzkrVar, zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zzkrVar);
        zzb.m13402c(a, zznVar);
        m13465c(2, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: I */
    public final String mo11343I(zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zznVar);
        Parcel b = m13466b(11, a);
        String readString = b.readString();
        b.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: K0 */
    public final void mo11342K0(zzar zzarVar, String str, String str2) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zzarVar);
        a.writeString(str);
        a.writeString(str2);
        m13465c(5, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: R */
    public final void mo11340R(long j, String str, String str2, String str3) throws RemoteException {
        Parcel a = m13467a();
        a.writeLong(j);
        a.writeString(str);
        a.writeString(str2);
        a.writeString(str3);
        m13465c(10, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: T */
    public final void mo11337T(zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zznVar);
        m13465c(18, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: U */
    public final List<zzw> mo11336U(String str, String str2, String str3) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        a.writeString(str3);
        Parcel b = m13466b(17, a);
        ArrayList createTypedArrayList = b.createTypedArrayList(zzw.CREATOR);
        b.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: V */
    public final List<zzw> mo11335V(String str, String str2, zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        zzb.m13402c(a, zznVar);
        Parcel b = m13466b(16, a);
        ArrayList createTypedArrayList = b.createTypedArrayList(zzw.CREATOR);
        b.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: c0 */
    public final List<zzkr> mo11332c0(String str, String str2, boolean z, zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        zzb.m13401d(a, z);
        zzb.m13402c(a, zznVar);
        Parcel b = m13466b(14, a);
        ArrayList createTypedArrayList = b.createTypedArrayList(zzkr.CREATOR);
        b.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: d0 */
    public final List<zzkr> mo11331d0(zzn zznVar, boolean z) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zznVar);
        zzb.m13401d(a, z);
        Parcel b = m13466b(7, a);
        ArrayList createTypedArrayList = b.createTypedArrayList(zzkr.CREATOR);
        b.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: h0 */
    public final void mo11329h0(zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zznVar);
        m13465c(4, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: i */
    public final void mo11328i(zzw zzwVar, zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zzwVar);
        zzb.m13402c(a, zznVar);
        m13465c(12, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: m */
    public final void mo11327m(zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zznVar);
        m13465c(20, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: m0 */
    public final void mo11326m0(zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zzwVar);
        m13465c(13, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: q0 */
    public final void mo11325q0(zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zznVar);
        m13465c(6, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: s0 */
    public final byte[] mo11324s0(zzar zzarVar, String str) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zzarVar);
        a.writeString(str);
        Parcel b = m13466b(9, a);
        byte[] createByteArray = b.createByteArray();
        b.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    /* renamed from: t0 */
    public final void mo11323t0(zzar zzarVar, zzn zznVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, zzarVar);
        zzb.m13402c(a, zznVar);
        m13465c(1, a);
    }
}
