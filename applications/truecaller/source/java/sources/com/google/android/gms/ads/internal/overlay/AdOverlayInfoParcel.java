package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.internal.util.zzbu;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbor;
import com.google.android.gms.internal.ads.zzbot;
import com.google.android.gms.internal.ads.zzcgz;
import com.google.android.gms.internal.ads.zzcml;
import com.google.android.gms.internal.ads.zzdbp;
import com.google.android.gms.internal.ads.zzdio;
import com.google.android.gms.internal.ads.zzdvi;
import com.google.android.gms.internal.ads.zzedq;
import com.google.android.gms.internal.ads.zzffc;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel.class */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzn();
    @SafeParcelable.Field
    public final zzc zza;
    @SafeParcelable.Field
    public final zzbcv zzb;
    @SafeParcelable.Field
    public final zzo zzc;
    @SafeParcelable.Field
    public final zzcml zzd;
    @SafeParcelable.Field
    public final zzbot zze;
    @RecentlyNonNull
    @SafeParcelable.Field
    public final String zzf;
    @SafeParcelable.Field
    public final boolean zzg;
    @RecentlyNonNull
    @SafeParcelable.Field
    public final String zzh;
    @SafeParcelable.Field
    public final zzv zzi;
    @SafeParcelable.Field
    public final int zzj;
    @SafeParcelable.Field
    public final int zzk;
    @RecentlyNonNull
    @SafeParcelable.Field
    public final String zzl;
    @SafeParcelable.Field
    public final zzcgz zzm;
    @RecentlyNonNull
    @SafeParcelable.Field
    public final String zzn;
    @SafeParcelable.Field
    public final zzj zzo;
    @SafeParcelable.Field
    public final zzbor zzp;
    @RecentlyNonNull
    @SafeParcelable.Field
    public final String zzq;
    @SafeParcelable.Field
    public final zzedq zzr;
    @SafeParcelable.Field
    public final zzdvi zzs;
    @SafeParcelable.Field
    public final zzffc zzt;
    @SafeParcelable.Field
    public final zzbu zzu;
    @RecentlyNonNull
    @SafeParcelable.Field
    public final String zzv;
    @RecentlyNonNull
    @SafeParcelable.Field
    public final String zzw;
    @SafeParcelable.Field
    public final zzdbp zzx;
    @SafeParcelable.Field
    public final zzdio zzy;

    @SafeParcelable.Constructor
    public AdOverlayInfoParcel(@SafeParcelable.Param(id = 2) zzc zzcVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) IBinder iBinder2, @SafeParcelable.Param(id = 5) IBinder iBinder3, @SafeParcelable.Param(id = 6) IBinder iBinder4, @SafeParcelable.Param(id = 7) String str, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) String str2, @SafeParcelable.Param(id = 10) IBinder iBinder5, @SafeParcelable.Param(id = 11) int i, @SafeParcelable.Param(id = 12) int i2, @SafeParcelable.Param(id = 13) String str3, @SafeParcelable.Param(id = 14) zzcgz zzcgzVar, @SafeParcelable.Param(id = 16) String str4, @SafeParcelable.Param(id = 17) zzj zzjVar, @SafeParcelable.Param(id = 18) IBinder iBinder6, @SafeParcelable.Param(id = 19) String str5, @SafeParcelable.Param(id = 20) IBinder iBinder7, @SafeParcelable.Param(id = 21) IBinder iBinder8, @SafeParcelable.Param(id = 22) IBinder iBinder9, @SafeParcelable.Param(id = 23) IBinder iBinder10, @SafeParcelable.Param(id = 24) String str6, @SafeParcelable.Param(id = 25) String str7, @SafeParcelable.Param(id = 26) IBinder iBinder11, @SafeParcelable.Param(id = 27) IBinder iBinder12) {
        this.zza = zzcVar;
        this.zzb = (zzbcv) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder));
        this.zzc = (zzo) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder2));
        this.zzd = (zzcml) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder3));
        this.zzp = (zzbor) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder6));
        this.zze = (zzbot) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder4));
        this.zzf = str;
        this.zzg = z;
        this.zzh = str2;
        this.zzi = (zzv) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder5));
        this.zzj = i;
        this.zzk = i2;
        this.zzl = str3;
        this.zzm = zzcgzVar;
        this.zzn = str4;
        this.zzo = zzjVar;
        this.zzq = str5;
        this.zzv = str6;
        this.zzr = (zzedq) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder7));
        this.zzs = (zzdvi) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder8));
        this.zzt = (zzffc) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder9));
        this.zzu = (zzbu) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder10));
        this.zzw = str7;
        this.zzx = (zzdbp) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder11));
        this.zzy = (zzdio) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder12));
    }

    public AdOverlayInfoParcel(zzc zzcVar, zzbcv zzbcvVar, zzo zzoVar, zzv zzvVar, zzcgz zzcgzVar, zzcml zzcmlVar, zzdio zzdioVar) {
        this.zza = zzcVar;
        this.zzb = zzbcvVar;
        this.zzc = zzoVar;
        this.zzd = zzcmlVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = zzvVar;
        this.zzj = -1;
        this.zzk = 4;
        this.zzl = null;
        this.zzm = zzcgzVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzv = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzw = null;
        this.zzx = null;
        this.zzy = zzdioVar;
    }

    public AdOverlayInfoParcel(zzo zzoVar, zzcml zzcmlVar, int i, zzcgz zzcgzVar) {
        this.zzc = zzoVar;
        this.zzd = zzcmlVar;
        this.zzj = 1;
        this.zzm = zzcgzVar;
        this.zza = null;
        this.zzb = null;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzk = 1;
        this.zzl = null;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzv = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzw = null;
        this.zzx = null;
        this.zzy = null;
    }

    public AdOverlayInfoParcel(zzbcv zzbcvVar, zzo zzoVar, zzv zzvVar, zzcml zzcmlVar, int i, zzcgz zzcgzVar, String str, zzj zzjVar, String str2, String str3, String str4, zzdbp zzdbpVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = zzoVar;
        this.zzd = zzcmlVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = str2;
        this.zzg = false;
        this.zzh = str3;
        this.zzi = null;
        this.zzj = i;
        this.zzk = 1;
        this.zzl = null;
        this.zzm = zzcgzVar;
        this.zzn = str;
        this.zzo = zzjVar;
        this.zzq = null;
        this.zzv = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzw = str4;
        this.zzx = zzdbpVar;
        this.zzy = null;
    }

    public AdOverlayInfoParcel(zzbcv zzbcvVar, zzo zzoVar, zzv zzvVar, zzcml zzcmlVar, boolean z, int i, zzcgz zzcgzVar, zzdio zzdioVar) {
        this.zza = null;
        this.zzb = zzbcvVar;
        this.zzc = zzoVar;
        this.zzd = zzcmlVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzvVar;
        this.zzj = i;
        this.zzk = 2;
        this.zzl = null;
        this.zzm = zzcgzVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzv = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzw = null;
        this.zzx = null;
        this.zzy = zzdioVar;
    }

    public AdOverlayInfoParcel(zzbcv zzbcvVar, zzo zzoVar, zzbor zzborVar, zzbot zzbotVar, zzv zzvVar, zzcml zzcmlVar, boolean z, int i, String str, zzcgz zzcgzVar, zzdio zzdioVar) {
        this.zza = null;
        this.zzb = zzbcvVar;
        this.zzc = zzoVar;
        this.zzd = zzcmlVar;
        this.zzp = zzborVar;
        this.zze = zzbotVar;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzvVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = str;
        this.zzm = zzcgzVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzv = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzw = null;
        this.zzx = null;
        this.zzy = zzdioVar;
    }

    public AdOverlayInfoParcel(zzbcv zzbcvVar, zzo zzoVar, zzbor zzborVar, zzbot zzbotVar, zzv zzvVar, zzcml zzcmlVar, boolean z, int i, String str, String str2, zzcgz zzcgzVar, zzdio zzdioVar) {
        this.zza = null;
        this.zzb = zzbcvVar;
        this.zzc = zzoVar;
        this.zzd = zzcmlVar;
        this.zzp = zzborVar;
        this.zze = zzbotVar;
        this.zzf = str2;
        this.zzg = z;
        this.zzh = str;
        this.zzi = zzvVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = null;
        this.zzm = zzcgzVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzv = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzw = null;
        this.zzx = null;
        this.zzy = zzdioVar;
    }

    public AdOverlayInfoParcel(zzcml zzcmlVar, zzcgz zzcgzVar, zzbu zzbuVar, zzedq zzedqVar, zzdvi zzdviVar, zzffc zzffcVar, String str, String str2, int i) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzcmlVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzj = i;
        this.zzk = 5;
        this.zzl = null;
        this.zzm = zzcgzVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = str;
        this.zzv = str2;
        this.zzr = zzedqVar;
        this.zzs = zzdviVar;
        this.zzt = zzffcVar;
        this.zzu = zzbuVar;
        this.zzw = null;
        this.zzx = null;
        this.zzy = null;
    }

    @RecentlyNonNull
    public static AdOverlayInfoParcel zza(@RecentlyNonNull Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 2, this.zza, i, false);
        SafeParcelWriter.m38854i(parcel, 3, new ObjectWrapper(this.zzb).asBinder(), false);
        SafeParcelWriter.m38854i(parcel, 4, new ObjectWrapper(this.zzc).asBinder(), false);
        SafeParcelWriter.m38854i(parcel, 5, new ObjectWrapper(this.zzd).asBinder(), false);
        SafeParcelWriter.m38854i(parcel, 6, new ObjectWrapper(this.zze).asBinder(), false);
        SafeParcelWriter.m38846q(parcel, 7, this.zzf, false);
        boolean z = this.zzg;
        parcel.writeInt(262152);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 9, this.zzh, false);
        SafeParcelWriter.m38854i(parcel, 10, new ObjectWrapper(this.zzi).asBinder(), false);
        int i2 = this.zzj;
        parcel.writeInt(262155);
        parcel.writeInt(i2);
        int i3 = this.zzk;
        parcel.writeInt(262156);
        parcel.writeInt(i3);
        SafeParcelWriter.m38846q(parcel, 13, this.zzl, false);
        SafeParcelWriter.m38847p(parcel, 14, this.zzm, i, false);
        SafeParcelWriter.m38846q(parcel, 16, this.zzn, false);
        SafeParcelWriter.m38847p(parcel, 17, this.zzo, i, false);
        SafeParcelWriter.m38854i(parcel, 18, new ObjectWrapper(this.zzp).asBinder(), false);
        SafeParcelWriter.m38846q(parcel, 19, this.zzq, false);
        SafeParcelWriter.m38854i(parcel, 20, new ObjectWrapper(this.zzr).asBinder(), false);
        SafeParcelWriter.m38854i(parcel, 21, new ObjectWrapper(this.zzs).asBinder(), false);
        SafeParcelWriter.m38854i(parcel, 22, new ObjectWrapper(this.zzt).asBinder(), false);
        SafeParcelWriter.m38854i(parcel, 23, new ObjectWrapper(this.zzu).asBinder(), false);
        SafeParcelWriter.m38846q(parcel, 24, this.zzv, false);
        SafeParcelWriter.m38846q(parcel, 25, this.zzw, false);
        SafeParcelWriter.m38854i(parcel, 26, new ObjectWrapper(this.zzx).asBinder(), false);
        SafeParcelWriter.m38854i(parcel, 27, new ObjectWrapper(this.zzy).asBinder(), false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
