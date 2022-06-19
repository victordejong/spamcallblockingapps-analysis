package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.measurement.internal.jv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jv.class */
public final class C4423jv extends AbstractC2663a {
    public static final Parcelable.Creator<C4423jv> CREATOR = new C4422ju();

    /* renamed from: a */
    public final String f19272a;

    /* renamed from: b */
    public final long f19273b;

    /* renamed from: c */
    public final Long f19274c;

    /* renamed from: d */
    public final String f19275d;

    /* renamed from: e */
    public final String f19276e;

    /* renamed from: f */
    public final Double f19277f;

    /* renamed from: g */
    private final int f19278g;

    /* renamed from: h */
    private final Float f19279h;

    public C4423jv(int i, String str, long j, Long l, Float f, String str2, String str3, Double d) {
        this.f19278g = i;
        this.f19272a = str;
        this.f19273b = j;
        this.f19274c = l;
        this.f19279h = null;
        if (i == 1) {
            this.f19277f = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.f19277f = d;
        }
        this.f19275d = str2;
        this.f19276e = str3;
    }

    public C4423jv(C4425jx c4425jx) {
        this(c4425jx.f19288c, c4425jx.f19289d, c4425jx.f19290e, c4425jx.f19287b);
    }

    public C4423jv(String str, long j, Object obj, String str2) {
        C2662s.m13979a(str);
        this.f19278g = 2;
        this.f19272a = str;
        this.f19273b = j;
        this.f19276e = str2;
        if (obj == null) {
            this.f19274c = null;
            this.f19279h = null;
            this.f19277f = null;
            this.f19275d = null;
        } else if (obj instanceof Long) {
            this.f19274c = (Long) obj;
            this.f19279h = null;
            this.f19277f = null;
            this.f19275d = null;
        } else if (obj instanceof String) {
            this.f19274c = null;
            this.f19279h = null;
            this.f19277f = null;
            this.f19275d = (String) obj;
        } else if (!(obj instanceof Double)) {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        } else {
            this.f19274c = null;
            this.f19279h = null;
            this.f19277f = (Double) obj;
            this.f19275d = null;
        }
    }

    /* renamed from: a */
    public final Object m4148a() {
        return this.f19274c != null ? this.f19274c : this.f19277f != null ? this.f19277f : this.f19275d != null ? this.f19275d : null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f19278g);
        C2664b.m13932a(parcel, 2, this.f19272a, false);
        C2664b.m13940a(parcel, 3, this.f19273b);
        C2664b.m13933a(parcel, 4, this.f19274c, false);
        C2664b.m13934a(parcel, 5, (Float) null, false);
        C2664b.m13932a(parcel, 6, this.f19275d, false);
        C2664b.m13932a(parcel, 7, this.f19276e, false);
        C2664b.m13935a(parcel, 8, this.f19277f, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
