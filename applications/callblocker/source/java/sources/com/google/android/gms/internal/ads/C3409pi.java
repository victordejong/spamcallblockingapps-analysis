package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.pi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pi.class */
public final class C3409pi extends AbstractC2663a {
    public static final Parcelable.Creator<C3409pi> CREATOR = new C3408ph();

    /* renamed from: A */
    private final boolean f17135A;

    /* renamed from: B */
    private final boolean f17136B;

    /* renamed from: C */
    private final C3472rr f17137C;

    /* renamed from: D */
    private final List<String> f17138D;

    /* renamed from: E */
    private final List<String> f17139E;

    /* renamed from: F */
    private final boolean f17140F;

    /* renamed from: G */
    private final C3411pk f17141G;

    /* renamed from: H */
    private final boolean f17142H;

    /* renamed from: I */
    private String f17143I;

    /* renamed from: J */
    private final List<String> f17144J;

    /* renamed from: K */
    private final boolean f17145K;

    /* renamed from: L */
    private final String f17146L;

    /* renamed from: M */
    private final C3500ss f17147M;

    /* renamed from: N */
    private final String f17148N;

    /* renamed from: O */
    private final boolean f17149O;

    /* renamed from: P */
    private final boolean f17150P;

    /* renamed from: Q */
    private Bundle f17151Q;

    /* renamed from: R */
    private final boolean f17152R;

    /* renamed from: S */
    private final int f17153S;

    /* renamed from: T */
    private final boolean f17154T;

    /* renamed from: U */
    private final List<String> f17155U;

    /* renamed from: V */
    private final boolean f17156V;

    /* renamed from: W */
    private final String f17157W;

    /* renamed from: X */
    private String f17158X;

    /* renamed from: Y */
    private boolean f17159Y;

    /* renamed from: Z */
    private boolean f17160Z;

    /* renamed from: a */
    private final int f17161a;

    /* renamed from: b */
    private final String f17162b;

    /* renamed from: c */
    private String f17163c;

    /* renamed from: d */
    private final List<String> f17164d;

    /* renamed from: e */
    private final int f17165e;

    /* renamed from: f */
    private final List<String> f17166f;

    /* renamed from: g */
    private final long f17167g;

    /* renamed from: h */
    private final boolean f17168h;

    /* renamed from: i */
    private final long f17169i;

    /* renamed from: j */
    private final List<String> f17170j;

    /* renamed from: k */
    private final long f17171k;

    /* renamed from: l */
    private final int f17172l;

    /* renamed from: m */
    private final String f17173m;

    /* renamed from: n */
    private final long f17174n;

    /* renamed from: o */
    private final String f17175o;

    /* renamed from: p */
    private final boolean f17176p;

    /* renamed from: q */
    private final String f17177q;

    /* renamed from: r */
    private final String f17178r;

    /* renamed from: s */
    private final boolean f17179s;

    /* renamed from: t */
    private final boolean f17180t;

    /* renamed from: u */
    private final boolean f17181u;

    /* renamed from: v */
    private final boolean f17182v;

    /* renamed from: w */
    private final boolean f17183w;

    /* renamed from: x */
    private C3422pv f17184x;

    /* renamed from: y */
    private String f17185y;

    /* renamed from: z */
    private final String f17186z;

    public C3409pi(int i, String str, String str2, List<String> list, int i2, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i3, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, C3422pv c3422pv, String str7, String str8, boolean z8, boolean z9, C3472rr c3472rr, List<String> list4, List<String> list5, boolean z10, C3411pk c3411pk, boolean z11, String str9, List<String> list6, boolean z12, String str10, C3500ss c3500ss, String str11, boolean z13, boolean z14, Bundle bundle, boolean z15, int i4, boolean z16, List<String> list7, boolean z17, String str12, String str13, boolean z18, boolean z19) {
        C3425py c3425py;
        this.f17161a = i;
        this.f17162b = str;
        this.f17163c = str2;
        this.f17164d = list != null ? Collections.unmodifiableList(list) : null;
        this.f17165e = i2;
        this.f17166f = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.f17167g = j;
        this.f17168h = z;
        this.f17169i = j2;
        this.f17170j = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.f17171k = j3;
        this.f17172l = i3;
        this.f17173m = str3;
        this.f17174n = j4;
        this.f17175o = str4;
        this.f17176p = z2;
        this.f17177q = str5;
        this.f17178r = str6;
        this.f17179s = z3;
        this.f17180t = z4;
        this.f17181u = z5;
        this.f17182v = z6;
        this.f17149O = z13;
        this.f17183w = z7;
        this.f17184x = c3422pv;
        this.f17185y = str7;
        this.f17186z = str8;
        if (this.f17163c == null && this.f17184x != null && (c3425py = (C3425py) this.f17184x.m7329a(C3425py.CREATOR)) != null && !TextUtils.isEmpty(c3425py.f17209a)) {
            this.f17163c = c3425py.f17209a;
        }
        this.f17135A = z8;
        this.f17136B = z9;
        this.f17137C = c3472rr;
        this.f17138D = list4;
        this.f17139E = list5;
        this.f17140F = z10;
        this.f17141G = c3411pk;
        this.f17142H = z11;
        this.f17143I = str9;
        this.f17144J = list6;
        this.f17145K = z12;
        this.f17146L = str10;
        this.f17147M = c3500ss;
        this.f17148N = str11;
        this.f17150P = z14;
        this.f17151Q = bundle;
        this.f17152R = z15;
        this.f17153S = i4;
        this.f17154T = z16;
        this.f17155U = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f17156V = z17;
        this.f17157W = str12;
        this.f17158X = str13;
        this.f17159Y = z18;
        this.f17160Z = z19;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f17161a);
        C2664b.m13932a(parcel, 2, this.f17162b, false);
        C2664b.m13932a(parcel, 3, this.f17163c, false);
        C2664b.m13923b(parcel, 4, this.f17164d, false);
        C2664b.m13941a(parcel, 5, this.f17165e);
        C2664b.m13923b(parcel, 6, this.f17166f, false);
        C2664b.m13940a(parcel, 7, this.f17167g);
        C2664b.m13930a(parcel, 8, this.f17168h);
        C2664b.m13940a(parcel, 9, this.f17169i);
        C2664b.m13923b(parcel, 10, this.f17170j, false);
        C2664b.m13940a(parcel, 11, this.f17171k);
        C2664b.m13941a(parcel, 12, this.f17172l);
        C2664b.m13932a(parcel, 13, this.f17173m, false);
        C2664b.m13940a(parcel, 14, this.f17174n);
        C2664b.m13932a(parcel, 15, this.f17175o, false);
        C2664b.m13930a(parcel, 18, this.f17176p);
        C2664b.m13932a(parcel, 19, this.f17177q, false);
        C2664b.m13932a(parcel, 21, this.f17178r, false);
        C2664b.m13930a(parcel, 22, this.f17179s);
        C2664b.m13930a(parcel, 23, this.f17180t);
        C2664b.m13930a(parcel, 24, this.f17181u);
        C2664b.m13930a(parcel, 25, this.f17182v);
        C2664b.m13930a(parcel, 26, this.f17183w);
        C2664b.m13937a(parcel, 28, (Parcelable) this.f17184x, i, false);
        C2664b.m13932a(parcel, 29, this.f17185y, false);
        C2664b.m13932a(parcel, 30, this.f17186z, false);
        C2664b.m13930a(parcel, 31, this.f17135A);
        C2664b.m13930a(parcel, 32, this.f17136B);
        C2664b.m13937a(parcel, 33, (Parcelable) this.f17137C, i, false);
        C2664b.m13923b(parcel, 34, this.f17138D, false);
        C2664b.m13923b(parcel, 35, this.f17139E, false);
        C2664b.m13930a(parcel, 36, this.f17140F);
        C2664b.m13937a(parcel, 37, (Parcelable) this.f17141G, i, false);
        C2664b.m13930a(parcel, 38, this.f17142H);
        C2664b.m13932a(parcel, 39, this.f17143I, false);
        C2664b.m13923b(parcel, 40, this.f17144J, false);
        C2664b.m13930a(parcel, 42, this.f17145K);
        C2664b.m13932a(parcel, 43, this.f17146L, false);
        C2664b.m13937a(parcel, 44, (Parcelable) this.f17147M, i, false);
        C2664b.m13932a(parcel, 45, this.f17148N, false);
        C2664b.m13930a(parcel, 46, this.f17149O);
        C2664b.m13930a(parcel, 47, this.f17150P);
        C2664b.m13939a(parcel, 48, this.f17151Q, false);
        C2664b.m13930a(parcel, 49, this.f17152R);
        C2664b.m13941a(parcel, 50, this.f17153S);
        C2664b.m13930a(parcel, 51, this.f17154T);
        C2664b.m13923b(parcel, 52, this.f17155U, false);
        C2664b.m13930a(parcel, 53, this.f17156V);
        C2664b.m13932a(parcel, 54, this.f17157W, false);
        C2664b.m13932a(parcel, 55, this.f17158X, false);
        C2664b.m13930a(parcel, 56, this.f17159Y);
        C2664b.m13930a(parcel, 57, this.f17160Z);
        C2664b.m13943a(parcel, m13944a);
    }
}
