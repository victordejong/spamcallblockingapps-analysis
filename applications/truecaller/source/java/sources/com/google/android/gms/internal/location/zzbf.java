package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.zzu;
import com.google.android.gms.location.zzv;
import com.google.android.gms.location.zzx;
import com.google.android.gms.location.zzy;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbf.class */
public final class zzbf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbf> CREATOR = new zzbg();
    @SafeParcelable.Field
    private PendingIntent zzbv;
    @SafeParcelable.Field
    private int zzcg;
    @SafeParcelable.Field
    private zzaj zzcj;
    @SafeParcelable.Field
    private zzbd zzdl;
    @SafeParcelable.Field
    private zzx zzdm;
    @SafeParcelable.Field
    private zzu zzdn;

    @SafeParcelable.Constructor
    public zzbf(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) zzbd zzbdVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) PendingIntent pendingIntent, @SafeParcelable.Param(id = 5) IBinder iBinder2, @SafeParcelable.Param(id = 6) IBinder iBinder3) {
        zzal zzalVar;
        this.zzcg = i;
        this.zzdl = zzbdVar;
        this.zzdm = iBinder == null ? null : zzy.zzc(iBinder);
        this.zzbv = pendingIntent;
        this.zzdn = iBinder2 == null ? null : zzv.zzb(iBinder2);
        if (iBinder3 == null) {
            zzalVar = null;
        } else {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzalVar = queryLocalInterface instanceof zzaj ? (zzaj) queryLocalInterface : new zzal(iBinder3);
        }
        this.zzcj = zzalVar;
    }

    public static zzbf zza(zzu zzuVar, zzaj zzajVar) {
        return new zzbf(2, null, null, null, zzuVar.asBinder(), zzajVar != null ? zzajVar.asBinder() : null);
    }

    public static zzbf zza(zzx zzxVar, zzaj zzajVar) {
        return new zzbf(2, null, zzxVar.asBinder(), null, null, zzajVar != null ? zzajVar.asBinder() : null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zzcg;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38847p(parcel, 2, this.zzdl, i, false);
        zzx zzxVar = this.zzdm;
        SafeParcelWriter.m38854i(parcel, 3, zzxVar == null ? null : zzxVar.asBinder(), false);
        SafeParcelWriter.m38847p(parcel, 4, this.zzbv, i, false);
        zzu zzuVar = this.zzdn;
        SafeParcelWriter.m38854i(parcel, 5, zzuVar == null ? null : zzuVar.asBinder(), false);
        zzaj zzajVar = this.zzcj;
        SafeParcelWriter.m38854i(parcel, 6, zzajVar == null ? null : zzajVar.asBinder(), false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
