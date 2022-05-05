package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkr.class */
public final class zzkr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzkr> CREATOR = new zzku();
    @SafeParcelable.Field

    /* renamed from: f */
    private final int f9699f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f9700g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final long f9701h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final Long f9702i;
    @SafeParcelable.Field

    /* renamed from: j */
    public final String f9703j;
    @SafeParcelable.Field

    /* renamed from: k */
    public final String f9704k;
    @SafeParcelable.Field

    /* renamed from: l */
    public final Double f9705l;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzkr(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) Long l, @SafeParcelable.Param(id = 5) Float f, @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) Double d) {
        this.f9699f = i;
        this.f9700g = str;
        this.f9701h = j;
        this.f9702i = l;
        if (i == 1) {
            this.f9705l = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.f9705l = d;
        }
        this.f9703j = str2;
        this.f9704k = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkr(zzkt zzktVar) {
        this(zzktVar.f9708c, zzktVar.f9709d, zzktVar.f9710e, zzktVar.f9707b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkr(String str, long j, Object obj, String str2) {
        Preconditions.m14527g(str);
        this.f9699f = 2;
        this.f9700g = str;
        this.f9701h = j;
        this.f9704k = str2;
        if (obj == null) {
            this.f9702i = null;
            this.f9705l = null;
            this.f9703j = null;
        } else if (obj instanceof Long) {
            this.f9702i = (Long) obj;
            this.f9705l = null;
            this.f9703j = null;
        } else if (obj instanceof String) {
            this.f9702i = null;
            this.f9705l = null;
            this.f9703j = (String) obj;
        } else if (obj instanceof Double) {
            this.f9702i = null;
            this.f9705l = (Double) obj;
            this.f9703j = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    /* renamed from: B */
    public final Object m11035B() {
        Long l = this.f9702i;
        if (l != null) {
            return l;
        }
        Double d = this.f9705l;
        if (d != null) {
            return d;
        }
        String str = this.f9703j;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f9699f);
        SafeParcelWriter.m14447q(parcel, 2, this.f9700g, false);
        SafeParcelWriter.m14451m(parcel, 3, this.f9701h);
        SafeParcelWriter.m14450n(parcel, 4, this.f9702i, false);
        SafeParcelWriter.m14455i(parcel, 5, null, false);
        SafeParcelWriter.m14447q(parcel, 6, this.f9703j, false);
        SafeParcelWriter.m14447q(parcel, 7, this.f9704k, false);
        SafeParcelWriter.m14457g(parcel, 8, this.f9705l, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
