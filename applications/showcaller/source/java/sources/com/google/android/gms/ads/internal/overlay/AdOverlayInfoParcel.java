package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.internal.util.AbstractC5739u0;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.AbstractC6673kq;
import com.google.android.gms.internal.ads.dw1;
import com.google.android.gms.internal.ads.jo2;
import com.google.android.gms.internal.ads.l31;
import com.google.android.gms.internal.ads.m10;
import com.google.android.gms.internal.ads.o10;
import com.google.android.gms.internal.ads.qa1;
import com.google.android.gms.internal.ads.rn1;
import com.google.android.gms.internal.ads.wn0;
import com.google.android.gms.internal.ads.zzcgz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel.class */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new C5652n();

    /* renamed from: A */
    public final l31 f18313A;

    /* renamed from: B */
    public final qa1 f18314B;

    /* renamed from: d */
    public final zzc f18315d;

    /* renamed from: e */
    public final AbstractC6673kq f18316e;

    /* renamed from: f */
    public final AbstractC5653o f18317f;

    /* renamed from: g */
    public final wn0 f18318g;

    /* renamed from: h */
    public final o10 f18319h;
    @RecentlyNonNull

    /* renamed from: i */
    public final String f18320i;

    /* renamed from: j */
    public final boolean f18321j;
    @RecentlyNonNull

    /* renamed from: k */
    public final String f18322k;

    /* renamed from: l */
    public final AbstractC5659u f18323l;

    /* renamed from: m */
    public final int f18324m;

    /* renamed from: n */
    public final int f18325n;
    @RecentlyNonNull

    /* renamed from: o */
    public final String f18326o;

    /* renamed from: p */
    public final zzcgz f18327p;
    @RecentlyNonNull

    /* renamed from: q */
    public final String f18328q;

    /* renamed from: r */
    public final zzj f18329r;

    /* renamed from: s */
    public final m10 f18330s;
    @RecentlyNonNull

    /* renamed from: t */
    public final String f18331t;

    /* renamed from: u */
    public final dw1 f18332u;

    /* renamed from: v */
    public final rn1 f18333v;

    /* renamed from: w */
    public final jo2 f18334w;

    /* renamed from: x */
    public final AbstractC5739u0 f18335x;
    @RecentlyNonNull

    /* renamed from: y */
    public final String f18336y;
    @RecentlyNonNull

    /* renamed from: z */
    public final String f18337z;

    public AdOverlayInfoParcel(AbstractC5653o abstractC5653o, wn0 wn0Var, int i, zzcgz zzcgzVar) {
        this.f18317f = abstractC5653o;
        this.f18318g = wn0Var;
        this.f18324m = 1;
        this.f18327p = zzcgzVar;
        this.f18315d = null;
        this.f18316e = null;
        this.f18330s = null;
        this.f18319h = null;
        this.f18320i = null;
        this.f18321j = false;
        this.f18322k = null;
        this.f18323l = null;
        this.f18325n = 1;
        this.f18326o = null;
        this.f18328q = null;
        this.f18329r = null;
        this.f18331t = null;
        this.f18336y = null;
        this.f18332u = null;
        this.f18333v = null;
        this.f18334w = null;
        this.f18335x = null;
        this.f18337z = null;
        this.f18313A = null;
        this.f18314B = null;
    }

    public AdOverlayInfoParcel(zzc zzcVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzcgz zzcgzVar, String str4, zzj zzjVar, IBinder iBinder6, String str5, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, IBinder iBinder10, String str6, String str7, IBinder iBinder11, IBinder iBinder12) {
        this.f18315d = zzcVar;
        this.f18316e = (AbstractC6673kq) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder));
        this.f18317f = (AbstractC5653o) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder2));
        this.f18318g = (wn0) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder3));
        this.f18330s = (m10) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder6));
        this.f18319h = (o10) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder4));
        this.f18320i = str;
        this.f18321j = z;
        this.f18322k = str2;
        this.f18323l = (AbstractC5659u) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder5));
        this.f18324m = i;
        this.f18325n = i2;
        this.f18326o = str3;
        this.f18327p = zzcgzVar;
        this.f18328q = str4;
        this.f18329r = zzjVar;
        this.f18331t = str5;
        this.f18336y = str6;
        this.f18332u = (dw1) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder7));
        this.f18333v = (rn1) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder8));
        this.f18334w = (jo2) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder9));
        this.f18335x = (AbstractC5739u0) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder10));
        this.f18337z = str7;
        this.f18313A = (l31) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder11));
        this.f18314B = (qa1) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder12));
    }

    public AdOverlayInfoParcel(zzc zzcVar, AbstractC6673kq abstractC6673kq, AbstractC5653o abstractC5653o, AbstractC5659u abstractC5659u, zzcgz zzcgzVar, wn0 wn0Var, qa1 qa1Var) {
        this.f18315d = zzcVar;
        this.f18316e = abstractC6673kq;
        this.f18317f = abstractC5653o;
        this.f18318g = wn0Var;
        this.f18330s = null;
        this.f18319h = null;
        this.f18320i = null;
        this.f18321j = false;
        this.f18322k = null;
        this.f18323l = abstractC5659u;
        this.f18324m = -1;
        this.f18325n = 4;
        this.f18326o = null;
        this.f18327p = zzcgzVar;
        this.f18328q = null;
        this.f18329r = null;
        this.f18331t = null;
        this.f18336y = null;
        this.f18332u = null;
        this.f18333v = null;
        this.f18334w = null;
        this.f18335x = null;
        this.f18337z = null;
        this.f18313A = null;
        this.f18314B = qa1Var;
    }

    public AdOverlayInfoParcel(AbstractC6673kq abstractC6673kq, AbstractC5653o abstractC5653o, AbstractC5659u abstractC5659u, wn0 wn0Var, int i, zzcgz zzcgzVar, String str, zzj zzjVar, String str2, String str3, String str4, l31 l31Var) {
        this.f18315d = null;
        this.f18316e = null;
        this.f18317f = abstractC5653o;
        this.f18318g = wn0Var;
        this.f18330s = null;
        this.f18319h = null;
        this.f18320i = str2;
        this.f18321j = false;
        this.f18322k = str3;
        this.f18323l = null;
        this.f18324m = i;
        this.f18325n = 1;
        this.f18326o = null;
        this.f18327p = zzcgzVar;
        this.f18328q = str;
        this.f18329r = zzjVar;
        this.f18331t = null;
        this.f18336y = null;
        this.f18332u = null;
        this.f18333v = null;
        this.f18334w = null;
        this.f18335x = null;
        this.f18337z = str4;
        this.f18313A = l31Var;
        this.f18314B = null;
    }

    public AdOverlayInfoParcel(AbstractC6673kq abstractC6673kq, AbstractC5653o abstractC5653o, AbstractC5659u abstractC5659u, wn0 wn0Var, boolean z, int i, zzcgz zzcgzVar, qa1 qa1Var) {
        this.f18315d = null;
        this.f18316e = abstractC6673kq;
        this.f18317f = abstractC5653o;
        this.f18318g = wn0Var;
        this.f18330s = null;
        this.f18319h = null;
        this.f18320i = null;
        this.f18321j = z;
        this.f18322k = null;
        this.f18323l = abstractC5659u;
        this.f18324m = i;
        this.f18325n = 2;
        this.f18326o = null;
        this.f18327p = zzcgzVar;
        this.f18328q = null;
        this.f18329r = null;
        this.f18331t = null;
        this.f18336y = null;
        this.f18332u = null;
        this.f18333v = null;
        this.f18334w = null;
        this.f18335x = null;
        this.f18337z = null;
        this.f18313A = null;
        this.f18314B = qa1Var;
    }

    public AdOverlayInfoParcel(AbstractC6673kq abstractC6673kq, AbstractC5653o abstractC5653o, m10 m10Var, o10 o10Var, AbstractC5659u abstractC5659u, wn0 wn0Var, boolean z, int i, String str, zzcgz zzcgzVar, qa1 qa1Var) {
        this.f18315d = null;
        this.f18316e = abstractC6673kq;
        this.f18317f = abstractC5653o;
        this.f18318g = wn0Var;
        this.f18330s = m10Var;
        this.f18319h = o10Var;
        this.f18320i = null;
        this.f18321j = z;
        this.f18322k = null;
        this.f18323l = abstractC5659u;
        this.f18324m = i;
        this.f18325n = 3;
        this.f18326o = str;
        this.f18327p = zzcgzVar;
        this.f18328q = null;
        this.f18329r = null;
        this.f18331t = null;
        this.f18336y = null;
        this.f18332u = null;
        this.f18333v = null;
        this.f18334w = null;
        this.f18335x = null;
        this.f18337z = null;
        this.f18313A = null;
        this.f18314B = qa1Var;
    }

    public AdOverlayInfoParcel(AbstractC6673kq abstractC6673kq, AbstractC5653o abstractC5653o, m10 m10Var, o10 o10Var, AbstractC5659u abstractC5659u, wn0 wn0Var, boolean z, int i, String str, String str2, zzcgz zzcgzVar, qa1 qa1Var) {
        this.f18315d = null;
        this.f18316e = abstractC6673kq;
        this.f18317f = abstractC5653o;
        this.f18318g = wn0Var;
        this.f18330s = m10Var;
        this.f18319h = o10Var;
        this.f18320i = str2;
        this.f18321j = z;
        this.f18322k = str;
        this.f18323l = abstractC5659u;
        this.f18324m = i;
        this.f18325n = 3;
        this.f18326o = null;
        this.f18327p = zzcgzVar;
        this.f18328q = null;
        this.f18329r = null;
        this.f18331t = null;
        this.f18336y = null;
        this.f18332u = null;
        this.f18333v = null;
        this.f18334w = null;
        this.f18335x = null;
        this.f18337z = null;
        this.f18313A = null;
        this.f18314B = qa1Var;
    }

    public AdOverlayInfoParcel(wn0 wn0Var, zzcgz zzcgzVar, AbstractC5739u0 abstractC5739u0, dw1 dw1Var, rn1 rn1Var, jo2 jo2Var, String str, String str2, int i) {
        this.f18315d = null;
        this.f18316e = null;
        this.f18317f = null;
        this.f18318g = wn0Var;
        this.f18330s = null;
        this.f18319h = null;
        this.f18320i = null;
        this.f18321j = false;
        this.f18322k = null;
        this.f18323l = null;
        this.f18324m = i;
        this.f18325n = 5;
        this.f18326o = null;
        this.f18327p = zzcgzVar;
        this.f18328q = null;
        this.f18329r = null;
        this.f18331t = str;
        this.f18336y = str2;
        this.f18332u = dw1Var;
        this.f18333v = rn1Var;
        this.f18334w = jo2Var;
        this.f18335x = abstractC5739u0;
        this.f18337z = null;
        this.f18313A = null;
        this.f18314B = null;
    }

    @RecentlyNonNull
    /* renamed from: k0 */
    public static AdOverlayInfoParcel m18207k0(@RecentlyNonNull Intent intent) {
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
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 2, this.f18315d, i, false);
        C6170a.m16938j(parcel, 3, BinderC6255b.m16744m2(this.f18316e).asBinder(), false);
        C6170a.m16938j(parcel, 4, BinderC6255b.m16744m2(this.f18317f).asBinder(), false);
        C6170a.m16938j(parcel, 5, BinderC6255b.m16744m2(this.f18318g).asBinder(), false);
        C6170a.m16938j(parcel, 6, BinderC6255b.m16744m2(this.f18319h).asBinder(), false);
        C6170a.m16930r(parcel, 7, this.f18320i, false);
        C6170a.m16945c(parcel, 8, this.f18321j);
        C6170a.m16930r(parcel, 9, this.f18322k, false);
        C6170a.m16938j(parcel, 10, BinderC6255b.m16744m2(this.f18323l).asBinder(), false);
        C6170a.m16937k(parcel, 11, this.f18324m);
        C6170a.m16937k(parcel, 12, this.f18325n);
        C6170a.m16930r(parcel, 13, this.f18326o, false);
        C6170a.m16931q(parcel, 14, this.f18327p, i, false);
        C6170a.m16930r(parcel, 16, this.f18328q, false);
        C6170a.m16931q(parcel, 17, this.f18329r, i, false);
        C6170a.m16938j(parcel, 18, BinderC6255b.m16744m2(this.f18330s).asBinder(), false);
        C6170a.m16930r(parcel, 19, this.f18331t, false);
        C6170a.m16938j(parcel, 20, BinderC6255b.m16744m2(this.f18332u).asBinder(), false);
        C6170a.m16938j(parcel, 21, BinderC6255b.m16744m2(this.f18333v).asBinder(), false);
        C6170a.m16938j(parcel, 22, BinderC6255b.m16744m2(this.f18334w).asBinder(), false);
        C6170a.m16938j(parcel, 23, BinderC6255b.m16744m2(this.f18335x).asBinder(), false);
        C6170a.m16930r(parcel, 24, this.f18336y, false);
        C6170a.m16930r(parcel, 25, this.f18337z, false);
        C6170a.m16938j(parcel, 26, BinderC6255b.m16744m2(this.f18313A).asBinder(), false);
        C6170a.m16938j(parcel, 27, BinderC6255b.m16744m2(this.f18314B).asBinder(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
