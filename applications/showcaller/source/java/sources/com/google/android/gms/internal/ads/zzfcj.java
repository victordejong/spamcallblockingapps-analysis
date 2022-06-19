package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfcj.class */
public final class zzfcj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfcj> CREATOR = new pl2();

    /* renamed from: d */
    private final zzfcg[] f33941d;

    /* renamed from: e */
    public final Context f33942e;

    /* renamed from: f */
    private final int f33943f;

    /* renamed from: g */
    public final zzfcg f33944g;

    /* renamed from: h */
    public final int f33945h;

    /* renamed from: i */
    public final int f33946i;

    /* renamed from: j */
    public final int f33947j;

    /* renamed from: k */
    public final String f33948k;

    /* renamed from: l */
    private final int f33949l;

    /* renamed from: m */
    private final int f33950m;

    /* renamed from: n */
    private final int[] f33951n;

    /* renamed from: o */
    private final int[] f33952o;

    /* renamed from: p */
    public final int f33953p;

    public zzfcj(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        zzfcg[] values = zzfcg.values();
        this.f33941d = values;
        int[] m12886a = nl2.m12886a();
        this.f33951n = m12886a;
        int[] m12593a = ol2.m12593a();
        this.f33952o = m12593a;
        this.f33942e = null;
        this.f33943f = i;
        this.f33944g = values[i];
        this.f33945h = i2;
        this.f33946i = i3;
        this.f33947j = i4;
        this.f33948k = str;
        this.f33949l = i5;
        this.f33953p = m12886a[i5];
        this.f33950m = i6;
        int i7 = m12593a[i6];
    }

    private zzfcj(Context context, zzfcg zzfcgVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.f33941d = zzfcg.values();
        this.f33951n = nl2.m12886a();
        this.f33952o = ol2.m12593a();
        this.f33942e = context;
        this.f33943f = zzfcgVar.ordinal();
        this.f33944g = zzfcgVar;
        this.f33945h = i;
        this.f33946i = i2;
        this.f33947j = i3;
        this.f33948k = str;
        int i4 = 2;
        if ("oldest".equals(str2)) {
            i4 = 1;
        } else if (!"lru".equals(str2) && "lfu".equals(str2)) {
            i4 = 3;
        }
        this.f33953p = i4;
        this.f33949l = i4 - 1;
        "onAdClosed".equals(str3);
        this.f33950m = 0;
    }

    /* renamed from: k0 */
    public static zzfcj m7873k0(zzfcg zzfcgVar, Context context) {
        if (zzfcgVar == zzfcg.Rewarded) {
            return new zzfcj(context, zzfcgVar, ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25496H4)).intValue(), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25544N4)).intValue(), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25560P4)).intValue(), (String) C7192yr.m8714c().m14263c(C6679kw.f25576R4), (String) C7192yr.m8714c().m14263c(C6679kw.f25512J4), (String) C7192yr.m8714c().m14263c(C6679kw.f25528L4));
        } else if (zzfcgVar == zzfcg.Interstitial) {
            return new zzfcj(context, zzfcgVar, ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25504I4)).intValue(), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25552O4)).intValue(), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25568Q4)).intValue(), (String) C7192yr.m8714c().m14263c(C6679kw.f25584S4), (String) C7192yr.m8714c().m14263c(C6679kw.f25520K4), (String) C7192yr.m8714c().m14263c(C6679kw.f25536M4));
        } else if (zzfcgVar != zzfcg.AppOpen) {
            return null;
        } else {
            return new zzfcj(context, zzfcgVar, ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25608V4)).intValue(), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25624X4)).intValue(), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25632Y4)).intValue(), (String) C7192yr.m8714c().m14263c(C6679kw.f25592T4), (String) C7192yr.m8714c().m14263c(C6679kw.f25600U4), (String) C7192yr.m8714c().m14263c(C6679kw.f25616W4));
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f33943f);
        C6170a.m16937k(parcel, 2, this.f33945h);
        C6170a.m16937k(parcel, 3, this.f33946i);
        C6170a.m16937k(parcel, 4, this.f33947j);
        C6170a.m16930r(parcel, 5, this.f33948k, false);
        C6170a.m16937k(parcel, 6, this.f33949l);
        C6170a.m16937k(parcel, 7, this.f33950m);
        C6170a.m16946b(parcel, m16947a);
    }
}
