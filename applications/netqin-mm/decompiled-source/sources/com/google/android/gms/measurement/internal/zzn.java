package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzn.class */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new zzp();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f30154a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f30155b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f30156c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f30157d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final long f30158e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final long f30159f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f30160g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final boolean f30161h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final boolean f30162i;
    @SafeParcelable.Field

    /* renamed from: j */
    public final long f30163j;
    @SafeParcelable.Field

    /* renamed from: k */
    public final String f30164k;
    @SafeParcelable.Field

    /* renamed from: l */
    public final long f30165l;
    @SafeParcelable.Field

    /* renamed from: m */
    public final long f30166m;
    @SafeParcelable.Field

    /* renamed from: n */
    public final int f30167n;
    @SafeParcelable.Field

    /* renamed from: o */
    public final boolean f30168o;
    @SafeParcelable.Field

    /* renamed from: p */
    public final boolean f30169p;
    @SafeParcelable.Field

    /* renamed from: q */
    public final boolean f30170q;
    @SafeParcelable.Field

    /* renamed from: r */
    public final String f30171r;
    @SafeParcelable.Field

    /* renamed from: s */
    public final Boolean f30172s;
    @SafeParcelable.Field

    /* renamed from: t */
    public final long f30173t;
    @SafeParcelable.Field

    /* renamed from: u */
    public final List<String> f30174u;
    @SafeParcelable.Field

    /* renamed from: v */
    public final String f30175v;
    @SafeParcelable.Field

    /* renamed from: w */
    public final String f30176w;

    public zzn(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        Preconditions.m17281b(str);
        this.f30154a = str;
        this.f30155b = TextUtils.isEmpty(str2) ? null : str2;
        this.f30156c = str3;
        this.f30163j = j;
        this.f30157d = str4;
        this.f30158e = j2;
        this.f30159f = j3;
        this.f30160g = str5;
        this.f30161h = z;
        this.f30162i = z2;
        this.f30164k = str6;
        this.f30165l = j4;
        this.f30166m = j5;
        this.f30167n = i;
        this.f30168o = z3;
        this.f30169p = z4;
        this.f30170q = z5;
        this.f30171r = str7;
        this.f30172s = bool;
        this.f30173t = j6;
        this.f30174u = list;
        this.f30175v = str8;
        this.f30176w = str9;
    }

    @SafeParcelable.Constructor
    public zzn(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) long j, @SafeParcelable.Param(id = 7) long j2, @SafeParcelable.Param(id = 8) String str5, @SafeParcelable.Param(id = 9) boolean z, @SafeParcelable.Param(id = 10) boolean z2, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) String str6, @SafeParcelable.Param(id = 13) long j4, @SafeParcelable.Param(id = 14) long j5, @SafeParcelable.Param(id = 15) int i, @SafeParcelable.Param(id = 16) boolean z3, @SafeParcelable.Param(id = 17) boolean z4, @SafeParcelable.Param(id = 18) boolean z5, @SafeParcelable.Param(id = 19) String str7, @SafeParcelable.Param(id = 21) Boolean bool, @SafeParcelable.Param(id = 22) long j6, @SafeParcelable.Param(id = 23) List<String> list, @SafeParcelable.Param(id = 24) String str8, @SafeParcelable.Param(id = 25) String str9) {
        this.f30154a = str;
        this.f30155b = str2;
        this.f30156c = str3;
        this.f30163j = j3;
        this.f30157d = str4;
        this.f30158e = j;
        this.f30159f = j2;
        this.f30160g = str5;
        this.f30161h = z;
        this.f30162i = z2;
        this.f30164k = str6;
        this.f30165l = j4;
        this.f30166m = j5;
        this.f30167n = i;
        this.f30168o = z3;
        this.f30169p = z4;
        this.f30170q = z5;
        this.f30171r = str7;
        this.f30172s = bool;
        this.f30173t = j6;
        this.f30174u = list;
        this.f30175v = str8;
        this.f30176w = str9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f30154a, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f30155b, false);
        SafeParcelWriter.m17221a(parcel, 4, this.f30156c, false);
        SafeParcelWriter.m17221a(parcel, 5, this.f30157d, false);
        SafeParcelWriter.m17230a(parcel, 6, this.f30158e);
        SafeParcelWriter.m17230a(parcel, 7, this.f30159f);
        SafeParcelWriter.m17221a(parcel, 8, this.f30160g, false);
        SafeParcelWriter.m17218a(parcel, 9, this.f30161h);
        SafeParcelWriter.m17218a(parcel, 10, this.f30162i);
        SafeParcelWriter.m17230a(parcel, 11, this.f30163j);
        SafeParcelWriter.m17221a(parcel, 12, this.f30164k, false);
        SafeParcelWriter.m17230a(parcel, 13, this.f30165l);
        SafeParcelWriter.m17230a(parcel, 14, this.f30166m);
        SafeParcelWriter.m17231a(parcel, 15, this.f30167n);
        SafeParcelWriter.m17218a(parcel, 16, this.f30168o);
        SafeParcelWriter.m17218a(parcel, 17, this.f30169p);
        SafeParcelWriter.m17218a(parcel, 18, this.f30170q);
        SafeParcelWriter.m17221a(parcel, 19, this.f30171r, false);
        SafeParcelWriter.m17225a(parcel, 21, this.f30172s, false);
        SafeParcelWriter.m17230a(parcel, 22, this.f30173t);
        SafeParcelWriter.m17209b(parcel, 23, this.f30174u, false);
        SafeParcelWriter.m17221a(parcel, 24, this.f30175v, false);
        SafeParcelWriter.m17221a(parcel, 25, this.f30176w, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
