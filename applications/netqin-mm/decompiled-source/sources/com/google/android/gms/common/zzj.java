package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p238d.AbstractBinderC3317i;
import p131c.p161d.p170b.p224d.p238d.BinderC3320l;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzj.class */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new zzm();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f23583a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final AbstractBinderC3317i f23584b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f23585c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f23586d;

    @SafeParcelable.Constructor
    public zzj(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) boolean z2) {
        this.f23583a = str;
        this.f23584b = m17025a(iBinder);
        this.f23585c = z;
        this.f23586d = z2;
    }

    public zzj(String str, AbstractBinderC3317i iVar, boolean z, boolean z2) {
        this.f23583a = str;
        this.f23584b = iVar;
        this.f23585c = z;
        this.f23586d = z2;
    }

    /* renamed from: a */
    public static AbstractBinderC3317i m17025a(IBinder iBinder) {
        BinderC3320l lVar = null;
        if (iBinder == null) {
            return null;
        }
        try {
            IObjectWrapper zzb = zzn.m17162a(iBinder).zzb();
            byte[] bArr = zzb == null ? null : (byte[]) ObjectWrapper.m17021Q(zzb);
            if (bArr != null) {
                lVar = new BinderC3320l(bArr);
            } else {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
            }
            return lVar;
        } catch (RemoteException e) {
            Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f23583a, false);
        AbstractBinderC3317i iVar = this.f23584b;
        if (iVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            iVar = null;
        } else {
            iVar.asBinder();
        }
        SafeParcelWriter.m17228a(parcel, 2, (IBinder) iVar, false);
        SafeParcelWriter.m17218a(parcel, 3, this.f23585c);
        SafeParcelWriter.m17218a(parcel, 4, this.f23586d);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
