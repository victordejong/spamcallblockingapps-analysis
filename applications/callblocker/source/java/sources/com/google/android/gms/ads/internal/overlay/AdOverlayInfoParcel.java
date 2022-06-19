package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C2305g;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.ads.AbstractC3111ei;
import com.google.android.gms.internal.ads.AbstractC3113ek;
import com.google.android.gms.internal.ads.C3647yd;
import com.google.android.gms.internal.ads.act;
import com.google.android.gms.internal.ads.dxs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel.class */
public final class AdOverlayInfoParcel extends AbstractC2663a implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new C2326m();

    /* renamed from: a */
    public final C2317d f6673a;

    /* renamed from: b */
    public final dxs f6674b;

    /* renamed from: c */
    public final AbstractC2328o f6675c;

    /* renamed from: d */
    public final act f6676d;

    /* renamed from: e */
    public final AbstractC3113ek f6677e;

    /* renamed from: f */
    public final String f6678f;

    /* renamed from: g */
    public final boolean f6679g;

    /* renamed from: h */
    public final String f6680h;

    /* renamed from: i */
    public final AbstractC2333t f6681i;

    /* renamed from: j */
    public final int f6682j;

    /* renamed from: k */
    public final int f6683k;

    /* renamed from: l */
    public final String f6684l;

    /* renamed from: m */
    public final C3647yd f6685m;

    /* renamed from: n */
    public final String f6686n;

    /* renamed from: o */
    public final C2305g f6687o;

    /* renamed from: p */
    public final AbstractC3111ei f6688p;

    public AdOverlayInfoParcel(C2317d c2317d, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, C3647yd c3647yd, String str4, C2305g c2305g, IBinder iBinder6) {
        this.f6673a = c2317d;
        this.f6674b = (dxs) BinderC2734b.m13795a(AbstractC2731a.BinderC2732a.m13796a(iBinder));
        this.f6675c = (AbstractC2328o) BinderC2734b.m13795a(AbstractC2731a.BinderC2732a.m13796a(iBinder2));
        this.f6676d = (act) BinderC2734b.m13795a(AbstractC2731a.BinderC2732a.m13796a(iBinder3));
        this.f6688p = (AbstractC3111ei) BinderC2734b.m13795a(AbstractC2731a.BinderC2732a.m13796a(iBinder6));
        this.f6677e = (AbstractC3113ek) BinderC2734b.m13795a(AbstractC2731a.BinderC2732a.m13796a(iBinder4));
        this.f6678f = str;
        this.f6679g = z;
        this.f6680h = str2;
        this.f6681i = (AbstractC2333t) BinderC2734b.m13795a(AbstractC2731a.BinderC2732a.m13796a(iBinder5));
        this.f6682j = i;
        this.f6683k = i2;
        this.f6684l = str3;
        this.f6685m = c3647yd;
        this.f6686n = str4;
        this.f6687o = c2305g;
    }

    public AdOverlayInfoParcel(C2317d c2317d, dxs dxsVar, AbstractC2328o abstractC2328o, AbstractC2333t abstractC2333t, C3647yd c3647yd) {
        this.f6673a = c2317d;
        this.f6674b = dxsVar;
        this.f6675c = abstractC2328o;
        this.f6676d = null;
        this.f6688p = null;
        this.f6677e = null;
        this.f6678f = null;
        this.f6679g = false;
        this.f6680h = null;
        this.f6681i = abstractC2333t;
        this.f6682j = -1;
        this.f6683k = 4;
        this.f6684l = null;
        this.f6685m = c3647yd;
        this.f6686n = null;
        this.f6687o = null;
    }

    public AdOverlayInfoParcel(dxs dxsVar, AbstractC2328o abstractC2328o, AbstractC2333t abstractC2333t, act actVar, int i, C3647yd c3647yd, String str, C2305g c2305g, String str2, String str3) {
        this.f6673a = null;
        this.f6674b = null;
        this.f6675c = abstractC2328o;
        this.f6676d = actVar;
        this.f6688p = null;
        this.f6677e = null;
        this.f6678f = str2;
        this.f6679g = false;
        this.f6680h = str3;
        this.f6681i = null;
        this.f6682j = i;
        this.f6683k = 1;
        this.f6684l = null;
        this.f6685m = c3647yd;
        this.f6686n = str;
        this.f6687o = c2305g;
    }

    public AdOverlayInfoParcel(dxs dxsVar, AbstractC2328o abstractC2328o, AbstractC2333t abstractC2333t, act actVar, boolean z, int i, C3647yd c3647yd) {
        this.f6673a = null;
        this.f6674b = dxsVar;
        this.f6675c = abstractC2328o;
        this.f6676d = actVar;
        this.f6688p = null;
        this.f6677e = null;
        this.f6678f = null;
        this.f6679g = z;
        this.f6680h = null;
        this.f6681i = abstractC2333t;
        this.f6682j = i;
        this.f6683k = 2;
        this.f6684l = null;
        this.f6685m = c3647yd;
        this.f6686n = null;
        this.f6687o = null;
    }

    public AdOverlayInfoParcel(dxs dxsVar, AbstractC2328o abstractC2328o, AbstractC3111ei abstractC3111ei, AbstractC3113ek abstractC3113ek, AbstractC2333t abstractC2333t, act actVar, boolean z, int i, String str, C3647yd c3647yd) {
        this.f6673a = null;
        this.f6674b = dxsVar;
        this.f6675c = abstractC2328o;
        this.f6676d = actVar;
        this.f6688p = abstractC3111ei;
        this.f6677e = abstractC3113ek;
        this.f6678f = null;
        this.f6679g = z;
        this.f6680h = null;
        this.f6681i = abstractC2333t;
        this.f6682j = i;
        this.f6683k = 3;
        this.f6684l = str;
        this.f6685m = c3647yd;
        this.f6686n = null;
        this.f6687o = null;
    }

    public AdOverlayInfoParcel(dxs dxsVar, AbstractC2328o abstractC2328o, AbstractC3111ei abstractC3111ei, AbstractC3113ek abstractC3113ek, AbstractC2333t abstractC2333t, act actVar, boolean z, int i, String str, String str2, C3647yd c3647yd) {
        this.f6673a = null;
        this.f6674b = dxsVar;
        this.f6675c = abstractC2328o;
        this.f6676d = actVar;
        this.f6688p = abstractC3111ei;
        this.f6677e = abstractC3113ek;
        this.f6678f = str2;
        this.f6679g = z;
        this.f6680h = str;
        this.f6681i = abstractC2333t;
        this.f6682j = i;
        this.f6683k = 3;
        this.f6684l = null;
        this.f6685m = c3647yd;
        this.f6686n = null;
        this.f6687o = null;
    }

    /* renamed from: a */
    public static AdOverlayInfoParcel m14771a(Intent intent) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            adOverlayInfoParcel = (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            adOverlayInfoParcel = null;
        }
        return adOverlayInfoParcel;
    }

    /* renamed from: a */
    public static void m14770a(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13937a(parcel, 2, (Parcelable) this.f6673a, i, false);
        C2664b.m13938a(parcel, 3, BinderC2734b.m13794a(this.f6674b).asBinder(), false);
        C2664b.m13938a(parcel, 4, BinderC2734b.m13794a(this.f6675c).asBinder(), false);
        C2664b.m13938a(parcel, 5, BinderC2734b.m13794a(this.f6676d).asBinder(), false);
        C2664b.m13938a(parcel, 6, BinderC2734b.m13794a(this.f6677e).asBinder(), false);
        C2664b.m13932a(parcel, 7, this.f6678f, false);
        C2664b.m13930a(parcel, 8, this.f6679g);
        C2664b.m13932a(parcel, 9, this.f6680h, false);
        C2664b.m13938a(parcel, 10, BinderC2734b.m13794a(this.f6681i).asBinder(), false);
        C2664b.m13941a(parcel, 11, this.f6682j);
        C2664b.m13941a(parcel, 12, this.f6683k);
        C2664b.m13932a(parcel, 13, this.f6684l, false);
        C2664b.m13937a(parcel, 14, (Parcelable) this.f6685m, i, false);
        C2664b.m13932a(parcel, 16, this.f6686n, false);
        C2664b.m13937a(parcel, 17, (Parcelable) this.f6687o, i, false);
        C2664b.m13938a(parcel, 18, BinderC2734b.m13794a(this.f6688p).asBinder(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
