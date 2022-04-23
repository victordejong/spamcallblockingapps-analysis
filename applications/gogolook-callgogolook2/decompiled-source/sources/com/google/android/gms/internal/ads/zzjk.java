package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import javax.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7245g3;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjk.class */
public final class zzjk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjk> CREATOR = new C7245g3();

    /* renamed from: a */
    public final int f6750a;
    @Deprecated

    /* renamed from: b */
    public final long f6751b;

    /* renamed from: c */
    public final Bundle f6752c;
    @Deprecated

    /* renamed from: d */
    public final int f6753d;

    /* renamed from: e */
    public final List<String> f6754e;

    /* renamed from: f */
    public final boolean f6755f;

    /* renamed from: g */
    public final int f6756g;

    /* renamed from: h */
    public final boolean f6757h;

    /* renamed from: i */
    public final String f6758i;

    /* renamed from: j */
    public final zznb f6759j;

    /* renamed from: k */
    public final Location f6760k;

    /* renamed from: l */
    public final String f6761l;

    /* renamed from: m */
    public final Bundle f6762m;

    /* renamed from: n */
    public final Bundle f6763n;

    /* renamed from: o */
    public final List<String> f6764o;

    /* renamed from: p */
    public final String f6765p;

    /* renamed from: q */
    public final String f6766q;
    @Deprecated

    /* renamed from: r */
    public final boolean f6767r;
    @Nullable

    /* renamed from: s */
    public final zzje f6768s;

    /* renamed from: t */
    public final int f6769t;
    @Nullable

    /* renamed from: u */
    public final String f6770u;

    public zzjk(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zznb zznbVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3, zzje zzjeVar, int i4, @Nullable String str5) {
        this.f6750a = i;
        this.f6751b = j;
        this.f6752c = bundle == null ? new Bundle() : bundle;
        this.f6753d = i2;
        this.f6754e = list;
        this.f6755f = z;
        this.f6756g = i3;
        this.f6757h = z2;
        this.f6758i = str;
        this.f6759j = zznbVar;
        this.f6760k = location;
        this.f6761l = str2;
        this.f6762m = bundle2 == null ? new Bundle() : bundle2;
        this.f6763n = bundle3;
        this.f6764o = list2;
        this.f6765p = str3;
        this.f6766q = str4;
        this.f6767r = z3;
        this.f6768s = zzjeVar;
        this.f6769t = i4;
        this.f6770u = str5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjk)) {
            return false;
        }
        zzjk zzjkVar = (zzjk) obj;
        return this.f6750a == zzjkVar.f6750a && this.f6751b == zzjkVar.f6751b && C7018s.m21297a(this.f6752c, zzjkVar.f6752c) && this.f6753d == zzjkVar.f6753d && C7018s.m21297a(this.f6754e, zzjkVar.f6754e) && this.f6755f == zzjkVar.f6755f && this.f6756g == zzjkVar.f6756g && this.f6757h == zzjkVar.f6757h && C7018s.m21297a(this.f6758i, zzjkVar.f6758i) && C7018s.m21297a(this.f6759j, zzjkVar.f6759j) && C7018s.m21297a(this.f6760k, zzjkVar.f6760k) && C7018s.m21297a(this.f6761l, zzjkVar.f6761l) && C7018s.m21297a(this.f6762m, zzjkVar.f6762m) && C7018s.m21297a(this.f6763n, zzjkVar.f6763n) && C7018s.m21297a(this.f6764o, zzjkVar.f6764o) && C7018s.m21297a(this.f6765p, zzjkVar.f6765p) && C7018s.m21297a(this.f6766q, zzjkVar.f6766q) && this.f6767r == zzjkVar.f6767r && this.f6769t == zzjkVar.f6769t && C7018s.m21297a(this.f6770u, zzjkVar.f6770u);
    }

    public final int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6750a), Long.valueOf(this.f6751b), this.f6752c, Integer.valueOf(this.f6753d), this.f6754e, Boolean.valueOf(this.f6755f), Integer.valueOf(this.f6756g), Boolean.valueOf(this.f6757h), this.f6758i, this.f6759j, this.f6760k, this.f6761l, this.f6762m, this.f6763n, this.f6764o, this.f6765p, this.f6766q, Boolean.valueOf(this.f6767r), Integer.valueOf(this.f6769t), this.f6770u);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6750a);
        C7031b.m21224a(parcel, 2, this.f6751b);
        C7031b.m21223a(parcel, 3, this.f6752c, false);
        C7031b.m21225a(parcel, 4, this.f6753d);
        C7031b.m21203b(parcel, 5, this.f6754e, false);
        C7031b.m21212a(parcel, 6, this.f6755f);
        C7031b.m21225a(parcel, 7, this.f6756g);
        C7031b.m21212a(parcel, 8, this.f6757h);
        C7031b.m21215a(parcel, 9, this.f6758i, false);
        C7031b.m21220a(parcel, 10, (Parcelable) this.f6759j, i, false);
        C7031b.m21220a(parcel, 11, (Parcelable) this.f6760k, i, false);
        C7031b.m21215a(parcel, 12, this.f6761l, false);
        C7031b.m21223a(parcel, 13, this.f6762m, false);
        C7031b.m21223a(parcel, 14, this.f6763n, false);
        C7031b.m21203b(parcel, 15, this.f6764o, false);
        C7031b.m21215a(parcel, 16, this.f6765p, false);
        C7031b.m21215a(parcel, 17, this.f6766q, false);
        C7031b.m21212a(parcel, 18, this.f6767r);
        C7031b.m21220a(parcel, 19, (Parcelable) this.f6768s, i, false);
        C7031b.m21225a(parcel, 20, this.f6769t);
        C7031b.m21215a(parcel, 21, this.f6770u, false);
        C7031b.m21229a(parcel, a);
    }
}
