package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzb();
    @SafeParcelable.Field
    public final String zza;
    @SafeParcelable.Field
    public final String zzb;
    @SafeParcelable.Field
    public final String zzc;
    @SafeParcelable.Field
    public final String zzd;
    @SafeParcelable.Field
    public final String zze;
    @SafeParcelable.Field
    public final String zzf;
    @SafeParcelable.Field
    public final String zzg;
    @SafeParcelable.Field
    public final Intent zzh;
    @SafeParcelable.Field
    public final zzt zzi;
    @SafeParcelable.Field
    public final boolean zzj;

    public zzc(Intent intent, zzt zztVar) {
        this(null, null, null, null, null, null, null, intent, new ObjectWrapper(zztVar).asBinder(), false);
    }

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) String str5, @SafeParcelable.Param(id = 7) String str6, @SafeParcelable.Param(id = 8) String str7, @SafeParcelable.Param(id = 9) Intent intent, @SafeParcelable.Param(id = 10) IBinder iBinder, @SafeParcelable.Param(id = 11) boolean z) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = str5;
        this.zzf = str6;
        this.zzg = str7;
        this.zzh = intent;
        this.zzi = (zzt) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder));
        this.zzj = z;
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7, zzt zztVar) {
        this(str, str2, str3, str4, str5, str6, str7, null, new ObjectWrapper(zztVar).asBinder(), false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, this.zza, false);
        SafeParcelWriter.m38846q(parcel, 3, this.zzb, false);
        SafeParcelWriter.m38846q(parcel, 4, this.zzc, false);
        SafeParcelWriter.m38846q(parcel, 5, this.zzd, false);
        SafeParcelWriter.m38846q(parcel, 6, this.zze, false);
        SafeParcelWriter.m38846q(parcel, 7, this.zzf, false);
        SafeParcelWriter.m38846q(parcel, 8, this.zzg, false);
        SafeParcelWriter.m38847p(parcel, 9, this.zzh, i, false);
        SafeParcelWriter.m38854i(parcel, 10, new ObjectWrapper(this.zzi).asBinder(), false);
        boolean z = this.zzj;
        parcel.writeInt(262155);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
