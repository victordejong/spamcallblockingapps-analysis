package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.C13352a;
import com.google.android.gms.internal.measurement.C13371as;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.dd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dd.class */
public final class C13936dd extends C13352a implements AbstractC13938df {
    public C13936dd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzkl> mo11898a(zzp zzpVar, boolean z) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzpVar);
        C13371as.m13246a(m13320a, z);
        Parcel m13319a = m13319a(7, m13320a);
        ArrayList createTypedArrayList = m13319a.createTypedArrayList(zzkl.CREATOR);
        m13319a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzaa> mo11895a(String str, String str2, zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeString(str2);
        C13371as.m13247a(m13320a, zzpVar);
        Parcel m13319a = m13319a(16, m13320a);
        ArrayList createTypedArrayList = m13319a.createTypedArrayList(zzaa.CREATOR);
        m13319a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzaa> mo11894a(String str, String str2, String str3) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(null);
        m13320a.writeString(str2);
        m13320a.writeString(str3);
        Parcel m13319a = m13319a(17, m13320a);
        ArrayList createTypedArrayList = m13319a.createTypedArrayList(zzaa.CREATOR);
        m13319a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzkl> mo11893a(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(null);
        m13320a.writeString(str2);
        m13320a.writeString(str3);
        C13371as.m13246a(m13320a, z);
        Parcel m13319a = m13319a(15, m13320a);
        ArrayList createTypedArrayList = m13319a.createTypedArrayList(zzkl.CREATOR);
        m13319a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final List<zzkl> mo11892a(String str, String str2, boolean z, zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeString(str2);
        C13371as.m13246a(m13320a, z);
        C13371as.m13247a(m13320a, zzpVar);
        Parcel m13319a = m13319a(14, m13320a);
        ArrayList createTypedArrayList = m13319a.createTypedArrayList(zzkl.CREATOR);
        m13319a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11907a(long j, String str, String str2, String str3) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeLong(j);
        m13320a.writeString(str);
        m13320a.writeString(str2);
        m13320a.writeString(str3);
        m13318b(10, m13320a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11906a(Bundle bundle, zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, bundle);
        C13371as.m13247a(m13320a, zzpVar);
        m13318b(19, m13320a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11904a(zzaa zzaaVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11903a(zzaa zzaaVar, zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzaaVar);
        C13371as.m13247a(m13320a, zzpVar);
        m13318b(12, m13320a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11902a(zzas zzasVar, zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzasVar);
        C13371as.m13247a(m13320a, zzpVar);
        m13318b(1, m13320a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11901a(zzas zzasVar, String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11900a(zzkl zzklVar, zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzklVar);
        C13371as.m13247a(m13320a, zzpVar);
        m13318b(2, m13320a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: a */
    public final void mo11899a(zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzpVar);
        m13318b(4, m13320a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: b */
    public final void mo11889b(zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzpVar);
        m13318b(6, m13320a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: b */
    public final byte[] mo11890b(zzas zzasVar, String str) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzasVar);
        m13320a.writeString(str);
        Parcel m13319a = m13319a(9, m13320a);
        byte[] createByteArray = m13319a.createByteArray();
        m13319a.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: c */
    public final String mo11888c(zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzpVar);
        Parcel m13319a = m13319a(11, m13320a);
        String readString = m13319a.readString();
        m13319a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: d */
    public final void mo11887d(zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzpVar);
        m13318b(18, m13320a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13938df
    /* renamed from: e */
    public final void mo11886e(zzp zzpVar) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, zzpVar);
        m13318b(20, m13320a);
    }
}
