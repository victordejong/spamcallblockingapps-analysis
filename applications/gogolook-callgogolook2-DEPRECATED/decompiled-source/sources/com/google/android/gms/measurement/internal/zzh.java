package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p285m.p287b.C8984g4;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzh.class */
public final class zzh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzh> CREATOR = new C8984g4();

    /* renamed from: a */
    public final String f7158a;

    /* renamed from: b */
    public final String f7159b;

    /* renamed from: c */
    public final String f7160c;

    /* renamed from: d */
    public final String f7161d;

    /* renamed from: e */
    public final long f7162e;

    /* renamed from: f */
    public final long f7163f;

    /* renamed from: g */
    public final String f7164g;

    /* renamed from: h */
    public final boolean f7165h;

    /* renamed from: i */
    public final boolean f7166i;

    /* renamed from: j */
    public final long f7167j;

    /* renamed from: k */
    public final String f7168k;

    /* renamed from: l */
    public final long f7169l;

    /* renamed from: m */
    public final long f7170m;

    /* renamed from: n */
    public final int f7171n;

    /* renamed from: o */
    public final boolean f7172o;

    /* renamed from: p */
    public final boolean f7173p;

    /* renamed from: q */
    public final boolean f7174q;

    /* renamed from: r */
    public final String f7175r;

    public zzh(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5, String str7) {
        C7021t.m21283b(str);
        this.f7158a = str;
        this.f7159b = TextUtils.isEmpty(str2) ? null : str2;
        this.f7160c = str3;
        this.f7167j = j;
        this.f7161d = str4;
        this.f7162e = j2;
        this.f7163f = j3;
        this.f7164g = str5;
        this.f7165h = z;
        this.f7166i = z2;
        this.f7168k = str6;
        this.f7169l = j4;
        this.f7170m = j5;
        this.f7171n = i;
        this.f7172o = z3;
        this.f7173p = z4;
        this.f7174q = z5;
        this.f7175r = str7;
    }

    public zzh(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5, String str7) {
        this.f7158a = str;
        this.f7159b = str2;
        this.f7160c = str3;
        this.f7167j = j3;
        this.f7161d = str4;
        this.f7162e = j;
        this.f7163f = j2;
        this.f7164g = str5;
        this.f7165h = z;
        this.f7166i = z2;
        this.f7168k = str6;
        this.f7169l = j4;
        this.f7170m = j5;
        this.f7171n = i;
        this.f7172o = z3;
        this.f7173p = z4;
        this.f7174q = z5;
        this.f7175r = str7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f7158a, false);
        C7031b.m21215a(parcel, 3, this.f7159b, false);
        C7031b.m21215a(parcel, 4, this.f7160c, false);
        C7031b.m21215a(parcel, 5, this.f7161d, false);
        C7031b.m21224a(parcel, 6, this.f7162e);
        C7031b.m21224a(parcel, 7, this.f7163f);
        C7031b.m21215a(parcel, 8, this.f7164g, false);
        C7031b.m21212a(parcel, 9, this.f7165h);
        C7031b.m21212a(parcel, 10, this.f7166i);
        C7031b.m21224a(parcel, 11, this.f7167j);
        C7031b.m21215a(parcel, 12, this.f7168k, false);
        C7031b.m21224a(parcel, 13, this.f7169l);
        C7031b.m21224a(parcel, 14, this.f7170m);
        C7031b.m21225a(parcel, 15, this.f7171n);
        C7031b.m21212a(parcel, 16, this.f7172o);
        C7031b.m21212a(parcel, 17, this.f7173p);
        C7031b.m21212a(parcel, 18, this.f7174q);
        C7031b.m21215a(parcel, 19, this.f7175r, false);
        C7031b.m21229a(parcel, a);
    }
}
