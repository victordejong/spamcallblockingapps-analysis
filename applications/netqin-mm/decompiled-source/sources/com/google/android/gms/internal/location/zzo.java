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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzo.class */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();
    @SafeParcelable.Field

    /* renamed from: a */
    public int f29396a;
    @SafeParcelable.Field

    /* renamed from: b */
    public zzm f29397b;
    @SafeParcelable.Field

    /* renamed from: c */
    public zzr f29398c;
    @SafeParcelable.Field

    /* renamed from: d */
    public zzaj f29399d;

    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) zzm zzmVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) IBinder iBinder2) {
        zzaj zzajVar;
        this.f29396a = i;
        this.f29397b = zzmVar;
        this.f29398c = iBinder == null ? null : zzs.m9401a(iBinder);
        if (iBinder2 == null) {
            zzajVar = null;
        } else if (iBinder2 == null) {
            zzajVar = null;
        } else {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzajVar = queryLocalInterface instanceof zzaj ? (zzaj) queryLocalInterface : new zzal(iBinder2);
        }
        this.f29399d = zzajVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f29396a);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f29397b, i, false);
        zzr zzrVar = this.f29398c;
        IBinder iBinder = null;
        SafeParcelWriter.m17228a(parcel, 3, zzrVar == null ? null : zzrVar.asBinder(), false);
        zzaj zzajVar = this.f29399d;
        if (zzajVar != null) {
            iBinder = zzajVar.asBinder();
        }
        SafeParcelWriter.m17228a(parcel, 4, iBinder, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
