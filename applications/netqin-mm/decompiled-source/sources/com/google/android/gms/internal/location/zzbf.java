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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzbf.class */
public final class zzbf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbf> CREATOR = new zzbg();
    @SafeParcelable.Field

    /* renamed from: a */
    public int f29374a;
    @SafeParcelable.Field

    /* renamed from: b */
    public zzbd f29375b;
    @SafeParcelable.Field

    /* renamed from: c */
    public zzx f29376c;
    @SafeParcelable.Field

    /* renamed from: d */
    public PendingIntent f29377d;
    @SafeParcelable.Field

    /* renamed from: e */
    public zzu f29378e;
    @SafeParcelable.Field

    /* renamed from: f */
    public zzaj f29379f;

    @SafeParcelable.Constructor
    public zzbf(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) zzbd zzbdVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) PendingIntent pendingIntent, @SafeParcelable.Param(id = 5) IBinder iBinder2, @SafeParcelable.Param(id = 6) IBinder iBinder3) {
        zzaj zzajVar;
        this.f29374a = i;
        this.f29375b = zzbdVar;
        this.f29376c = iBinder == null ? null : zzy.m9396a(iBinder);
        this.f29377d = pendingIntent;
        this.f29378e = iBinder2 == null ? null : zzv.m9400a(iBinder2);
        if (iBinder3 == null) {
            zzajVar = null;
        } else if (iBinder3 == null) {
            zzajVar = null;
        } else {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzajVar = queryLocalInterface instanceof zzaj ? (zzaj) queryLocalInterface : new zzal(iBinder3);
        }
        this.f29379f = zzajVar;
    }

    /* renamed from: a */
    public static zzbf m10490a(zzu zzuVar, zzaj zzajVar) {
        return new zzbf(2, null, null, null, zzuVar.asBinder(), zzajVar != null ? zzajVar.asBinder() : null);
    }

    /* renamed from: a */
    public static zzbf m10489a(zzx zzxVar, zzaj zzajVar) {
        return new zzbf(2, null, zzxVar.asBinder(), null, null, zzajVar != null ? zzajVar.asBinder() : null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f29374a);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f29375b, i, false);
        zzx zzxVar = this.f29376c;
        IBinder iBinder = null;
        SafeParcelWriter.m17228a(parcel, 3, zzxVar == null ? null : zzxVar.asBinder(), false);
        SafeParcelWriter.m17226a(parcel, 4, (Parcelable) this.f29377d, i, false);
        zzu zzuVar = this.f29378e;
        SafeParcelWriter.m17228a(parcel, 5, zzuVar == null ? null : zzuVar.asBinder(), false);
        zzaj zzajVar = this.f29379f;
        if (zzajVar != null) {
            iBinder = zzajVar.asBinder();
        }
        SafeParcelWriter.m17228a(parcel, 6, iBinder, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
