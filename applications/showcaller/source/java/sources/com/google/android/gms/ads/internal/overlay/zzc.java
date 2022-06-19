package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new C5642d();

    /* renamed from: d */
    public final String f18378d;

    /* renamed from: e */
    public final String f18379e;

    /* renamed from: f */
    public final String f18380f;

    /* renamed from: g */
    public final String f18381g;

    /* renamed from: h */
    public final String f18382h;

    /* renamed from: i */
    public final String f18383i;

    /* renamed from: j */
    public final String f18384j;

    /* renamed from: k */
    public final Intent f18385k;

    /* renamed from: l */
    public final AbstractC5657s f18386l;

    /* renamed from: m */
    public final boolean f18387m;

    public zzc(Intent intent, AbstractC5657s abstractC5657s) {
        this(null, null, null, null, null, null, null, intent, BinderC6255b.m16744m2(abstractC5657s).asBinder(), false);
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent, IBinder iBinder, boolean z) {
        this.f18378d = str;
        this.f18379e = str2;
        this.f18380f = str3;
        this.f18381g = str4;
        this.f18382h = str5;
        this.f18383i = str6;
        this.f18384j = str7;
        this.f18385k = intent;
        this.f18386l = (AbstractC5657s) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder));
        this.f18387m = z;
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7, AbstractC5657s abstractC5657s) {
        this(str, str2, str3, str4, str5, str6, str7, null, BinderC6255b.m16744m2(abstractC5657s).asBinder(), false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, this.f18378d, false);
        C6170a.m16930r(parcel, 3, this.f18379e, false);
        C6170a.m16930r(parcel, 4, this.f18380f, false);
        C6170a.m16930r(parcel, 5, this.f18381g, false);
        C6170a.m16930r(parcel, 6, this.f18382h, false);
        C6170a.m16930r(parcel, 7, this.f18383i, false);
        C6170a.m16930r(parcel, 8, this.f18384j, false);
        C6170a.m16931q(parcel, 9, this.f18385k, i, false);
        C6170a.m16938j(parcel, 10, BinderC6255b.m16744m2(this.f18386l).asBinder(), false);
        C6170a.m16945c(parcel, 11, this.f18387m);
        C6170a.m16946b(parcel, m16947a);
    }
}
