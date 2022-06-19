package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.zzaz;
import com.google.android.gms.location.zzba;
import com.google.android.gms.location.zzbd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbc.class */
public final class zzbc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbc> CREATOR = new zzbd();
    final int zza;
    final zzba zzb;
    final zzbd zzc;
    final PendingIntent zzd;
    final zzba zze;
    final zzai zzf;

    public zzbc(int i, zzba zzbaVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        zzag zzagVar;
        this.zza = i;
        this.zzb = zzbaVar;
        this.zzc = iBinder == null ? null : com.google.android.gms.location.zzbc.zzb(iBinder);
        this.zzd = pendingIntent;
        this.zze = iBinder2 == null ? null : zzaz.zzb(iBinder2);
        if (iBinder3 == null) {
            zzagVar = null;
        } else {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzagVar = queryLocalInterface instanceof zzai ? (zzai) queryLocalInterface : new zzag(iBinder3);
        }
        this.zzf = zzagVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.gms.location.zzbd, android.os.IBinder] */
    public static zzbc zza(zzbd zzbdVar, zzai zzaiVar) {
        zzai zzaiVar2 = zzaiVar;
        if (zzaiVar == null) {
            zzaiVar2 = null;
        }
        return new zzbc(2, null, zzbdVar, null, null, zzaiVar2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzbc zzb(zzba zzbaVar, PendingIntent pendingIntent, zzai zzaiVar) {
        return new zzbc(1, zzbaVar, null, pendingIntent, null, zzaiVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.gms.location.zzba, android.os.IBinder] */
    public static zzbc zzc(zzba zzbaVar, zzai zzaiVar) {
        zzai zzaiVar2 = zzaiVar;
        if (zzaiVar == null) {
            zzaiVar2 = null;
        }
        return new zzbc(2, null, null, null, zzbaVar, zzaiVar2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        zzbd zzbdVar = this.zzc;
        SafeParcelWriter.writeIBinder(parcel, 3, zzbdVar == null ? null : zzbdVar.asBinder(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzd, i, false);
        zzba zzbaVar = this.zze;
        SafeParcelWriter.writeIBinder(parcel, 5, zzbaVar == null ? null : zzbaVar.asBinder(), false);
        zzai zzaiVar = this.zzf;
        SafeParcelWriter.writeIBinder(parcel, 6, zzaiVar == null ? null : zzaiVar.asBinder(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
