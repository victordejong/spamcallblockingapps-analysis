package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.C2286e;
import com.google.android.gms.ads.C2396s;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyd.class */
public final class dyd extends AbstractC2663a {
    public static final Parcelable.Creator<dyd> CREATOR = new dyg();

    /* renamed from: a */
    public final String f16090a;

    /* renamed from: b */
    public final int f16091b;

    /* renamed from: c */
    public final int f16092c;

    /* renamed from: d */
    public final boolean f16093d;

    /* renamed from: e */
    public final int f16094e;

    /* renamed from: f */
    public final int f16095f;

    /* renamed from: g */
    public final dyd[] f16096g;

    /* renamed from: h */
    public final boolean f16097h;

    /* renamed from: i */
    public final boolean f16098i;

    /* renamed from: j */
    public boolean f16099j;

    /* renamed from: k */
    public boolean f16100k;

    /* renamed from: l */
    public boolean f16101l;

    /* renamed from: m */
    public boolean f16102m;

    /* renamed from: n */
    private boolean f16103n;

    public dyd() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    public dyd(Context context, C2286e c2286e) {
        this(context, new C2286e[]{c2286e});
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public dyd(android.content.Context r9, com.google.android.gms.ads.C2286e[] r10) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dyd.<init>(android.content.Context, com.google.android.gms.ads.e[]):void");
    }

    public dyd(String str, int i, int i2, boolean z, int i3, int i4, dyd[] dydVarArr, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        this.f16090a = str;
        this.f16091b = i;
        this.f16092c = i2;
        this.f16093d = z;
        this.f16094e = i3;
        this.f16095f = i4;
        this.f16096g = dydVarArr;
        this.f16097h = z2;
        this.f16098i = z3;
        this.f16099j = z4;
        this.f16100k = z5;
        this.f16103n = z6;
        this.f16101l = z7;
        this.f16102m = z8;
    }

    /* renamed from: a */
    public static int m8192a(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    /* renamed from: a */
    public static dyd m8193a() {
        return new dyd("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false);
    }

    /* renamed from: b */
    public static int m8190b(DisplayMetrics displayMetrics) {
        return (int) (m8188c(displayMetrics) * displayMetrics.density);
    }

    /* renamed from: b */
    public static dyd m8191b() {
        return new dyd("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    /* renamed from: c */
    private static int m8188c(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        return i <= 400 ? 32 : i <= 720 ? 50 : 90;
    }

    /* renamed from: c */
    public static dyd m8189c() {
        return new dyd("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false);
    }

    /* renamed from: d */
    public static dyd m8187d() {
        return new dyd("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false);
    }

    /* renamed from: e */
    public final C2286e m8186e() {
        return C2396s.m14608a(this.f16094e, this.f16091b, this.f16090a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f16090a, false);
        C2664b.m13941a(parcel, 3, this.f16091b);
        C2664b.m13941a(parcel, 4, this.f16092c);
        C2664b.m13930a(parcel, 5, this.f16093d);
        C2664b.m13941a(parcel, 6, this.f16094e);
        C2664b.m13941a(parcel, 7, this.f16095f);
        C2664b.m13928a(parcel, 8, (Parcelable[]) this.f16096g, i, false);
        C2664b.m13930a(parcel, 9, this.f16097h);
        C2664b.m13930a(parcel, 10, this.f16098i);
        C2664b.m13930a(parcel, 11, this.f16099j);
        C2664b.m13930a(parcel, 12, this.f16100k);
        C2664b.m13930a(parcel, 13, this.f16103n);
        C2664b.m13930a(parcel, 14, this.f16101l);
        C2664b.m13930a(parcel, 15, this.f16102m);
        C2664b.m13943a(parcel, m13944a);
    }
}
