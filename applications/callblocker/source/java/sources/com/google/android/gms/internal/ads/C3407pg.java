package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.pg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pg.class */
public final class C3407pg extends AbstractC2663a {
    public static final Parcelable.Creator<C3407pg> CREATOR = new C3406pf();

    /* renamed from: A */
    private final long f17076A;

    /* renamed from: B */
    private final String f17077B;

    /* renamed from: C */
    private final float f17078C;

    /* renamed from: D */
    private final int f17079D;

    /* renamed from: E */
    private final int f17080E;

    /* renamed from: F */
    private final boolean f17081F;

    /* renamed from: G */
    private final boolean f17082G;

    /* renamed from: H */
    private final String f17083H;

    /* renamed from: I */
    private final boolean f17084I;

    /* renamed from: J */
    private final String f17085J;

    /* renamed from: K */
    private final boolean f17086K;

    /* renamed from: L */
    private final int f17087L;

    /* renamed from: M */
    private final Bundle f17088M;

    /* renamed from: N */
    private final String f17089N;

    /* renamed from: O */
    private final ebg f17090O;

    /* renamed from: P */
    private final boolean f17091P;

    /* renamed from: Q */
    private final Bundle f17092Q;

    /* renamed from: R */
    private final String f17093R;

    /* renamed from: S */
    private final String f17094S;

    /* renamed from: T */
    private final String f17095T;

    /* renamed from: U */
    private final boolean f17096U;

    /* renamed from: V */
    private final List<Integer> f17097V;

    /* renamed from: W */
    private final String f17098W;

    /* renamed from: X */
    private final List<String> f17099X;

    /* renamed from: Y */
    private final int f17100Y;

    /* renamed from: Z */
    private final boolean f17101Z;

    /* renamed from: a */
    private final int f17102a;

    /* renamed from: aa */
    private final boolean f17103aa;

    /* renamed from: ab */
    private final boolean f17104ab;

    /* renamed from: ac */
    private final ArrayList<String> f17105ac;

    /* renamed from: ad */
    private final String f17106ad;

    /* renamed from: ae */
    private final C3171gn f17107ae;

    /* renamed from: af */
    private final String f17108af;

    /* renamed from: ag */
    private final Bundle f17109ag;

    /* renamed from: b */
    private final Bundle f17110b;

    /* renamed from: c */
    private final dya f17111c;

    /* renamed from: d */
    private final dyd f17112d;

    /* renamed from: e */
    private final String f17113e;

    /* renamed from: f */
    private final ApplicationInfo f17114f;

    /* renamed from: g */
    private final PackageInfo f17115g;

    /* renamed from: h */
    private final String f17116h;

    /* renamed from: i */
    private final String f17117i;

    /* renamed from: j */
    private final String f17118j;

    /* renamed from: k */
    private final C3647yd f17119k;

    /* renamed from: l */
    private final Bundle f17120l;

    /* renamed from: m */
    private final int f17121m;

    /* renamed from: n */
    private final List<String> f17122n;

    /* renamed from: o */
    private final Bundle f17123o;

    /* renamed from: p */
    private final boolean f17124p;

    /* renamed from: q */
    private final int f17125q;

    /* renamed from: r */
    private final int f17126r;

    /* renamed from: s */
    private final float f17127s;

    /* renamed from: t */
    private final String f17128t;

    /* renamed from: u */
    private final long f17129u;

    /* renamed from: v */
    private final String f17130v;

    /* renamed from: w */
    private final List<String> f17131w;

    /* renamed from: x */
    private final String f17132x;

    /* renamed from: y */
    private final C2835bl f17133y;

    /* renamed from: z */
    private final List<String> f17134z;

    public C3407pg(int i, Bundle bundle, dya dyaVar, dyd dydVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, C3647yd c3647yd, Bundle bundle2, int i2, List<String> list, Bundle bundle3, boolean z, int i3, int i4, float f, String str5, long j, String str6, List<String> list2, String str7, C2835bl c2835bl, List<String> list3, long j2, String str8, float f2, boolean z2, int i5, int i6, boolean z3, boolean z4, String str9, String str10, boolean z5, int i7, Bundle bundle4, String str11, ebg ebgVar, boolean z6, Bundle bundle5, String str12, String str13, String str14, boolean z7, List<Integer> list4, String str15, List<String> list5, int i8, boolean z8, boolean z9, boolean z10, ArrayList<String> arrayList, String str16, C3171gn c3171gn, String str17, Bundle bundle6) {
        this.f17102a = i;
        this.f17110b = bundle;
        this.f17111c = dyaVar;
        this.f17112d = dydVar;
        this.f17113e = str;
        this.f17114f = applicationInfo;
        this.f17115g = packageInfo;
        this.f17116h = str2;
        this.f17117i = str3;
        this.f17118j = str4;
        this.f17119k = c3647yd;
        this.f17120l = bundle2;
        this.f17121m = i2;
        this.f17122n = list;
        this.f17134z = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.f17123o = bundle3;
        this.f17124p = z;
        this.f17125q = i3;
        this.f17126r = i4;
        this.f17127s = f;
        this.f17128t = str5;
        this.f17129u = j;
        this.f17130v = str6;
        this.f17131w = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.f17132x = str7;
        this.f17133y = c2835bl;
        this.f17076A = j2;
        this.f17077B = str8;
        this.f17078C = f2;
        this.f17084I = z2;
        this.f17079D = i5;
        this.f17080E = i6;
        this.f17081F = z3;
        this.f17082G = z4;
        this.f17083H = str9;
        this.f17085J = str10;
        this.f17086K = z5;
        this.f17087L = i7;
        this.f17088M = bundle4;
        this.f17089N = str11;
        this.f17090O = ebgVar;
        this.f17091P = z6;
        this.f17092Q = bundle5;
        this.f17093R = str12;
        this.f17094S = str13;
        this.f17095T = str14;
        this.f17096U = z7;
        this.f17097V = list4;
        this.f17098W = str15;
        this.f17099X = list5;
        this.f17100Y = i8;
        this.f17101Z = z8;
        this.f17103aa = z9;
        this.f17104ab = z10;
        this.f17105ac = arrayList;
        this.f17106ad = str16;
        this.f17107ae = c3171gn;
        this.f17108af = str17;
        this.f17109ag = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f17102a);
        C2664b.m13939a(parcel, 2, this.f17110b, false);
        C2664b.m13937a(parcel, 3, (Parcelable) this.f17111c, i, false);
        C2664b.m13937a(parcel, 4, (Parcelable) this.f17112d, i, false);
        C2664b.m13932a(parcel, 5, this.f17113e, false);
        C2664b.m13937a(parcel, 6, (Parcelable) this.f17114f, i, false);
        C2664b.m13937a(parcel, 7, (Parcelable) this.f17115g, i, false);
        C2664b.m13932a(parcel, 8, this.f17116h, false);
        C2664b.m13932a(parcel, 9, this.f17117i, false);
        C2664b.m13932a(parcel, 10, this.f17118j, false);
        C2664b.m13937a(parcel, 11, (Parcelable) this.f17119k, i, false);
        C2664b.m13939a(parcel, 12, this.f17120l, false);
        C2664b.m13941a(parcel, 13, this.f17121m);
        C2664b.m13923b(parcel, 14, this.f17122n, false);
        C2664b.m13939a(parcel, 15, this.f17123o, false);
        C2664b.m13930a(parcel, 16, this.f17124p);
        C2664b.m13941a(parcel, 18, this.f17125q);
        C2664b.m13941a(parcel, 19, this.f17126r);
        C2664b.m13942a(parcel, 20, this.f17127s);
        C2664b.m13932a(parcel, 21, this.f17128t, false);
        C2664b.m13940a(parcel, 25, this.f17129u);
        C2664b.m13932a(parcel, 26, this.f17130v, false);
        C2664b.m13923b(parcel, 27, this.f17131w, false);
        C2664b.m13932a(parcel, 28, this.f17132x, false);
        C2664b.m13937a(parcel, 29, (Parcelable) this.f17133y, i, false);
        C2664b.m13923b(parcel, 30, this.f17134z, false);
        C2664b.m13940a(parcel, 31, this.f17076A);
        C2664b.m13932a(parcel, 33, this.f17077B, false);
        C2664b.m13942a(parcel, 34, this.f17078C);
        C2664b.m13941a(parcel, 35, this.f17079D);
        C2664b.m13941a(parcel, 36, this.f17080E);
        C2664b.m13930a(parcel, 37, this.f17081F);
        C2664b.m13930a(parcel, 38, this.f17082G);
        C2664b.m13932a(parcel, 39, this.f17083H, false);
        C2664b.m13930a(parcel, 40, this.f17084I);
        C2664b.m13932a(parcel, 41, this.f17085J, false);
        C2664b.m13930a(parcel, 42, this.f17086K);
        C2664b.m13941a(parcel, 43, this.f17087L);
        C2664b.m13939a(parcel, 44, this.f17088M, false);
        C2664b.m13932a(parcel, 45, this.f17089N, false);
        C2664b.m13937a(parcel, 46, (Parcelable) this.f17090O, i, false);
        C2664b.m13930a(parcel, 47, this.f17091P);
        C2664b.m13939a(parcel, 48, this.f17092Q, false);
        C2664b.m13932a(parcel, 49, this.f17093R, false);
        C2664b.m13932a(parcel, 50, this.f17094S, false);
        C2664b.m13932a(parcel, 51, this.f17095T, false);
        C2664b.m13930a(parcel, 52, this.f17096U);
        C2664b.m13931a(parcel, 53, this.f17097V, false);
        C2664b.m13932a(parcel, 54, this.f17098W, false);
        C2664b.m13923b(parcel, 55, this.f17099X, false);
        C2664b.m13941a(parcel, 56, this.f17100Y);
        C2664b.m13930a(parcel, 57, this.f17101Z);
        C2664b.m13930a(parcel, 58, this.f17103aa);
        C2664b.m13930a(parcel, 59, this.f17104ab);
        C2664b.m13923b(parcel, 60, this.f17105ac, false);
        C2664b.m13932a(parcel, 61, this.f17106ad, false);
        C2664b.m13937a(parcel, 63, (Parcelable) this.f17107ae, i, false);
        C2664b.m13932a(parcel, 64, this.f17108af, false);
        C2664b.m13939a(parcel, 65, this.f17109ag, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
