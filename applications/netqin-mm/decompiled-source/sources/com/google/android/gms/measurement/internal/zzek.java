package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzek.class */
public final class zzek extends zza implements zzei {
    public zzek(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzku> mo9028a(zzn zznVar, boolean z) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zznVar);
        zzb.m10426a(W, z);
        Parcel a = m10480a(7, W);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzku.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzz> mo9024a(String str, String str2, zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        zzb.m10427a(W, zznVar);
        Parcel a = m10480a(16, W);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzz.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzz> mo9023a(String str, String str2, String str3) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        W.writeString(str3);
        Parcel a = m10480a(17, W);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzz.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzku> mo9022a(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        W.writeString(str3);
        zzb.m10426a(W, z);
        Parcel a = m10480a(15, W);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzku.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzku> mo9021a(String str, String str2, boolean z, zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        zzb.m10426a(W, z);
        zzb.m10427a(W, zznVar);
        Parcel a = m10480a(14, W);
        ArrayList createTypedArrayList = a.createTypedArrayList(zzku.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9037a(long j, String str, String str2, String str3) throws RemoteException {
        Parcel W = m10481W();
        W.writeLong(j);
        W.writeString(str);
        W.writeString(str2);
        W.writeString(str3);
        m10479b(10, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9036a(Bundle bundle, zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, bundle);
        zzb.m10427a(W, zznVar);
        m10479b(19, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9035a(zzaq zzaqVar, zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zzaqVar);
        zzb.m10427a(W, zznVar);
        m10479b(1, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9033a(zzaq zzaqVar, String str, String str2) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zzaqVar);
        W.writeString(str);
        W.writeString(str2);
        m10479b(5, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9031a(zzku zzkuVar, zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zzkuVar);
        zzb.m10427a(W, zznVar);
        m10479b(2, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9030a(zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zznVar);
        m10479b(20, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9027a(zzz zzzVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zzzVar);
        m10479b(13, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9026a(zzz zzzVar, zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zzzVar);
        zzb.m10427a(W, zznVar);
        m10479b(12, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final byte[] mo9034a(zzaq zzaqVar, String str) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zzaqVar);
        W.writeString(str);
        Parcel a = m10480a(9, W);
        byte[] createByteArray = a.createByteArray();
        a.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: b */
    public final String mo9018b(zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zznVar);
        Parcel a = m10480a(11, W);
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: c */
    public final void mo9016c(zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zznVar);
        m10479b(18, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: d */
    public final void mo9015d(zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zznVar);
        m10479b(4, W);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: e */
    public final void mo9014e(zzn zznVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, zznVar);
        m10479b(6, W);
    }
}
