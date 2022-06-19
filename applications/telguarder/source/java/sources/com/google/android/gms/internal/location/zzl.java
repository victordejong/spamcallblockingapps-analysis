package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.zzaw;
import com.google.android.gms.location.zzax;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzl.class */
public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    final int zza;
    final zzj zzb;
    final zzax zzc;
    final zzai zzd;

    public zzl(int i, zzj zzjVar, IBinder iBinder, IBinder iBinder2) {
        zzag zzagVar;
        this.zza = i;
        this.zzb = zzjVar;
        this.zzc = iBinder == null ? null : zzaw.zzb(iBinder);
        if (iBinder2 == null) {
            zzagVar = null;
        } else {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzagVar = queryLocalInterface instanceof zzai ? (zzai) queryLocalInterface : new zzag(iBinder2);
        }
        this.zzd = zzagVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        zzax zzaxVar = this.zzc;
        SafeParcelWriter.writeIBinder(parcel, 3, zzaxVar == null ? null : zzaxVar.asBinder(), false);
        zzai zzaiVar = this.zzd;
        SafeParcelWriter.writeIBinder(parcel, 4, zzaiVar == null ? null : zzaiVar.asBinder(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
