package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.kb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/kb.class */
public final class C4430kb extends AbstractC2663a {
    public static final Parcelable.Creator<C4430kb> CREATOR = new C4432kd();

    /* renamed from: a */
    public final String f19301a;

    /* renamed from: b */
    public final String f19302b;

    /* renamed from: c */
    public final String f19303c;

    /* renamed from: d */
    public final String f19304d;

    /* renamed from: e */
    public final long f19305e;

    /* renamed from: f */
    public final long f19306f;

    /* renamed from: g */
    public final String f19307g;

    /* renamed from: h */
    public final boolean f19308h;

    /* renamed from: i */
    public final boolean f19309i;

    /* renamed from: j */
    public final long f19310j;

    /* renamed from: k */
    public final String f19311k;

    /* renamed from: l */
    public final long f19312l;

    /* renamed from: m */
    public final long f19313m;

    /* renamed from: n */
    public final int f19314n;

    /* renamed from: o */
    public final boolean f19315o;

    /* renamed from: p */
    public final boolean f19316p;

    /* renamed from: q */
    public final boolean f19317q;

    /* renamed from: r */
    public final String f19318r;

    /* renamed from: s */
    public final Boolean f19319s;

    /* renamed from: t */
    public final long f19320t;

    /* renamed from: u */
    public final List<String> f19321u;

    /* renamed from: v */
    public final String f19322v;

    public C4430kb(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5, String str7, Boolean bool, long j6, List<String> list, String str8) {
        C2662s.m13979a(str);
        this.f19301a = str;
        this.f19302b = TextUtils.isEmpty(str2) ? null : str2;
        this.f19303c = str3;
        this.f19310j = j;
        this.f19304d = str4;
        this.f19305e = j2;
        this.f19306f = j3;
        this.f19307g = str5;
        this.f19308h = z;
        this.f19309i = z2;
        this.f19311k = str6;
        this.f19312l = j4;
        this.f19313m = j5;
        this.f19314n = i;
        this.f19315o = z3;
        this.f19316p = z4;
        this.f19317q = z5;
        this.f19318r = str7;
        this.f19319s = bool;
        this.f19320t = j6;
        this.f19321u = list;
        this.f19322v = str8;
    }

    public C4430kb(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5, String str7, Boolean bool, long j6, List<String> list, String str8) {
        this.f19301a = str;
        this.f19302b = str2;
        this.f19303c = str3;
        this.f19310j = j3;
        this.f19304d = str4;
        this.f19305e = j;
        this.f19306f = j2;
        this.f19307g = str5;
        this.f19308h = z;
        this.f19309i = z2;
        this.f19311k = str6;
        this.f19312l = j4;
        this.f19313m = j5;
        this.f19314n = i;
        this.f19315o = z3;
        this.f19316p = z4;
        this.f19317q = z5;
        this.f19318r = str7;
        this.f19319s = bool;
        this.f19320t = j6;
        this.f19321u = list;
        this.f19322v = str8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f19301a, false);
        C2664b.m13932a(parcel, 3, this.f19302b, false);
        C2664b.m13932a(parcel, 4, this.f19303c, false);
        C2664b.m13932a(parcel, 5, this.f19304d, false);
        C2664b.m13940a(parcel, 6, this.f19305e);
        C2664b.m13940a(parcel, 7, this.f19306f);
        C2664b.m13932a(parcel, 8, this.f19307g, false);
        C2664b.m13930a(parcel, 9, this.f19308h);
        C2664b.m13930a(parcel, 10, this.f19309i);
        C2664b.m13940a(parcel, 11, this.f19310j);
        C2664b.m13932a(parcel, 12, this.f19311k, false);
        C2664b.m13940a(parcel, 13, this.f19312l);
        C2664b.m13940a(parcel, 14, this.f19313m);
        C2664b.m13941a(parcel, 15, this.f19314n);
        C2664b.m13930a(parcel, 16, this.f19315o);
        C2664b.m13930a(parcel, 17, this.f19316p);
        C2664b.m13930a(parcel, 18, this.f19317q);
        C2664b.m13932a(parcel, 19, this.f19318r, false);
        C2664b.m13936a(parcel, 21, this.f19319s, false);
        C2664b.m13940a(parcel, 22, this.f19320t);
        C2664b.m13923b(parcel, 23, this.f19321u, false);
        C2664b.m13932a(parcel, 24, this.f19322v, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
