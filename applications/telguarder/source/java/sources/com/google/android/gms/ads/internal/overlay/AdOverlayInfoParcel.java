package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzahi;
import com.google.android.gms.internal.ads.zzahk;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzckn;
import com.google.android.gms.internal.ads.zzcqr;
import com.google.android.gms.internal.ads.zzdrz;
import com.google.android.gms.internal.ads.zzvc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel.class */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzo();
    public final int orientation;
    public final String url;
    public final zzazn zzbpn;
    public final String zzbvs;
    public final zzvc zzchd;
    public final zzahi zzdgz;
    public final zzahk zzdha;
    public final zzckn zzdib;
    public final zzdrz zzdic;
    public final zzbeb zzdjd;
    public final zzd zzdsu;
    public final zzq zzdsv;
    public final String zzdsw;
    public final boolean zzdsx;
    public final String zzdsy;
    public final zzv zzdsz;
    public final int zzdta;
    public final String zzdtb;
    public final zzk zzdtc;
    public final zzcqr zzdtd;
    public final zzbg zzdte;
    public final String zzdtf;

    public AdOverlayInfoParcel(zzd zzdVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzazn zzaznVar, String str4, zzk zzkVar, IBinder iBinder6, String str5, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, IBinder iBinder10, String str6) {
        this.zzdsu = zzdVar;
        this.zzchd = (zzvc) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.zzdsv = (zzq) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder2));
        this.zzdjd = (zzbeb) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder3));
        this.zzdgz = (zzahi) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder6));
        this.zzdha = (zzahk) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder4));
        this.zzdsw = str;
        this.zzdsx = z;
        this.zzdsy = str2;
        this.zzdsz = (zzv) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder5));
        this.orientation = i;
        this.zzdta = i2;
        this.url = str3;
        this.zzbpn = zzaznVar;
        this.zzdtb = str4;
        this.zzdtc = zzkVar;
        this.zzbvs = str5;
        this.zzdtf = str6;
        this.zzdtd = (zzcqr) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder7));
        this.zzdib = (zzckn) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder8));
        this.zzdic = (zzdrz) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder9));
        this.zzdte = (zzbg) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder10));
    }

    public AdOverlayInfoParcel(zzd zzdVar, zzvc zzvcVar, zzq zzqVar, zzv zzvVar, zzazn zzaznVar, zzbeb zzbebVar) {
        this.zzdsu = zzdVar;
        this.zzchd = zzvcVar;
        this.zzdsv = zzqVar;
        this.zzdjd = zzbebVar;
        this.zzdgz = null;
        this.zzdha = null;
        this.zzdsw = null;
        this.zzdsx = false;
        this.zzdsy = null;
        this.zzdsz = zzvVar;
        this.orientation = -1;
        this.zzdta = 4;
        this.url = null;
        this.zzbpn = zzaznVar;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    public AdOverlayInfoParcel(zzbeb zzbebVar, zzazn zzaznVar, zzbg zzbgVar, zzcqr zzcqrVar, zzckn zzcknVar, zzdrz zzdrzVar, String str, String str2, int i) {
        this.zzdsu = null;
        this.zzchd = null;
        this.zzdsv = null;
        this.zzdjd = zzbebVar;
        this.zzdgz = null;
        this.zzdha = null;
        this.zzdsw = null;
        this.zzdsx = false;
        this.zzdsy = null;
        this.zzdsz = null;
        this.orientation = i;
        this.zzdta = 5;
        this.url = null;
        this.zzbpn = zzaznVar;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = str;
        this.zzdtf = str2;
        this.zzdtd = zzcqrVar;
        this.zzdib = zzcknVar;
        this.zzdic = zzdrzVar;
        this.zzdte = zzbgVar;
    }

    public AdOverlayInfoParcel(zzvc zzvcVar, zzq zzqVar, zzv zzvVar, zzbeb zzbebVar, int i, zzazn zzaznVar, String str, zzk zzkVar, String str2, String str3) {
        this.zzdsu = null;
        this.zzchd = null;
        this.zzdsv = zzqVar;
        this.zzdjd = zzbebVar;
        this.zzdgz = null;
        this.zzdha = null;
        this.zzdsw = str2;
        this.zzdsx = false;
        this.zzdsy = str3;
        this.zzdsz = null;
        this.orientation = i;
        this.zzdta = 1;
        this.url = null;
        this.zzbpn = zzaznVar;
        this.zzdtb = str;
        this.zzdtc = zzkVar;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    public AdOverlayInfoParcel(zzvc zzvcVar, zzq zzqVar, zzv zzvVar, zzbeb zzbebVar, boolean z, int i, zzazn zzaznVar) {
        this.zzdsu = null;
        this.zzchd = zzvcVar;
        this.zzdsv = zzqVar;
        this.zzdjd = zzbebVar;
        this.zzdgz = null;
        this.zzdha = null;
        this.zzdsw = null;
        this.zzdsx = z;
        this.zzdsy = null;
        this.zzdsz = zzvVar;
        this.orientation = i;
        this.zzdta = 2;
        this.url = null;
        this.zzbpn = zzaznVar;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    public AdOverlayInfoParcel(zzvc zzvcVar, zzq zzqVar, zzahi zzahiVar, zzahk zzahkVar, zzv zzvVar, zzbeb zzbebVar, boolean z, int i, String str, zzazn zzaznVar) {
        this.zzdsu = null;
        this.zzchd = zzvcVar;
        this.zzdsv = zzqVar;
        this.zzdjd = zzbebVar;
        this.zzdgz = zzahiVar;
        this.zzdha = zzahkVar;
        this.zzdsw = null;
        this.zzdsx = z;
        this.zzdsy = null;
        this.zzdsz = zzvVar;
        this.orientation = i;
        this.zzdta = 3;
        this.url = str;
        this.zzbpn = zzaznVar;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    public AdOverlayInfoParcel(zzvc zzvcVar, zzq zzqVar, zzahi zzahiVar, zzahk zzahkVar, zzv zzvVar, zzbeb zzbebVar, boolean z, int i, String str, String str2, zzazn zzaznVar) {
        this.zzdsu = null;
        this.zzchd = zzvcVar;
        this.zzdsv = zzqVar;
        this.zzdjd = zzbebVar;
        this.zzdgz = zzahiVar;
        this.zzdha = zzahkVar;
        this.zzdsw = str2;
        this.zzdsx = z;
        this.zzdsy = str;
        this.zzdsz = zzvVar;
        this.orientation = i;
        this.zzdta = 3;
        this.url = null;
        this.zzbpn = zzaznVar;
        this.zzdtb = null;
        this.zzdtc = null;
        this.zzbvs = null;
        this.zzdtf = null;
        this.zzdtd = null;
        this.zzdib = null;
        this.zzdic = null;
        this.zzdte = null;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzd(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdsu, i, false);
        SafeParcelWriter.writeIBinder(parcel, 3, ObjectWrapper.wrap(this.zzchd).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 4, ObjectWrapper.wrap(this.zzdsv).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 5, ObjectWrapper.wrap(this.zzdjd).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 6, ObjectWrapper.wrap(this.zzdha).asBinder(), false);
        SafeParcelWriter.writeString(parcel, 7, this.zzdsw, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzdsx);
        SafeParcelWriter.writeString(parcel, 9, this.zzdsy, false);
        SafeParcelWriter.writeIBinder(parcel, 10, ObjectWrapper.wrap(this.zzdsz).asBinder(), false);
        SafeParcelWriter.writeInt(parcel, 11, this.orientation);
        SafeParcelWriter.writeInt(parcel, 12, this.zzdta);
        SafeParcelWriter.writeString(parcel, 13, this.url, false);
        SafeParcelWriter.writeParcelable(parcel, 14, this.zzbpn, i, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzdtb, false);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzdtc, i, false);
        SafeParcelWriter.writeIBinder(parcel, 18, ObjectWrapper.wrap(this.zzdgz).asBinder(), false);
        SafeParcelWriter.writeString(parcel, 19, this.zzbvs, false);
        SafeParcelWriter.writeIBinder(parcel, 20, ObjectWrapper.wrap(this.zzdtd).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 21, ObjectWrapper.wrap(this.zzdib).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 22, ObjectWrapper.wrap(this.zzdic).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 23, ObjectWrapper.wrap(this.zzdte).asBinder(), false);
        SafeParcelWriter.writeString(parcel, 24, this.zzdtf, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
