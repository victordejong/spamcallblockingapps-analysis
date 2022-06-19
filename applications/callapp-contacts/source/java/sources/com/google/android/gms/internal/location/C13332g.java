package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.location.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/g.class */
public final class C13332g extends C13312a implements AbstractC13333h {
    public C13332g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.internal.location.AbstractC13333h
    /* renamed from: a */
    public final Location mo13331a(String str) throws RemoteException {
        Parcel m13353a = m13353a();
        m13353a.writeString(str);
        Parcel m13352a = m13352a(80, m13353a);
        Location location = (Location) C13321ai.m13337a(m13352a, Location.CREATOR);
        m13352a.recycle();
        return location;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13333h
    /* renamed from: a */
    public final void mo13333a(zzbc zzbcVar) throws RemoteException {
        Parcel m13353a = m13353a();
        C13321ai.m13336a(m13353a, zzbcVar);
        m13351b(59, m13353a);
    }

    @Override // com.google.android.gms.internal.location.AbstractC13333h
    /* renamed from: a */
    public final void mo13332a(zzl zzlVar) throws RemoteException {
        Parcel m13353a = m13353a();
        C13321ai.m13336a(m13353a, zzlVar);
        m13351b(75, m13353a);
    }

    @Override // com.google.android.gms.internal.location.AbstractC13333h
    /* renamed from: a */
    public final void mo13330a(boolean z) throws RemoteException {
        Parcel m13353a = m13353a();
        C13321ai.m13335a(m13353a, false);
        m13351b(12, m13353a);
    }

    @Override // com.google.android.gms.internal.location.AbstractC13333h
    /* renamed from: b */
    public final Location mo13329b() throws RemoteException {
        Parcel m13352a = m13352a(7, m13353a());
        Location location = (Location) C13321ai.m13337a(m13352a, Location.CREATOR);
        m13352a.recycle();
        return location;
    }
}
