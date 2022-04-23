package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.a;
import com.google.android.gms.internal.measurement.as;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dd.class */
public final class dd extends a implements df {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzkl> a(zzp zzpVar, boolean z) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzpVar);
        as.a(a2, z);
        Parcel a3 = a(7, a2);
        ArrayList createTypedArrayList = a3.createTypedArrayList(zzkl.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzaa> a(String str, String str2, zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        as.a(a2, zzpVar);
        Parcel a3 = a(16, a2);
        ArrayList createTypedArrayList = a3.createTypedArrayList(zzaa.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzaa> a(String str, String str2, String str3) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(null);
        a2.writeString(str2);
        a2.writeString(str3);
        Parcel a3 = a(17, a2);
        ArrayList createTypedArrayList = a3.createTypedArrayList(zzaa.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzkl> a(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(null);
        a2.writeString(str2);
        a2.writeString(str3);
        as.a(a2, z);
        Parcel a3 = a(15, a2);
        ArrayList createTypedArrayList = a3.createTypedArrayList(zzkl.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final List<zzkl> a(String str, String str2, boolean z, zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        as.a(a2, z);
        as.a(a2, zzpVar);
        Parcel a3 = a(14, a2);
        ArrayList createTypedArrayList = a3.createTypedArrayList(zzkl.CREATOR);
        a3.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(long j, String str, String str2, String str3) throws RemoteException {
        Parcel a2 = a();
        a2.writeLong(j);
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeString(str3);
        b(10, a2);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(Bundle bundle, zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bundle);
        as.a(a2, zzpVar);
        b(19, a2);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzaa zzaaVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzaa zzaaVar, zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzaaVar);
        as.a(a2, zzpVar);
        b(12, a2);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzas zzasVar, zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzasVar);
        as.a(a2, zzpVar);
        b(1, a2);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzas zzasVar, String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzkl zzklVar, zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzklVar);
        as.a(a2, zzpVar);
        b(2, a2);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void a(zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzpVar);
        b(4, a2);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void b(zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzpVar);
        b(6, a2);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final byte[] b(zzas zzasVar, String str) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzasVar);
        a2.writeString(str);
        Parcel a3 = a(9, a2);
        byte[] createByteArray = a3.createByteArray();
        a3.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final String c(zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzpVar);
        Parcel a3 = a(11, a2);
        String readString = a3.readString();
        a3.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void d(zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzpVar);
        b(18, a2);
    }

    @Override // com.google.android.gms.measurement.internal.df
    public final void e(zzp zzpVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, zzpVar);
        b(20, a2);
    }
}
