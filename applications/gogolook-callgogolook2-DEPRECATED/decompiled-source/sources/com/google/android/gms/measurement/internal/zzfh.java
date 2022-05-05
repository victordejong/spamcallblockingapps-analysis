package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p285m.p287b.C8947a4;
import p081h.p203i.p204a.p224e.p285m.p287b.C8953b4;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfh.class */
public final class zzfh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfh> CREATOR = new C8947a4();

    /* renamed from: a */
    public final int f7151a;

    /* renamed from: b */
    public final String f7152b;

    /* renamed from: c */
    public final long f7153c;

    /* renamed from: d */
    public final Long f7154d;

    /* renamed from: e */
    public final String f7155e;

    /* renamed from: f */
    public final String f7156f;

    /* renamed from: g */
    public final Double f7157g;

    public zzfh(int i, String str, long j, Long l, Float f, String str2, String str3, Double d) {
        this.f7151a = i;
        this.f7152b = str;
        this.f7153c = j;
        this.f7154d = l;
        if (i == 1) {
            this.f7157g = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.f7157g = d;
        }
        this.f7155e = str2;
        this.f7156f = str3;
    }

    public zzfh(C8953b4 b4Var) {
        this(b4Var.f20238c, b4Var.f20239d, b4Var.f20240e, b4Var.f20237b);
    }

    public zzfh(String str, long j, Object obj, String str2) {
        C7021t.m21283b(str);
        this.f7151a = 2;
        this.f7152b = str;
        this.f7153c = j;
        this.f7156f = str2;
        if (obj == null) {
            this.f7154d = null;
            this.f7157g = null;
            this.f7155e = null;
        } else if (obj instanceof Long) {
            this.f7154d = (Long) obj;
            this.f7157g = null;
            this.f7155e = null;
        } else if (obj instanceof String) {
            this.f7154d = null;
            this.f7157g = null;
            this.f7155e = (String) obj;
        } else if (obj instanceof Double) {
            this.f7154d = null;
            this.f7157g = (Double) obj;
            this.f7155e = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    /* renamed from: c */
    public final Object m31657c() {
        Long l = this.f7154d;
        if (l != null) {
            return l;
        }
        Double d = this.f7157g;
        if (d != null) {
            return d;
        }
        String str = this.f7155e;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f7151a);
        C7031b.m21215a(parcel, 2, this.f7152b, false);
        C7031b.m21224a(parcel, 3, this.f7153c);
        C7031b.m21216a(parcel, 4, this.f7154d, false);
        C7031b.m21218a(parcel, 5, (Float) null, false);
        C7031b.m21215a(parcel, 6, this.f7155e, false);
        C7031b.m21215a(parcel, 7, this.f7156f, false);
        C7031b.m21219a(parcel, 8, this.f7157g, false);
        C7031b.m21229a(parcel, a);
    }
}
