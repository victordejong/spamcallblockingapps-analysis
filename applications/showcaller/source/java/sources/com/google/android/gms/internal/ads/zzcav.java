package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcav.class */
public final class zzcav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcav> CREATOR = new mc0();

    /* renamed from: A */
    public final String f33763A;

    /* renamed from: B */
    public final zzblv f33764B;

    /* renamed from: C */
    public final List<String> f33765C;

    /* renamed from: D */
    public final long f33766D;

    /* renamed from: E */
    public final String f33767E;

    /* renamed from: F */
    public final float f33768F;

    /* renamed from: G */
    public final int f33769G;

    /* renamed from: H */
    public final int f33770H;

    /* renamed from: I */
    public final boolean f33771I;

    /* renamed from: J */
    public final String f33772J;

    /* renamed from: K */
    public final boolean f33773K;

    /* renamed from: L */
    public final String f33774L;

    /* renamed from: M */
    public final boolean f33775M;

    /* renamed from: N */
    public final int f33776N;

    /* renamed from: O */
    public final Bundle f33777O;

    /* renamed from: P */
    public final String f33778P;

    /* renamed from: Q */
    public final zzbhg f33779Q;

    /* renamed from: R */
    public final boolean f33780R;

    /* renamed from: S */
    public final Bundle f33781S;

    /* renamed from: T */
    public final String f33782T;

    /* renamed from: U */
    public final String f33783U;

    /* renamed from: V */
    public final String f33784V;

    /* renamed from: W */
    public final boolean f33785W;

    /* renamed from: X */
    public final List<Integer> f33786X;

    /* renamed from: Y */
    public final String f33787Y;

    /* renamed from: Z */
    public final List<String> f33788Z;

    /* renamed from: a0 */
    public final int f33789a0;

    /* renamed from: b0 */
    public final boolean f33790b0;

    /* renamed from: c0 */
    public final boolean f33791c0;

    /* renamed from: d */
    public final int f33792d;

    /* renamed from: d0 */
    public final boolean f33793d0;

    /* renamed from: e */
    public final Bundle f33794e;

    /* renamed from: e0 */
    public final ArrayList<String> f33795e0;

    /* renamed from: f */
    public final zzbdg f33796f;

    /* renamed from: f0 */
    public final String f33797f0;

    /* renamed from: g */
    public final zzbdl f33798g;

    /* renamed from: g0 */
    public final zzbrx f33799g0;

    /* renamed from: h */
    public final String f33800h;

    /* renamed from: h0 */
    public final String f33801h0;

    /* renamed from: i */
    public final ApplicationInfo f33802i;

    /* renamed from: i0 */
    public final Bundle f33803i0;

    /* renamed from: j */
    public final PackageInfo f33804j;

    /* renamed from: k */
    public final String f33805k;

    /* renamed from: l */
    public final String f33806l;

    /* renamed from: m */
    public final String f33807m;

    /* renamed from: n */
    public final zzcgz f33808n;

    /* renamed from: o */
    public final Bundle f33809o;

    /* renamed from: p */
    public final int f33810p;

    /* renamed from: q */
    public final List<String> f33811q;

    /* renamed from: r */
    public final Bundle f33812r;

    /* renamed from: s */
    public final boolean f33813s;

    /* renamed from: t */
    public final int f33814t;

    /* renamed from: u */
    public final int f33815u;

    /* renamed from: v */
    public final float f33816v;

    /* renamed from: w */
    public final String f33817w;

    /* renamed from: x */
    public final long f33818x;

    /* renamed from: y */
    public final String f33819y;

    /* renamed from: z */
    public final List<String> f33820z;

    public zzcav(int i, Bundle bundle, zzbdg zzbdgVar, zzbdl zzbdlVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, zzcgz zzcgzVar, Bundle bundle2, int i2, List<String> list, Bundle bundle3, boolean z, int i3, int i4, float f, String str5, long j, String str6, List<String> list2, String str7, zzblv zzblvVar, List<String> list3, long j2, String str8, float f2, boolean z2, int i5, int i6, boolean z3, String str9, String str10, boolean z4, int i7, Bundle bundle4, String str11, zzbhg zzbhgVar, boolean z5, Bundle bundle5, String str12, String str13, String str14, boolean z6, List<Integer> list4, String str15, List<String> list5, int i8, boolean z7, boolean z8, boolean z9, ArrayList<String> arrayList, String str16, zzbrx zzbrxVar, String str17, Bundle bundle6) {
        this.f33792d = i;
        this.f33794e = bundle;
        this.f33796f = zzbdgVar;
        this.f33798g = zzbdlVar;
        this.f33800h = str;
        this.f33802i = applicationInfo;
        this.f33804j = packageInfo;
        this.f33805k = str2;
        this.f33806l = str3;
        this.f33807m = str4;
        this.f33808n = zzcgzVar;
        this.f33809o = bundle2;
        this.f33810p = i2;
        this.f33811q = list;
        this.f33765C = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.f33812r = bundle3;
        this.f33813s = z;
        this.f33814t = i3;
        this.f33815u = i4;
        this.f33816v = f;
        this.f33817w = str5;
        this.f33818x = j;
        this.f33819y = str6;
        this.f33820z = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.f33763A = str7;
        this.f33764B = zzblvVar;
        this.f33766D = j2;
        this.f33767E = str8;
        this.f33768F = f2;
        this.f33773K = z2;
        this.f33769G = i5;
        this.f33770H = i6;
        this.f33771I = z3;
        this.f33772J = str9;
        this.f33774L = str10;
        this.f33775M = z4;
        this.f33776N = i7;
        this.f33777O = bundle4;
        this.f33778P = str11;
        this.f33779Q = zzbhgVar;
        this.f33780R = z5;
        this.f33781S = bundle5;
        this.f33782T = str12;
        this.f33783U = str13;
        this.f33784V = str14;
        this.f33785W = z6;
        this.f33786X = list4;
        this.f33787Y = str15;
        this.f33788Z = list5;
        this.f33789a0 = i8;
        this.f33790b0 = z7;
        this.f33791c0 = z8;
        this.f33793d0 = z9;
        this.f33795e0 = arrayList;
        this.f33797f0 = str16;
        this.f33799g0 = zzbrxVar;
        this.f33801h0 = str17;
        this.f33803i0 = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f33792d);
        C6170a.m16943e(parcel, 2, this.f33794e, false);
        C6170a.m16931q(parcel, 3, this.f33796f, i, false);
        C6170a.m16931q(parcel, 4, this.f33798g, i, false);
        C6170a.m16930r(parcel, 5, this.f33800h, false);
        C6170a.m16931q(parcel, 6, this.f33802i, i, false);
        C6170a.m16931q(parcel, 7, this.f33804j, i, false);
        C6170a.m16930r(parcel, 8, this.f33805k, false);
        C6170a.m16930r(parcel, 9, this.f33806l, false);
        C6170a.m16930r(parcel, 10, this.f33807m, false);
        C6170a.m16931q(parcel, 11, this.f33808n, i, false);
        C6170a.m16943e(parcel, 12, this.f33809o, false);
        C6170a.m16937k(parcel, 13, this.f33810p);
        C6170a.m16928t(parcel, 14, this.f33811q, false);
        C6170a.m16943e(parcel, 15, this.f33812r, false);
        C6170a.m16945c(parcel, 16, this.f33813s);
        C6170a.m16937k(parcel, 18, this.f33814t);
        C6170a.m16937k(parcel, 19, this.f33815u);
        C6170a.m16940h(parcel, 20, this.f33816v);
        C6170a.m16930r(parcel, 21, this.f33817w, false);
        C6170a.m16934n(parcel, 25, this.f33818x);
        C6170a.m16930r(parcel, 26, this.f33819y, false);
        C6170a.m16928t(parcel, 27, this.f33820z, false);
        C6170a.m16930r(parcel, 28, this.f33763A, false);
        C6170a.m16931q(parcel, 29, this.f33764B, i, false);
        C6170a.m16928t(parcel, 30, this.f33765C, false);
        C6170a.m16934n(parcel, 31, this.f33766D);
        C6170a.m16930r(parcel, 33, this.f33767E, false);
        C6170a.m16940h(parcel, 34, this.f33768F);
        C6170a.m16937k(parcel, 35, this.f33769G);
        C6170a.m16937k(parcel, 36, this.f33770H);
        C6170a.m16945c(parcel, 37, this.f33771I);
        C6170a.m16930r(parcel, 39, this.f33772J, false);
        C6170a.m16945c(parcel, 40, this.f33773K);
        C6170a.m16930r(parcel, 41, this.f33774L, false);
        C6170a.m16945c(parcel, 42, this.f33775M);
        C6170a.m16937k(parcel, 43, this.f33776N);
        C6170a.m16943e(parcel, 44, this.f33777O, false);
        C6170a.m16930r(parcel, 45, this.f33778P, false);
        C6170a.m16931q(parcel, 46, this.f33779Q, i, false);
        C6170a.m16945c(parcel, 47, this.f33780R);
        C6170a.m16943e(parcel, 48, this.f33781S, false);
        C6170a.m16930r(parcel, 49, this.f33782T, false);
        C6170a.m16930r(parcel, 50, this.f33783U, false);
        C6170a.m16930r(parcel, 51, this.f33784V, false);
        C6170a.m16945c(parcel, 52, this.f33785W);
        C6170a.m16935m(parcel, 53, this.f33786X, false);
        C6170a.m16930r(parcel, 54, this.f33787Y, false);
        C6170a.m16928t(parcel, 55, this.f33788Z, false);
        C6170a.m16937k(parcel, 56, this.f33789a0);
        C6170a.m16945c(parcel, 57, this.f33790b0);
        C6170a.m16945c(parcel, 58, this.f33791c0);
        C6170a.m16945c(parcel, 59, this.f33793d0);
        C6170a.m16928t(parcel, 60, this.f33795e0, false);
        C6170a.m16930r(parcel, 61, this.f33797f0, false);
        C6170a.m16931q(parcel, 63, this.f33799g0, i, false);
        C6170a.m16930r(parcel, 64, this.f33801h0, false);
        C6170a.m16943e(parcel, 65, this.f33803i0, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
