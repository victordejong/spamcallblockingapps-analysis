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
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.adt;
import com.google.android.gms.internal.ads.bli;
import com.google.android.gms.internal.ads.brs;
import com.google.android.gms.internal.ads.cty;
import com.google.android.gms.internal.ads.eir;
import com.google.android.gms.internal.ads.go;
import com.google.android.gms.internal.ads.gq;
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
    public final go zzdic;
    public final gq zzdie;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdOverlayInfoParcel(zzb zzbVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzbar zzbarVar, String str4, zzk zzkVar, IBinder iBinder6, String str5, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, IBinder iBinder10, String str6, String str7) {
        this.zzdue = zzbVar;
        this.zzchr = (eir) d.a(b.a.a(iBinder));
        this.zzduf = (zzp) d.a(b.a.a(iBinder2));
        this.zzdkm = (adt) d.a(b.a.a(iBinder3));
        this.zzdic = (go) d.a(b.a.a(iBinder6));
        this.zzdie = (gq) d.a(b.a.a(iBinder4));
        this.zzdug = str;
        this.zzduh = z;
        this.zzdui = str2;
        this.zzduj = (zzx) d.a(b.a.a(iBinder5));
        this.orientation = i;
        this.zzduk = i2;
        this.url = str3;
        this.zzbpx = zzbarVar;
        this.zzdul = str4;
        this.zzdum = zzkVar;
        this.zzbwe = str5;
        this.zzdup = str6;
        this.zzdun = (brs) d.a(b.a.a(iBinder7));
        this.zzdje = (bli) d.a(b.a.a(iBinder8));
        this.zzdjf = (cty) d.a(b.a.a(iBinder9));
        this.zzduo = (zzbg) d.a(b.a.a(iBinder10));
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

    public AdOverlayInfoParcel(eir eirVar, zzp zzpVar, go goVar, gq gqVar, zzx zzxVar, adt adtVar, boolean z, int i, String str, zzbar zzbarVar) {
        this.zzdue = null;
        this.zzchr = eirVar;
        this.zzduf = zzpVar;
        this.zzdkm = adtVar;
        this.zzdic = goVar;
        this.zzdie = gqVar;
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

    public AdOverlayInfoParcel(eir eirVar, zzp zzpVar, go goVar, gq gqVar, zzx zzxVar, adt adtVar, boolean z, int i, String str, String str2, zzbar zzbarVar) {
        this.zzdue = null;
        this.zzchr = eirVar;
        this.zzduf = zzpVar;
        this.zzdkm = adtVar;
        this.zzdic = goVar;
        this.zzdie = gqVar;
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzdue, i, false);
        a.a(parcel, 3, d.a(this.zzchr).asBinder());
        a.a(parcel, 4, d.a(this.zzduf).asBinder());
        a.a(parcel, 5, d.a(this.zzdkm).asBinder());
        a.a(parcel, 6, d.a(this.zzdie).asBinder());
        a.a(parcel, 7, this.zzdug, false);
        a.a(parcel, 8, this.zzduh);
        a.a(parcel, 9, this.zzdui, false);
        a.a(parcel, 10, d.a(this.zzduj).asBinder());
        a.a(parcel, 11, this.orientation);
        a.a(parcel, 12, this.zzduk);
        a.a(parcel, 13, this.url, false);
        a.a(parcel, 14, this.zzbpx, i, false);
        a.a(parcel, 16, this.zzdul, false);
        a.a(parcel, 17, this.zzdum, i, false);
        a.a(parcel, 18, d.a(this.zzdic).asBinder());
        a.a(parcel, 19, this.zzbwe, false);
        a.a(parcel, 20, d.a(this.zzdun).asBinder());
        a.a(parcel, 21, d.a(this.zzdje).asBinder());
        a.a(parcel, 22, d.a(this.zzdjf).asBinder());
        a.a(parcel, 23, d.a(this.zzduo).asBinder());
        a.a(parcel, 24, this.zzdup, false);
        a.a(parcel, 25, this.zzbvf, false);
        a.b(parcel, a2);
    }
}
