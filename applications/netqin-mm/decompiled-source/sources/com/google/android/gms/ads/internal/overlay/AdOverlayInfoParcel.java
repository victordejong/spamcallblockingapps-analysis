package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzagt;
import com.google.android.gms.internal.ads.zzagv;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzux;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel.class */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzn();
    @SafeParcelable.Field

    /* renamed from: a */
    public final zzb f22729a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final zzux f22730b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final zzp f22731c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final zzbgj f22732d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final zzagv f22733e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f22734f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final boolean f22735g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final String f22736h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final zzv f22737i;
    @SafeParcelable.Field

    /* renamed from: j */
    public final int f22738j;
    @SafeParcelable.Field

    /* renamed from: k */
    public final int f22739k;
    @SafeParcelable.Field

    /* renamed from: l */
    public final String f22740l;
    @SafeParcelable.Field

    /* renamed from: m */
    public final zzbbx f22741m;
    @SafeParcelable.Field

    /* renamed from: n */
    public final String f22742n;
    @SafeParcelable.Field

    /* renamed from: o */
    public final zzi f22743o;
    @SafeParcelable.Field

    /* renamed from: p */
    public final zzagt f22744p;

    @SafeParcelable.Constructor
    public AdOverlayInfoParcel(@SafeParcelable.Param(id = 2) zzb zzbVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) IBinder iBinder2, @SafeParcelable.Param(id = 5) IBinder iBinder3, @SafeParcelable.Param(id = 6) IBinder iBinder4, @SafeParcelable.Param(id = 7) String str, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) String str2, @SafeParcelable.Param(id = 10) IBinder iBinder5, @SafeParcelable.Param(id = 11) int i, @SafeParcelable.Param(id = 12) int i2, @SafeParcelable.Param(id = 13) String str3, @SafeParcelable.Param(id = 14) zzbbx zzbbxVar, @SafeParcelable.Param(id = 16) String str4, @SafeParcelable.Param(id = 17) zzi zziVar, @SafeParcelable.Param(id = 18) IBinder iBinder6) {
        this.f22729a = zzbVar;
        this.f22730b = (zzux) ObjectWrapper.m17021Q(IObjectWrapper.Stub.m17022a(iBinder));
        this.f22731c = (zzp) ObjectWrapper.m17021Q(IObjectWrapper.Stub.m17022a(iBinder2));
        this.f22732d = (zzbgj) ObjectWrapper.m17021Q(IObjectWrapper.Stub.m17022a(iBinder3));
        this.f22744p = (zzagt) ObjectWrapper.m17021Q(IObjectWrapper.Stub.m17022a(iBinder6));
        this.f22733e = (zzagv) ObjectWrapper.m17021Q(IObjectWrapper.Stub.m17022a(iBinder4));
        this.f22734f = str;
        this.f22735g = z;
        this.f22736h = str2;
        this.f22737i = (zzv) ObjectWrapper.m17021Q(IObjectWrapper.Stub.m17022a(iBinder5));
        this.f22738j = i;
        this.f22739k = i2;
        this.f22740l = str3;
        this.f22741m = zzbbxVar;
        this.f22742n = str4;
        this.f22743o = zziVar;
    }

    public AdOverlayInfoParcel(zzb zzbVar, zzux zzuxVar, zzp zzpVar, zzv zzvVar, zzbbx zzbbxVar) {
        this.f22729a = zzbVar;
        this.f22730b = zzuxVar;
        this.f22731c = zzpVar;
        this.f22732d = null;
        this.f22744p = null;
        this.f22733e = null;
        this.f22734f = null;
        this.f22735g = false;
        this.f22736h = null;
        this.f22737i = zzvVar;
        this.f22738j = -1;
        this.f22739k = 4;
        this.f22740l = null;
        this.f22741m = zzbbxVar;
        this.f22742n = null;
        this.f22743o = null;
    }

    public AdOverlayInfoParcel(zzux zzuxVar, zzp zzpVar, zzv zzvVar, zzbgj zzbgjVar, int i, zzbbx zzbbxVar, String str, zzi zziVar, String str2, String str3) {
        this.f22729a = null;
        this.f22730b = null;
        this.f22731c = zzpVar;
        this.f22732d = zzbgjVar;
        this.f22744p = null;
        this.f22733e = null;
        this.f22734f = str2;
        this.f22735g = false;
        this.f22736h = str3;
        this.f22737i = null;
        this.f22738j = i;
        this.f22739k = 1;
        this.f22740l = null;
        this.f22741m = zzbbxVar;
        this.f22742n = str;
        this.f22743o = zziVar;
    }

    public AdOverlayInfoParcel(zzux zzuxVar, zzp zzpVar, zzv zzvVar, zzbgj zzbgjVar, boolean z, int i, zzbbx zzbbxVar) {
        this.f22729a = null;
        this.f22730b = zzuxVar;
        this.f22731c = zzpVar;
        this.f22732d = zzbgjVar;
        this.f22744p = null;
        this.f22733e = null;
        this.f22734f = null;
        this.f22735g = z;
        this.f22736h = null;
        this.f22737i = zzvVar;
        this.f22738j = i;
        this.f22739k = 2;
        this.f22740l = null;
        this.f22741m = zzbbxVar;
        this.f22742n = null;
        this.f22743o = null;
    }

    public AdOverlayInfoParcel(zzux zzuxVar, zzp zzpVar, zzagt zzagtVar, zzagv zzagvVar, zzv zzvVar, zzbgj zzbgjVar, boolean z, int i, String str, zzbbx zzbbxVar) {
        this.f22729a = null;
        this.f22730b = zzuxVar;
        this.f22731c = zzpVar;
        this.f22732d = zzbgjVar;
        this.f22744p = zzagtVar;
        this.f22733e = zzagvVar;
        this.f22734f = null;
        this.f22735g = z;
        this.f22736h = null;
        this.f22737i = zzvVar;
        this.f22738j = i;
        this.f22739k = 3;
        this.f22740l = str;
        this.f22741m = zzbbxVar;
        this.f22742n = null;
        this.f22743o = null;
    }

    public AdOverlayInfoParcel(zzux zzuxVar, zzp zzpVar, zzagt zzagtVar, zzagv zzagvVar, zzv zzvVar, zzbgj zzbgjVar, boolean z, int i, String str, String str2, zzbbx zzbbxVar) {
        this.f22729a = null;
        this.f22730b = zzuxVar;
        this.f22731c = zzpVar;
        this.f22732d = zzbgjVar;
        this.f22744p = zzagtVar;
        this.f22733e = zzagvVar;
        this.f22734f = str2;
        this.f22735g = z;
        this.f22736h = str;
        this.f22737i = zzvVar;
        this.f22738j = i;
        this.f22739k = 3;
        this.f22740l = null;
        this.f22741m = zzbbxVar;
        this.f22742n = null;
        this.f22743o = null;
    }

    /* renamed from: a */
    public static AdOverlayInfoParcel m18022a(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m18021a(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f22729a, i, false);
        SafeParcelWriter.m17228a(parcel, 3, ObjectWrapper.m17020a(this.f22730b).asBinder(), false);
        SafeParcelWriter.m17228a(parcel, 4, ObjectWrapper.m17020a(this.f22731c).asBinder(), false);
        SafeParcelWriter.m17228a(parcel, 5, ObjectWrapper.m17020a(this.f22732d).asBinder(), false);
        SafeParcelWriter.m17228a(parcel, 6, ObjectWrapper.m17020a(this.f22733e).asBinder(), false);
        SafeParcelWriter.m17221a(parcel, 7, this.f22734f, false);
        SafeParcelWriter.m17218a(parcel, 8, this.f22735g);
        SafeParcelWriter.m17221a(parcel, 9, this.f22736h, false);
        SafeParcelWriter.m17228a(parcel, 10, ObjectWrapper.m17020a(this.f22737i).asBinder(), false);
        SafeParcelWriter.m17231a(parcel, 11, this.f22738j);
        SafeParcelWriter.m17231a(parcel, 12, this.f22739k);
        SafeParcelWriter.m17221a(parcel, 13, this.f22740l, false);
        SafeParcelWriter.m17226a(parcel, 14, (Parcelable) this.f22741m, i, false);
        SafeParcelWriter.m17221a(parcel, 16, this.f22742n, false);
        SafeParcelWriter.m17226a(parcel, 17, (Parcelable) this.f22743o, i, false);
        SafeParcelWriter.m17228a(parcel, 18, ObjectWrapper.m17020a(this.f22744p).asBinder(), false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
