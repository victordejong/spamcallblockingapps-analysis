package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ciu.class */
public final class ciu extends AbstractC2663a {
    public static final Parcelable.Creator<ciu> CREATOR = new ciz();
    @Nullable

    /* renamed from: a */
    public final Context f13128a;

    /* renamed from: b */
    public final cix f13129b;

    /* renamed from: c */
    public final int f13130c;

    /* renamed from: d */
    public final int f13131d;

    /* renamed from: e */
    public final int f13132e;

    /* renamed from: f */
    public final String f13133f;

    /* renamed from: g */
    public final int f13134g;

    /* renamed from: h */
    private final cix[] f13135h;

    /* renamed from: i */
    private final int[] f13136i;

    /* renamed from: j */
    private final int[] f13137j;

    /* renamed from: k */
    private final int f13138k;

    /* renamed from: l */
    private final int f13139l;

    /* renamed from: m */
    private final int f13140m;

    /* renamed from: n */
    private final int f13141n;

    public ciu(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        this.f13135h = cix.values();
        this.f13136i = ciw.m11218a();
        this.f13137j = ciw.m11217b();
        this.f13128a = null;
        this.f13138k = i;
        this.f13129b = this.f13135h[i];
        this.f13130c = i2;
        this.f13131d = i3;
        this.f13132e = i4;
        this.f13133f = str;
        this.f13139l = i5;
        this.f13134g = this.f13136i[i5];
        this.f13140m = i6;
        this.f13141n = this.f13137j[i6];
    }

    private ciu(@Nullable Context context, cix cixVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.f13135h = cix.values();
        this.f13136i = ciw.m11218a();
        this.f13137j = ciw.m11217b();
        this.f13128a = context;
        this.f13138k = cixVar.ordinal();
        this.f13129b = cixVar;
        this.f13130c = i;
        this.f13131d = i2;
        this.f13132e = i3;
        this.f13133f = str;
        this.f13134g = "oldest".equals(str2) ? ciw.f13144a : ("lru".equals(str2) || !"lfu".equals(str2)) ? ciw.f13145b : ciw.f13146c;
        this.f13139l = this.f13134g - 1;
        "onAdClosed".equals(str3);
        this.f13141n = ciw.f13147d;
        this.f13140m = this.f13141n - 1;
    }

    /* renamed from: a */
    public static ciu m11220a(cix cixVar, Context context) {
        ciu ciuVar;
        if (cixVar == cix.Rewarded) {
            ciuVar = new ciu(context, cixVar, ((Integer) dyx.m8158e().m7876a(edi.f16534dh)).intValue(), ((Integer) dyx.m8158e().m7876a(edi.f16540dn)).intValue(), ((Integer) dyx.m8158e().m7876a(edi.f16542dp)).intValue(), (String) dyx.m8158e().m7876a(edi.f16544dr), (String) dyx.m8158e().m7876a(edi.f16536dj), (String) dyx.m8158e().m7876a(edi.f16538dl));
        } else if (cixVar == cix.Interstitial) {
            ciuVar = new ciu(context, cixVar, ((Integer) dyx.m8158e().m7876a(edi.f16535di)).intValue(), ((Integer) dyx.m8158e().m7876a(edi.f16541do)).intValue(), ((Integer) dyx.m8158e().m7876a(edi.f16543dq)).intValue(), (String) dyx.m8158e().m7876a(edi.f16545ds), (String) dyx.m8158e().m7876a(edi.f16537dk), (String) dyx.m8158e().m7876a(edi.f16539dm));
        } else if (cixVar == cix.AppOpen) {
            ciuVar = new ciu(context, cixVar, ((Integer) dyx.m8158e().m7876a(edi.f16548dv)).intValue(), ((Integer) dyx.m8158e().m7876a(edi.f16550dx)).intValue(), ((Integer) dyx.m8158e().m7876a(edi.f16551dy)).intValue(), (String) dyx.m8158e().m7876a(edi.f16546dt), (String) dyx.m8158e().m7876a(edi.f16547du), (String) dyx.m8158e().m7876a(edi.f16549dw));
        } else {
            ciuVar = null;
        }
        return ciuVar;
    }

    /* renamed from: a */
    public static boolean m11221a() {
        return ((Boolean) dyx.m8158e().m7876a(edi.f16533dg)).booleanValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f13138k);
        C2664b.m13941a(parcel, 2, this.f13130c);
        C2664b.m13941a(parcel, 3, this.f13131d);
        C2664b.m13941a(parcel, 4, this.f13132e);
        C2664b.m13932a(parcel, 5, this.f13133f, false);
        C2664b.m13941a(parcel, 6, this.f13139l);
        C2664b.m13941a(parcel, 7, this.f13140m);
        C2664b.m13943a(parcel, m13944a);
    }
}
