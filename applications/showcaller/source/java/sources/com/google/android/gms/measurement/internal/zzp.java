package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzp.class */
public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new C7667ba();

    /* renamed from: d */
    public final String f35883d;

    /* renamed from: e */
    public final String f35884e;

    /* renamed from: f */
    public final String f35885f;

    /* renamed from: g */
    public final String f35886g;

    /* renamed from: h */
    public final long f35887h;

    /* renamed from: i */
    public final long f35888i;

    /* renamed from: j */
    public final String f35889j;

    /* renamed from: k */
    public final boolean f35890k;

    /* renamed from: l */
    public final boolean f35891l;

    /* renamed from: m */
    public final long f35892m;

    /* renamed from: n */
    public final String f35893n;

    /* renamed from: o */
    public final long f35894o;

    /* renamed from: p */
    public final long f35895p;

    /* renamed from: q */
    public final int f35896q;

    /* renamed from: r */
    public final boolean f35897r;

    /* renamed from: s */
    public final boolean f35898s;

    /* renamed from: t */
    public final String f35899t;

    /* renamed from: u */
    public final Boolean f35900u;

    /* renamed from: v */
    public final long f35901v;

    /* renamed from: w */
    public final List<String> f35902w;

    /* renamed from: x */
    public final String f35903x;

    /* renamed from: y */
    public final String f35904y;

    public zzp(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        C6155o.m17022f(str);
        this.f35883d = str;
        this.f35884e = true == TextUtils.isEmpty(str2) ? null : str2;
        this.f35885f = str3;
        this.f35892m = j;
        this.f35886g = str4;
        this.f35887h = j2;
        this.f35888i = j3;
        this.f35889j = str5;
        this.f35890k = z;
        this.f35891l = z2;
        this.f35893n = str6;
        this.f35894o = j4;
        this.f35895p = j5;
        this.f35896q = i;
        this.f35897r = z3;
        this.f35898s = z4;
        this.f35899t = str7;
        this.f35900u = bool;
        this.f35901v = j6;
        this.f35902w = list;
        this.f35903x = str8;
        this.f35904y = str9;
    }

    public zzp(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        this.f35883d = str;
        this.f35884e = str2;
        this.f35885f = str3;
        this.f35892m = j3;
        this.f35886g = str4;
        this.f35887h = j;
        this.f35888i = j2;
        this.f35889j = str5;
        this.f35890k = z;
        this.f35891l = z2;
        this.f35893n = str6;
        this.f35894o = j4;
        this.f35895p = j5;
        this.f35896q = i;
        this.f35897r = z3;
        this.f35898s = z4;
        this.f35899t = str7;
        this.f35900u = bool;
        this.f35901v = j6;
        this.f35902w = list;
        this.f35903x = str8;
        this.f35904y = str9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, this.f35883d, false);
        C6170a.m16930r(parcel, 3, this.f35884e, false);
        C6170a.m16930r(parcel, 4, this.f35885f, false);
        C6170a.m16930r(parcel, 5, this.f35886g, false);
        C6170a.m16934n(parcel, 6, this.f35887h);
        C6170a.m16934n(parcel, 7, this.f35888i);
        C6170a.m16930r(parcel, 8, this.f35889j, false);
        C6170a.m16945c(parcel, 9, this.f35890k);
        C6170a.m16945c(parcel, 10, this.f35891l);
        C6170a.m16934n(parcel, 11, this.f35892m);
        C6170a.m16930r(parcel, 12, this.f35893n, false);
        C6170a.m16934n(parcel, 13, this.f35894o);
        C6170a.m16934n(parcel, 14, this.f35895p);
        C6170a.m16937k(parcel, 15, this.f35896q);
        C6170a.m16945c(parcel, 16, this.f35897r);
        C6170a.m16945c(parcel, 18, this.f35898s);
        C6170a.m16930r(parcel, 19, this.f35899t, false);
        C6170a.m16944d(parcel, 21, this.f35900u, false);
        C6170a.m16934n(parcel, 22, this.f35901v);
        C6170a.m16928t(parcel, 23, this.f35902w, false);
        C6170a.m16930r(parcel, 24, this.f35903x, false);
        C6170a.m16930r(parcel, 25, this.f35904y, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
