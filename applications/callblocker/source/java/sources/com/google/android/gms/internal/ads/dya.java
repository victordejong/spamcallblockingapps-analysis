package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2657q;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dya.class */
public final class dya extends AbstractC2663a {
    public static final Parcelable.Creator<dya> CREATOR = new dyc();

    /* renamed from: a */
    public final int f16067a;
    @Deprecated

    /* renamed from: b */
    public final long f16068b;

    /* renamed from: c */
    public final Bundle f16069c;
    @Deprecated

    /* renamed from: d */
    public final int f16070d;

    /* renamed from: e */
    public final List<String> f16071e;

    /* renamed from: f */
    public final boolean f16072f;

    /* renamed from: g */
    public final int f16073g;

    /* renamed from: h */
    public final boolean f16074h;

    /* renamed from: i */
    public final String f16075i;

    /* renamed from: j */
    public final eck f16076j;

    /* renamed from: k */
    public final Location f16077k;

    /* renamed from: l */
    public final String f16078l;

    /* renamed from: m */
    public final Bundle f16079m;

    /* renamed from: n */
    public final Bundle f16080n;

    /* renamed from: o */
    public final List<String> f16081o;

    /* renamed from: p */
    public final String f16082p;

    /* renamed from: q */
    public final String f16083q;
    @Deprecated

    /* renamed from: r */
    public final boolean f16084r;

    /* renamed from: s */
    public final dxu f16085s;

    /* renamed from: t */
    public final int f16086t;

    /* renamed from: u */
    public final String f16087u;

    /* renamed from: v */
    public final List<String> f16088v;

    public dya(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, eck eckVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3, dxu dxuVar, int i4, String str5, List<String> list3) {
        this.f16067a = i;
        this.f16068b = j;
        this.f16069c = bundle == null ? new Bundle() : bundle;
        this.f16070d = i2;
        this.f16071e = list;
        this.f16072f = z;
        this.f16073g = i3;
        this.f16074h = z2;
        this.f16075i = str;
        this.f16076j = eckVar;
        this.f16077k = location;
        this.f16078l = str2;
        this.f16079m = bundle2 == null ? new Bundle() : bundle2;
        this.f16080n = bundle3;
        this.f16081o = list2;
        this.f16082p = str3;
        this.f16083q = str4;
        this.f16084r = z3;
        this.f16085s = dxuVar;
        this.f16086t = i4;
        this.f16087u = str5;
        this.f16088v = list3 == null ? new ArrayList() : list3;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof dya)) {
            z = false;
        } else {
            dya dyaVar = (dya) obj;
            z = false;
            if (this.f16067a == dyaVar.f16067a) {
                z = false;
                if (this.f16068b == dyaVar.f16068b) {
                    z = false;
                    if (C2657q.m13992a(this.f16069c, dyaVar.f16069c)) {
                        z = false;
                        if (this.f16070d == dyaVar.f16070d) {
                            z = false;
                            if (C2657q.m13992a(this.f16071e, dyaVar.f16071e)) {
                                z = false;
                                if (this.f16072f == dyaVar.f16072f) {
                                    z = false;
                                    if (this.f16073g == dyaVar.f16073g) {
                                        z = false;
                                        if (this.f16074h == dyaVar.f16074h) {
                                            z = false;
                                            if (C2657q.m13992a(this.f16075i, dyaVar.f16075i)) {
                                                z = false;
                                                if (C2657q.m13992a(this.f16076j, dyaVar.f16076j)) {
                                                    z = false;
                                                    if (C2657q.m13992a(this.f16077k, dyaVar.f16077k)) {
                                                        z = false;
                                                        if (C2657q.m13992a(this.f16078l, dyaVar.f16078l)) {
                                                            z = false;
                                                            if (C2657q.m13992a(this.f16079m, dyaVar.f16079m)) {
                                                                z = false;
                                                                if (C2657q.m13992a(this.f16080n, dyaVar.f16080n)) {
                                                                    z = false;
                                                                    if (C2657q.m13992a(this.f16081o, dyaVar.f16081o)) {
                                                                        z = false;
                                                                        if (C2657q.m13992a(this.f16082p, dyaVar.f16082p)) {
                                                                            z = false;
                                                                            if (C2657q.m13992a(this.f16083q, dyaVar.f16083q)) {
                                                                                z = false;
                                                                                if (this.f16084r == dyaVar.f16084r) {
                                                                                    z = false;
                                                                                    if (this.f16086t == dyaVar.f16086t) {
                                                                                        z = false;
                                                                                        if (C2657q.m13992a(this.f16087u, dyaVar.f16087u)) {
                                                                                            z = false;
                                                                                            if (C2657q.m13992a(this.f16088v, dyaVar.f16088v)) {
                                                                                                z = true;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return C2657q.m13991a(Integer.valueOf(this.f16067a), Long.valueOf(this.f16068b), this.f16069c, Integer.valueOf(this.f16070d), this.f16071e, Boolean.valueOf(this.f16072f), Integer.valueOf(this.f16073g), Boolean.valueOf(this.f16074h), this.f16075i, this.f16076j, this.f16077k, this.f16078l, this.f16079m, this.f16080n, this.f16081o, this.f16082p, this.f16083q, Boolean.valueOf(this.f16084r), Integer.valueOf(this.f16086t), this.f16087u, this.f16088v);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f16067a);
        C2664b.m13940a(parcel, 2, this.f16068b);
        C2664b.m13939a(parcel, 3, this.f16069c, false);
        C2664b.m13941a(parcel, 4, this.f16070d);
        C2664b.m13923b(parcel, 5, this.f16071e, false);
        C2664b.m13930a(parcel, 6, this.f16072f);
        C2664b.m13941a(parcel, 7, this.f16073g);
        C2664b.m13930a(parcel, 8, this.f16074h);
        C2664b.m13932a(parcel, 9, this.f16075i, false);
        C2664b.m13937a(parcel, 10, (Parcelable) this.f16076j, i, false);
        C2664b.m13937a(parcel, 11, (Parcelable) this.f16077k, i, false);
        C2664b.m13932a(parcel, 12, this.f16078l, false);
        C2664b.m13939a(parcel, 13, this.f16079m, false);
        C2664b.m13939a(parcel, 14, this.f16080n, false);
        C2664b.m13923b(parcel, 15, this.f16081o, false);
        C2664b.m13932a(parcel, 16, this.f16082p, false);
        C2664b.m13932a(parcel, 17, this.f16083q, false);
        C2664b.m13930a(parcel, 18, this.f16084r);
        C2664b.m13937a(parcel, 19, (Parcelable) this.f16085s, i, false);
        C2664b.m13941a(parcel, 20, this.f16086t);
        C2664b.m13932a(parcel, 21, this.f16087u, false);
        C2664b.m13923b(parcel, 22, this.f16088v, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
