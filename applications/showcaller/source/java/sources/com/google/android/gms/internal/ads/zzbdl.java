package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdl.class */
public final class zzbdl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdl> CREATOR = new C7191yq();

    /* renamed from: d */
    public final String f33682d;

    /* renamed from: e */
    public final int f33683e;

    /* renamed from: f */
    public final int f33684f;

    /* renamed from: g */
    public final boolean f33685g;

    /* renamed from: h */
    public final int f33686h;

    /* renamed from: i */
    public final int f33687i;

    /* renamed from: j */
    public final zzbdl[] f33688j;

    /* renamed from: k */
    public final boolean f33689k;

    /* renamed from: l */
    public final boolean f33690l;

    /* renamed from: m */
    public boolean f33691m;

    /* renamed from: n */
    public boolean f33692n;

    /* renamed from: o */
    public boolean f33693o;

    /* renamed from: p */
    public boolean f33694p;

    /* renamed from: q */
    public boolean f33695q;

    /* renamed from: r */
    public boolean f33696r;

    public zzbdl() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public zzbdl(Context context, C5605f c5605f) {
        this(context, new C5605f[]{c5605f});
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0218  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbdl(android.content.Context r9, com.google.android.gms.ads.C5605f[] r10) {
        /*
            Method dump skipped, instructions count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdl.<init>(android.content.Context, com.google.android.gms.ads.f[]):void");
    }

    public zzbdl(String str, int i, int i2, boolean z, int i3, int i4, zzbdl[] zzbdlVarArr, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.f33682d = str;
        this.f33683e = i;
        this.f33684f = i2;
        this.f33685g = z;
        this.f33686h = i3;
        this.f33687i = i4;
        this.f33688j = zzbdlVarArr;
        this.f33689k = z2;
        this.f33690l = z3;
        this.f33691m = z4;
        this.f33692n = z5;
        this.f33693o = z6;
        this.f33694p = z7;
        this.f33695q = z8;
        this.f33696r = z9;
    }

    /* renamed from: k0 */
    public static int m8083k0(DisplayMetrics displayMetrics) {
        return (int) (m8078p0(displayMetrics) * displayMetrics.density);
    }

    /* renamed from: l0 */
    public static zzbdl m8082l0() {
        return new zzbdl("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false, false);
    }

    /* renamed from: m0 */
    public static zzbdl m8081m0() {
        return new zzbdl("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    /* renamed from: n0 */
    public static zzbdl m8080n0() {
        return new zzbdl("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false, false);
    }

    /* renamed from: o0 */
    public static zzbdl m8079o0() {
        return new zzbdl("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
    }

    /* renamed from: p0 */
    private static int m8078p0(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, this.f33682d, false);
        C6170a.m16937k(parcel, 3, this.f33683e);
        C6170a.m16937k(parcel, 4, this.f33684f);
        C6170a.m16945c(parcel, 5, this.f33685g);
        C6170a.m16937k(parcel, 6, this.f33686h);
        C6170a.m16937k(parcel, 7, this.f33687i);
        C6170a.m16927u(parcel, 8, this.f33688j, i, false);
        C6170a.m16945c(parcel, 9, this.f33689k);
        C6170a.m16945c(parcel, 10, this.f33690l);
        C6170a.m16945c(parcel, 11, this.f33691m);
        C6170a.m16945c(parcel, 12, this.f33692n);
        C6170a.m16945c(parcel, 13, this.f33693o);
        C6170a.m16945c(parcel, 14, this.f33694p);
        C6170a.m16945c(parcel, 15, this.f33695q);
        C6170a.m16945c(parcel, 16, this.f33696r);
        C6170a.m16946b(parcel, m16947a);
    }
}
