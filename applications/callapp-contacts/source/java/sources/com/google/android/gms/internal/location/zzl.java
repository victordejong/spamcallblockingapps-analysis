package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.location.AbstractC13768q;
import com.google.android.gms.location.BinderC13766p;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzl.class */
public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new C13325am();
    final int zza;
    final zzj zzb;
    final AbstractC13768q zzc;
    final AbstractC13331f zzd;

    public zzl(int i, zzj zzjVar, IBinder iBinder, IBinder iBinder2) {
        C13329d c13329d;
        this.zza = i;
        this.zzb = zzjVar;
        this.zzc = iBinder == null ? null : BinderC13766p.m12266a(iBinder);
        if (iBinder2 == null) {
            c13329d = null;
        } else {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            c13329d = queryLocalInterface instanceof AbstractC13331f ? (AbstractC13331f) queryLocalInterface : new C13329d(iBinder2);
        }
        this.zzd = c13329d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zza);
        C12050a.m19107a(parcel, 2, this.zzb, i, false);
        AbstractC13768q abstractC13768q = this.zzc;
        C12050a.m19109a(parcel, 3, abstractC13768q == null ? null : abstractC13768q.asBinder());
        AbstractC13331f abstractC13331f = this.zzd;
        C12050a.m19109a(parcel, 4, abstractC13331f == null ? null : abstractC13331f.asBinder());
        C12050a.m19095b(parcel, m19116a);
    }
}
