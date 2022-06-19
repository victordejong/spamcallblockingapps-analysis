package com.google.android.gms.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import p193e.p1577m.p1578a.p1642f.p1653e.AbstractBinderC24987i;
import p193e.p1577m.p1578a.p1642f.p1653e.BinderC24988j;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/zzs.class */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f6165a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final AbstractBinderC24987i f6166b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f6167c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f6168d;

    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) boolean z2) {
        BinderC24988j binderC24988j;
        this.f6165a = str;
        if (iBinder == null) {
            binderC24988j = null;
        } else {
            try {
                int i = zzy.f6070a;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
                IObjectWrapper zzd = (queryLocalInterface instanceof zzz ? (zzz) queryLocalInterface : new zzx(iBinder)).zzd();
                byte[] bArr = zzd == null ? null : (byte[]) ObjectWrapper.m38746B1(zzd);
                binderC24988j = null;
                if (bArr != null) {
                    binderC24988j = new BinderC24988j(bArr);
                }
            } catch (RemoteException e) {
                binderC24988j = null;
            }
        }
        this.f6166b = binderC24988j;
        this.f6167c = z;
        this.f6168d = z2;
    }

    public zzs(String str, AbstractBinderC24987i abstractBinderC24987i, boolean z, boolean z2) {
        this.f6165a = str;
        this.f6166b = abstractBinderC24987i;
        this.f6167c = z;
        this.f6168d = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f6165a, false);
        AbstractBinderC24987i abstractBinderC24987i = this.f6166b;
        AbstractBinderC24987i abstractBinderC24987i2 = abstractBinderC24987i;
        if (abstractBinderC24987i == null) {
            abstractBinderC24987i2 = null;
        }
        SafeParcelWriter.m38854i(parcel, 2, abstractBinderC24987i2, false);
        boolean z = this.f6167c;
        parcel.writeInt(262147);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f6168d;
        parcel.writeInt(262148);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
