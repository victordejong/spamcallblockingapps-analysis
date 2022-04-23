package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.location.p;
import com.google.android.gms.location.q;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzl.class */
public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new am();
    final int zza;
    final zzj zzb;
    final q zzc;
    final f zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(int i, zzj zzjVar, IBinder iBinder, IBinder iBinder2) {
        this.zza = i;
        this.zzb = zzjVar;
        f fVar = null;
        this.zzc = iBinder == null ? null : p.a(iBinder);
        if (iBinder2 != null) {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            fVar = queryLocalInterface instanceof f ? (f) queryLocalInterface : new d(iBinder2);
        }
        this.zzd = fVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza);
        a.a(parcel, 2, this.zzb, i, false);
        q qVar = this.zzc;
        IBinder iBinder = null;
        a.a(parcel, 3, qVar == null ? null : qVar.asBinder());
        f fVar = this.zzd;
        if (fVar != null) {
            iBinder = fVar.asBinder();
        }
        a.a(parcel, 4, iBinder);
        a.b(parcel, a2);
    }
}
