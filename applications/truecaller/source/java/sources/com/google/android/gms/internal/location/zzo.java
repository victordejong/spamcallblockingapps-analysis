package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.zzr;
import com.google.android.gms.location.zzs;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzo.class */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();
    @SafeParcelable.Field
    private int zzcg;
    @SafeParcelable.Field
    private zzm zzch;
    @SafeParcelable.Field
    private zzr zzci;
    @SafeParcelable.Field
    private zzaj zzcj;

    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) zzm zzmVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) IBinder iBinder2) {
        zzal zzalVar;
        this.zzcg = i;
        this.zzch = zzmVar;
        this.zzci = iBinder == null ? null : zzs.zza(iBinder);
        if (iBinder2 == null) {
            zzalVar = null;
        } else {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzalVar = queryLocalInterface instanceof zzaj ? (zzaj) queryLocalInterface : new zzal(iBinder2);
        }
        this.zzcj = zzalVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zzcg;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38847p(parcel, 2, this.zzch, i, false);
        zzr zzrVar = this.zzci;
        SafeParcelWriter.m38854i(parcel, 3, zzrVar == null ? null : zzrVar.asBinder(), false);
        zzaj zzajVar = this.zzcj;
        SafeParcelWriter.m38854i(parcel, 4, zzajVar == null ? null : zzajVar.asBinder(), false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
