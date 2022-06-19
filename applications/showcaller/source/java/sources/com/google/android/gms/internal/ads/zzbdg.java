package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdg.class */
public final class zzbdg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdg> CREATOR = new C7080vq();

    /* renamed from: A */
    public final String f33658A;

    /* renamed from: d */
    public final int f33659d;
    @Deprecated

    /* renamed from: e */
    public final long f33660e;

    /* renamed from: f */
    public final Bundle f33661f;
    @Deprecated

    /* renamed from: g */
    public final int f33662g;

    /* renamed from: h */
    public final List<String> f33663h;

    /* renamed from: i */
    public final boolean f33664i;

    /* renamed from: j */
    public final int f33665j;

    /* renamed from: k */
    public final boolean f33666k;

    /* renamed from: l */
    public final String f33667l;

    /* renamed from: m */
    public final zzbio f33668m;

    /* renamed from: n */
    public final Location f33669n;

    /* renamed from: o */
    public final String f33670o;

    /* renamed from: p */
    public final Bundle f33671p;

    /* renamed from: q */
    public final Bundle f33672q;

    /* renamed from: r */
    public final List<String> f33673r;

    /* renamed from: s */
    public final String f33674s;

    /* renamed from: t */
    public final String f33675t;
    @Deprecated

    /* renamed from: u */
    public final boolean f33676u;

    /* renamed from: v */
    public final zzbcx f33677v;

    /* renamed from: w */
    public final int f33678w;

    /* renamed from: x */
    public final String f33679x;

    /* renamed from: y */
    public final List<String> f33680y;

    /* renamed from: z */
    public final int f33681z;

    public zzbdg(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzbio zzbioVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3, zzbcx zzbcxVar, int i4, String str5, List<String> list3, int i5, String str6) {
        this.f33659d = i;
        this.f33660e = j;
        this.f33661f = bundle == null ? new Bundle() : bundle;
        this.f33662g = i2;
        this.f33663h = list;
        this.f33664i = z;
        this.f33665j = i3;
        this.f33666k = z2;
        this.f33667l = str;
        this.f33668m = zzbioVar;
        this.f33669n = location;
        this.f33670o = str2;
        this.f33671p = bundle2 == null ? new Bundle() : bundle2;
        this.f33672q = bundle3;
        this.f33673r = list2;
        this.f33674s = str3;
        this.f33675t = str4;
        this.f33676u = z3;
        this.f33677v = zzbcxVar;
        this.f33678w = i4;
        this.f33679x = str5;
        this.f33680y = list3 == null ? new ArrayList() : list3;
        this.f33681z = i5;
        this.f33658A = str6;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbdg)) {
            return false;
        }
        zzbdg zzbdgVar = (zzbdg) obj;
        return this.f33659d == zzbdgVar.f33659d && this.f33660e == zzbdgVar.f33660e && fi0.m15183a(this.f33661f, zzbdgVar.f33661f) && this.f33662g == zzbdgVar.f33662g && C6147m.m17044a(this.f33663h, zzbdgVar.f33663h) && this.f33664i == zzbdgVar.f33664i && this.f33665j == zzbdgVar.f33665j && this.f33666k == zzbdgVar.f33666k && C6147m.m17044a(this.f33667l, zzbdgVar.f33667l) && C6147m.m17044a(this.f33668m, zzbdgVar.f33668m) && C6147m.m17044a(this.f33669n, zzbdgVar.f33669n) && C6147m.m17044a(this.f33670o, zzbdgVar.f33670o) && fi0.m15183a(this.f33671p, zzbdgVar.f33671p) && fi0.m15183a(this.f33672q, zzbdgVar.f33672q) && C6147m.m17044a(this.f33673r, zzbdgVar.f33673r) && C6147m.m17044a(this.f33674s, zzbdgVar.f33674s) && C6147m.m17044a(this.f33675t, zzbdgVar.f33675t) && this.f33676u == zzbdgVar.f33676u && this.f33678w == zzbdgVar.f33678w && C6147m.m17044a(this.f33679x, zzbdgVar.f33679x) && C6147m.m17044a(this.f33680y, zzbdgVar.f33680y) && this.f33681z == zzbdgVar.f33681z && C6147m.m17044a(this.f33658A, zzbdgVar.f33658A);
    }

    public final int hashCode() {
        return C6147m.m17043b(Integer.valueOf(this.f33659d), Long.valueOf(this.f33660e), this.f33661f, Integer.valueOf(this.f33662g), this.f33663h, Boolean.valueOf(this.f33664i), Integer.valueOf(this.f33665j), Boolean.valueOf(this.f33666k), this.f33667l, this.f33668m, this.f33669n, this.f33670o, this.f33671p, this.f33672q, this.f33673r, this.f33674s, this.f33675t, Boolean.valueOf(this.f33676u), Integer.valueOf(this.f33678w), this.f33679x, this.f33680y, Integer.valueOf(this.f33681z), this.f33658A);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f33659d);
        C6170a.m16934n(parcel, 2, this.f33660e);
        C6170a.m16943e(parcel, 3, this.f33661f, false);
        C6170a.m16937k(parcel, 4, this.f33662g);
        C6170a.m16928t(parcel, 5, this.f33663h, false);
        C6170a.m16945c(parcel, 6, this.f33664i);
        C6170a.m16937k(parcel, 7, this.f33665j);
        C6170a.m16945c(parcel, 8, this.f33666k);
        C6170a.m16930r(parcel, 9, this.f33667l, false);
        C6170a.m16931q(parcel, 10, this.f33668m, i, false);
        C6170a.m16931q(parcel, 11, this.f33669n, i, false);
        C6170a.m16930r(parcel, 12, this.f33670o, false);
        C6170a.m16943e(parcel, 13, this.f33671p, false);
        C6170a.m16943e(parcel, 14, this.f33672q, false);
        C6170a.m16928t(parcel, 15, this.f33673r, false);
        C6170a.m16930r(parcel, 16, this.f33674s, false);
        C6170a.m16930r(parcel, 17, this.f33675t, false);
        C6170a.m16945c(parcel, 18, this.f33676u);
        C6170a.m16931q(parcel, 19, this.f33677v, i, false);
        C6170a.m16937k(parcel, 20, this.f33678w);
        C6170a.m16930r(parcel, 21, this.f33679x, false);
        C6170a.m16928t(parcel, 22, this.f33680y, false);
        C6170a.m16937k(parcel, 23, this.f33681z);
        C6170a.m16930r(parcel, 24, this.f33658A, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
