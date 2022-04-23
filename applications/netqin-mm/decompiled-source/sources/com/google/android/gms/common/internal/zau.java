package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zau.class */
public final class zau extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zau> CREATOR = new zat();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23477a;
    @SafeParcelable.Field

    /* renamed from: b */
    public IBinder f23478b;
    @SafeParcelable.Field

    /* renamed from: c */
    public ConnectionResult f23479c;
    @SafeParcelable.Field

    /* renamed from: d */
    public boolean f23480d;
    @SafeParcelable.Field

    /* renamed from: e */
    public boolean f23481e;

    @SafeParcelable.Constructor
    public zau(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) ConnectionResult connectionResult, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2) {
        this.f23477a = i;
        this.f23478b = iBinder;
        this.f23479c = connectionResult;
        this.f23480d = z;
        this.f23481e = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zau)) {
            return false;
        }
        zau zauVar = (zau) obj;
        return this.f23479c.equals(zauVar.f23479c) && Objects.m17295a(m17179f(), zauVar.m17179f());
    }

    /* renamed from: f */
    public final IAccountAccessor m17179f() {
        IBinder iBinder = this.f23478b;
        if (iBinder == null) {
            return null;
        }
        return IAccountAccessor.Stub.m17298a(iBinder);
    }

    /* renamed from: i */
    public final ConnectionResult m17178i() {
        return this.f23479c;
    }

    /* renamed from: u */
    public final boolean m17177u() {
        return this.f23480d;
    }

    /* renamed from: v */
    public final boolean m17176v() {
        return this.f23481e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23477a);
        SafeParcelWriter.m17228a(parcel, 2, this.f23478b, false);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) this.f23479c, i, false);
        SafeParcelWriter.m17218a(parcel, 4, this.f23480d);
        SafeParcelWriter.m17218a(parcel, 5, this.f23481e);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
