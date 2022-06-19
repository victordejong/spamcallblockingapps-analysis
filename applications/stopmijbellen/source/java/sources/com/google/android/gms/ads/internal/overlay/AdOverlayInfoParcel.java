package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbes;
import com.google.android.gms.internal.ads.zzbqt;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzcop;
import com.google.android.gms.internal.ads.zzdfe;
import com.google.android.gms.internal.ads.zzdmd;
import com.google.android.gms.internal.ads.zzdyz;
import com.google.android.gms.internal.ads.zzehh;
import com.google.android.gms.internal.ads.zzfio;
@SafeParcelable.Class(creator = "AdOverlayInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel.class */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzn();
    @SafeParcelable.Field(m4805id = 2)
    public final zzc zza;
    @SafeParcelable.Field(getter = "getAdClickListenerAsBinder", m4805id = 3, type = "android.os.IBinder")
    public final zzbes zzb;
    @SafeParcelable.Field(getter = "getAdOverlayListenerAsBinder", m4805id = 4, type = "android.os.IBinder")
    public final zzo zzc;
    @SafeParcelable.Field(getter = "getAdWebViewAsBinder", m4805id = 5, type = "android.os.IBinder")
    public final zzcop zzd;
    @SafeParcelable.Field(getter = "getAppEventGmsgListenerAsBinder", m4805id = 6, type = "android.os.IBinder")
    public final zzbqv zze;
    @RecentlyNonNull
    @SafeParcelable.Field(m4805id = 7)
    public final String zzf;
    @SafeParcelable.Field(m4805id = 8)
    public final boolean zzg;
    @RecentlyNonNull
    @SafeParcelable.Field(m4805id = 9)
    public final String zzh;
    @SafeParcelable.Field(getter = "getLeaveApplicationListenerAsBinder", m4805id = 10, type = "android.os.IBinder")
    public final zzw zzi;
    @SafeParcelable.Field(m4805id = 11)
    public final int zzj;
    @SafeParcelable.Field(m4805id = 12)
    public final int zzk;
    @RecentlyNonNull
    @SafeParcelable.Field(m4805id = 13)
    public final String zzl;
    @SafeParcelable.Field(m4805id = 14)
    public final zzcjf zzm;
    @RecentlyNonNull
    @SafeParcelable.Field(m4805id = 16)
    public final String zzn;
    @SafeParcelable.Field(m4805id = 17)
    public final zzj zzo;
    @SafeParcelable.Field(getter = "getAdMetadataGmsgListenerAsBinder", m4805id = 18, type = "android.os.IBinder")
    public final zzbqt zzp;
    @RecentlyNonNull
    @SafeParcelable.Field(m4805id = 19)
    public final String zzq;
    @SafeParcelable.Field(getter = "getOfflineDatabaseManagerAsBinder", m4805id = 20, type = "android.os.IBinder")
    public final zzehh zzr;
    @SafeParcelable.Field(getter = "getCsiReporterAsBinder", m4805id = 21, type = "android.os.IBinder")
    public final zzdyz zzs;
    @SafeParcelable.Field(getter = "getLoggerAsBinder", m4805id = 22, type = "android.os.IBinder")
    public final zzfio zzt;
    @SafeParcelable.Field(getter = "getWorkManagerUtilAsBinder", m4805id = 23, type = "android.os.IBinder")
    public final zzbv zzu;
    @RecentlyNonNull
    @SafeParcelable.Field(m4805id = 24)
    public final String zzv;
    @RecentlyNonNull
    @SafeParcelable.Field(m4805id = 25)
    public final String zzw;
    @SafeParcelable.Field(getter = "getAdFailedToShowEventEmitterAsBinder", m4805id = 26, type = "android.os.IBinder")
    public final zzdfe zzx;
    @SafeParcelable.Field(getter = "getPhysicalClickListenerAsBinder", m4805id = 27, type = "android.os.IBinder")
    public final zzdmd zzy;

    @SafeParcelable.Constructor
    public AdOverlayInfoParcel(@SafeParcelable.Param(m4804id = 2) zzc zzcVar, @SafeParcelable.Param(m4804id = 3) IBinder iBinder, @SafeParcelable.Param(m4804id = 4) IBinder iBinder2, @SafeParcelable.Param(m4804id = 5) IBinder iBinder3, @SafeParcelable.Param(m4804id = 6) IBinder iBinder4, @SafeParcelable.Param(m4804id = 7) String str, @SafeParcelable.Param(m4804id = 8) boolean z, @SafeParcelable.Param(m4804id = 9) String str2, @SafeParcelable.Param(m4804id = 10) IBinder iBinder5, @SafeParcelable.Param(m4804id = 11) int i, @SafeParcelable.Param(m4804id = 12) int i2, @SafeParcelable.Param(m4804id = 13) String str3, @SafeParcelable.Param(m4804id = 14) zzcjf zzcjfVar, @SafeParcelable.Param(m4804id = 16) String str4, @SafeParcelable.Param(m4804id = 17) zzj zzjVar, @SafeParcelable.Param(m4804id = 18) IBinder iBinder6, @SafeParcelable.Param(m4804id = 19) String str5, @SafeParcelable.Param(m4804id = 20) IBinder iBinder7, @SafeParcelable.Param(m4804id = 21) IBinder iBinder8, @SafeParcelable.Param(m4804id = 22) IBinder iBinder9, @SafeParcelable.Param(m4804id = 23) IBinder iBinder10, @SafeParcelable.Param(m4804id = 24) String str6, @SafeParcelable.Param(m4804id = 25) String str7, @SafeParcelable.Param(m4804id = 26) IBinder iBinder11, @SafeParcelable.Param(m4804id = 27) IBinder iBinder12) {
        this.zza = zzcVar;
        this.zzb = (zzbes) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.zzc = (zzo) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder2));
        this.zzd = (zzcop) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder3));
        this.zzp = (zzbqt) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder6));
        this.zze = (zzbqv) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder4));
        this.zzf = str;
        this.zzg = z;
        this.zzh = str2;
        this.zzi = (zzw) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder5));
        this.zzj = i;
        this.zzk = i2;
        this.zzl = str3;
        this.zzm = zzcjfVar;
        this.zzn = str4;
        this.zzo = zzjVar;
        this.zzq = str5;
        this.zzv = str6;
        this.zzr = (zzehh) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder7));
        this.zzs = (zzdyz) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder8));
        this.zzt = (zzfio) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder9));
        this.zzu = (zzbv) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder10));
        this.zzw = str7;
        this.zzx = (zzdfe) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder11));
        this.zzy = (zzdmd) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder12));
    }

    public AdOverlayInfoParcel(zzc zzcVar, zzbes zzbesVar, zzo zzoVar, zzw zzwVar, zzcjf zzcjfVar, zzcop zzcopVar, zzdmd zzdmdVar) {
        this.zza = zzcVar;
        this.zzb = zzbesVar;
        this.zzc = zzoVar;
        this.zzd = zzcopVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = zzwVar;
        this.zzj = -1;
        this.zzk = 4;
        this.zzl = null;
        this.zzm = zzcjfVar;
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
        this.zzy = zzdmdVar;
    }

    public AdOverlayInfoParcel(zzo zzoVar, zzcop zzcopVar, int i, zzcjf zzcjfVar) {
        this.zzc = zzoVar;
        this.zzd = zzcopVar;
        this.zzj = 1;
        this.zzm = zzcjfVar;
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

    public AdOverlayInfoParcel(zzbes zzbesVar, zzo zzoVar, zzw zzwVar, zzcop zzcopVar, int i, zzcjf zzcjfVar, String str, zzj zzjVar, String str2, String str3, String str4, zzdfe zzdfeVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = zzoVar;
        this.zzd = zzcopVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = str2;
        this.zzg = false;
        this.zzh = str3;
        this.zzi = null;
        this.zzj = i;
        this.zzk = 1;
        this.zzl = null;
        this.zzm = zzcjfVar;
        this.zzn = str;
        this.zzo = zzjVar;
        this.zzq = null;
        this.zzv = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzw = str4;
        this.zzx = zzdfeVar;
        this.zzy = null;
    }

    public AdOverlayInfoParcel(zzbes zzbesVar, zzo zzoVar, zzw zzwVar, zzcop zzcopVar, boolean z, int i, zzcjf zzcjfVar, zzdmd zzdmdVar) {
        this.zza = null;
        this.zzb = zzbesVar;
        this.zzc = zzoVar;
        this.zzd = zzcopVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzwVar;
        this.zzj = i;
        this.zzk = 2;
        this.zzl = null;
        this.zzm = zzcjfVar;
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
        this.zzy = zzdmdVar;
    }

    public AdOverlayInfoParcel(zzbes zzbesVar, zzo zzoVar, zzbqt zzbqtVar, zzbqv zzbqvVar, zzw zzwVar, zzcop zzcopVar, boolean z, int i, String str, zzcjf zzcjfVar, zzdmd zzdmdVar) {
        this.zza = null;
        this.zzb = zzbesVar;
        this.zzc = zzoVar;
        this.zzd = zzcopVar;
        this.zzp = zzbqtVar;
        this.zze = zzbqvVar;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzwVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = str;
        this.zzm = zzcjfVar;
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
        this.zzy = zzdmdVar;
    }

    public AdOverlayInfoParcel(zzbes zzbesVar, zzo zzoVar, zzbqt zzbqtVar, zzbqv zzbqvVar, zzw zzwVar, zzcop zzcopVar, boolean z, int i, String str, String str2, zzcjf zzcjfVar, zzdmd zzdmdVar) {
        this.zza = null;
        this.zzb = zzbesVar;
        this.zzc = zzoVar;
        this.zzd = zzcopVar;
        this.zzp = zzbqtVar;
        this.zze = zzbqvVar;
        this.zzf = str2;
        this.zzg = z;
        this.zzh = str;
        this.zzi = zzwVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = null;
        this.zzm = zzcjfVar;
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
        this.zzy = zzdmdVar;
    }

    public AdOverlayInfoParcel(zzcop zzcopVar, zzcjf zzcjfVar, zzbv zzbvVar, zzehh zzehhVar, zzdyz zzdyzVar, zzfio zzfioVar, String str, String str2, int i) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzcopVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzj = i;
        this.zzk = 5;
        this.zzl = null;
        this.zzm = zzcjfVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = str;
        this.zzv = str2;
        this.zzr = zzehhVar;
        this.zzs = zzdyzVar;
        this.zzt = zzfioVar;
        this.zzu = zzbvVar;
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
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
        SafeParcelWriter.writeIBinder(parcel, 3, ObjectWrapper.wrap(this.zzb).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 4, ObjectWrapper.wrap(this.zzc).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 5, ObjectWrapper.wrap(this.zzd).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 6, ObjectWrapper.wrap(this.zze).asBinder(), false);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzg);
        SafeParcelWriter.writeString(parcel, 9, this.zzh, false);
        SafeParcelWriter.writeIBinder(parcel, 10, ObjectWrapper.wrap(this.zzi).asBinder(), false);
        SafeParcelWriter.writeInt(parcel, 11, this.zzj);
        SafeParcelWriter.writeInt(parcel, 12, this.zzk);
        SafeParcelWriter.writeString(parcel, 13, this.zzl, false);
        SafeParcelWriter.writeParcelable(parcel, 14, this.zzm, i, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzn, false);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzo, i, false);
        SafeParcelWriter.writeIBinder(parcel, 18, ObjectWrapper.wrap(this.zzp).asBinder(), false);
        SafeParcelWriter.writeString(parcel, 19, this.zzq, false);
        SafeParcelWriter.writeIBinder(parcel, 20, ObjectWrapper.wrap(this.zzr).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 21, ObjectWrapper.wrap(this.zzs).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 22, ObjectWrapper.wrap(this.zzt).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 23, ObjectWrapper.wrap(this.zzu).asBinder(), false);
        SafeParcelWriter.writeString(parcel, 24, this.zzv, false);
        SafeParcelWriter.writeString(parcel, 25, this.zzw, false);
        SafeParcelWriter.writeIBinder(parcel, 26, ObjectWrapper.wrap(this.zzx).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 27, ObjectWrapper.wrap(this.zzy).asBinder(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
