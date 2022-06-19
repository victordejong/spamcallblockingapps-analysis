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
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.AbstractC12586go;
import com.google.android.gms.internal.ads.AbstractC12588gq;
import com.google.android.gms.internal.ads.adt;
import com.google.android.gms.internal.ads.bli;
import com.google.android.gms.internal.ads.brs;
import com.google.android.gms.internal.ads.cty;
import com.google.android.gms.internal.ads.eir;
import com.google.android.gms.internal.ads.zzbar;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel.class */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzn();
    public final int orientation;
    public final String url;
    public final zzbar zzbpx;
    public final String zzbvf;
    public final String zzbwe;
    public final eir zzchr;
    public final AbstractC12586go zzdic;
    public final AbstractC12588gq zzdie;
    public final bli zzdje;
    public final cty zzdjf;
    public final adt zzdkm;
    public final zzb zzdue;
    public final zzp zzduf;
    public final String zzdug;
    public final boolean zzduh;
    public final String zzdui;
    public final zzx zzduj;
    public final int zzduk;
    public final String zzdul;
    public final zzk zzdum;
    public final brs zzdun;
    public final zzbg zzduo;
    public final String zzdup;

    public AdOverlayInfoParcel(zzb zzbVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzbar zzbarVar, String str4, zzk zzkVar, IBinder iBinder6, String str5, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, IBinder iBinder10, String str6, String str7) {
        this.zzdue = zzbVar;
        this.zzchr = (eir) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder));
        this.zzduf = (zzp) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder2));
        this.zzdkm = (adt) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder3));
        this.zzdic = (AbstractC12586go) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder6));
        this.zzdie = (AbstractC12588gq) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder4));
        this.zzdug = str;
        this.zzduh = z;
        this.zzdui = str2;
        this.zzduj = (zzx) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder5));
        this.orientation = i;
        this.zzduk = i2;
        this.url = str3;
        this.zzbpx = zzbarVar;
        this.zzdul = str4;
        this.zzdum = zzkVar;
        this.zzbwe = str5;
        this.zzdup = str6;
        this.zzdun = (brs) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder7));
        this.zzdje = (bli) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder8));
        this.zzdjf = (cty) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder9));
        this.zzduo = (zzbg) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder10));
        this.zzbvf = str7;
    }

    public AdOverlayInfoParcel(zzb zzbVar, eir eirVar, zzp zzpVar, zzx zzxVar, zzbar zzbarVar, adt adtVar) {
        this.zzdue = zzbVar;
        this.zzchr = eirVar;
        this.zzduf = zzpVar;
        this.zzdkm = adtVar;
        this.zzdic = null;
        this.zzdie = null;
        this.zzdug = null;
        this.zzduh = false;
        this.zzdui = null;
        this.zzduj = zzxVar;
        this.orientation = -1;
        this.zzduk = 4;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = null;
    }

    public AdOverlayInfoParcel(adt adtVar, zzbar zzbarVar, zzbg zzbgVar, brs brsVar, bli bliVar, cty ctyVar, String str, String str2, int i) {
        this.zzdue = null;
        this.zzchr = null;
        this.zzduf = null;
        this.zzdkm = adtVar;
        this.zzdic = null;
        this.zzdie = null;
        this.zzdug = null;
        this.zzduh = false;
        this.zzdui = null;
        this.zzduj = null;
        this.orientation = i;
        this.zzduk = 5;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = str;
        this.zzdup = str2;
        this.zzdun = brsVar;
        this.zzdje = bliVar;
        this.zzdjf = ctyVar;
        this.zzduo = zzbgVar;
        this.zzbvf = null;
    }

    public AdOverlayInfoParcel(eir eirVar, zzp zzpVar, zzx zzxVar, adt adtVar, int i, zzbar zzbarVar, String str, zzk zzkVar, String str2, String str3, String str4) {
        this.zzdue = null;
        this.zzchr = null;
        this.zzduf = zzpVar;
        this.zzdkm = adtVar;
        this.zzdic = null;
        this.zzdie = null;
        this.zzdug = str2;
        this.zzduh = false;
        this.zzdui = str3;
        this.zzduj = null;
        this.orientation = i;
        this.zzduk = 1;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = str;
        this.zzdum = zzkVar;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = str4;
    }

    public AdOverlayInfoParcel(eir eirVar, zzp zzpVar, zzx zzxVar, adt adtVar, boolean z, int i, zzbar zzbarVar) {
        this.zzdue = null;
        this.zzchr = eirVar;
        this.zzduf = zzpVar;
        this.zzdkm = adtVar;
        this.zzdic = null;
        this.zzdie = null;
        this.zzdug = null;
        this.zzduh = z;
        this.zzdui = null;
        this.zzduj = zzxVar;
        this.orientation = i;
        this.zzduk = 2;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = null;
    }

    public AdOverlayInfoParcel(eir eirVar, zzp zzpVar, AbstractC12586go abstractC12586go, AbstractC12588gq abstractC12588gq, zzx zzxVar, adt adtVar, boolean z, int i, String str, zzbar zzbarVar) {
        this.zzdue = null;
        this.zzchr = eirVar;
        this.zzduf = zzpVar;
        this.zzdkm = adtVar;
        this.zzdic = abstractC12586go;
        this.zzdie = abstractC12588gq;
        this.zzdug = null;
        this.zzduh = z;
        this.zzdui = null;
        this.zzduj = zzxVar;
        this.orientation = i;
        this.zzduk = 3;
        this.url = str;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = null;
    }

    public AdOverlayInfoParcel(eir eirVar, zzp zzpVar, AbstractC12586go abstractC12586go, AbstractC12588gq abstractC12588gq, zzx zzxVar, adt adtVar, boolean z, int i, String str, String str2, zzbar zzbarVar) {
        this.zzdue = null;
        this.zzchr = eirVar;
        this.zzduf = zzpVar;
        this.zzdkm = adtVar;
        this.zzdic = abstractC12586go;
        this.zzdie = abstractC12588gq;
        this.zzdug = str2;
        this.zzduh = z;
        this.zzdui = str;
        this.zzduj = zzxVar;
        this.orientation = i;
        this.zzduk = 3;
        this.url = null;
        this.zzbpx = zzbarVar;
        this.zzdul = null;
        this.zzdum = null;
        this.zzbwe = null;
        this.zzdup = null;
        this.zzdun = null;
        this.zzdje = null;
        this.zzdjf = null;
        this.zzduo = null;
        this.zzbvf = null;
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 2, this.zzdue, i, false);
        C12050a.m19109a(parcel, 3, BinderC12129d.m18979a(this.zzchr).asBinder());
        C12050a.m19109a(parcel, 4, BinderC12129d.m18979a(this.zzduf).asBinder());
        C12050a.m19109a(parcel, 5, BinderC12129d.m18979a(this.zzdkm).asBinder());
        C12050a.m19109a(parcel, 6, BinderC12129d.m18979a(this.zzdie).asBinder());
        C12050a.m19104a(parcel, 7, this.zzdug, false);
        C12050a.m19101a(parcel, 8, this.zzduh);
        C12050a.m19104a(parcel, 9, this.zzdui, false);
        C12050a.m19109a(parcel, 10, BinderC12129d.m18979a(this.zzduj).asBinder());
        C12050a.m19112a(parcel, 11, this.orientation);
        C12050a.m19112a(parcel, 12, this.zzduk);
        C12050a.m19104a(parcel, 13, this.url, false);
        C12050a.m19107a(parcel, 14, this.zzbpx, i, false);
        C12050a.m19104a(parcel, 16, this.zzdul, false);
        C12050a.m19107a(parcel, 17, this.zzdum, i, false);
        C12050a.m19109a(parcel, 18, BinderC12129d.m18979a(this.zzdic).asBinder());
        C12050a.m19104a(parcel, 19, this.zzbwe, false);
        C12050a.m19109a(parcel, 20, BinderC12129d.m18979a(this.zzdun).asBinder());
        C12050a.m19109a(parcel, 21, BinderC12129d.m18979a(this.zzdje).asBinder());
        C12050a.m19109a(parcel, 22, BinderC12129d.m18979a(this.zzdjf).asBinder());
        C12050a.m19109a(parcel, 23, BinderC12129d.m18979a(this.zzduo).asBinder());
        C12050a.m19104a(parcel, 24, this.zzdup, false);
        C12050a.m19104a(parcel, 25, this.zzbvf, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
