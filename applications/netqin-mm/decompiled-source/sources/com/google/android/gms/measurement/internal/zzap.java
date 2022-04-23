package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;
import p131c.p161d.p170b.p224d.p260i.p261a.C4715i;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzap.class */
public final class zzap extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzap> CREATOR = new zzar();
    @SafeParcelable.Field

    /* renamed from: a */
    public final Bundle f29811a;

    @SafeParcelable.Constructor
    public zzap(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f29811a = bundle;
    }

    /* renamed from: a */
    public final Object m9293a(String str) {
        return this.f29811a.get(str);
    }

    /* renamed from: b */
    public final Long m9292b(String str) {
        return Long.valueOf(this.f29811a.getLong(str));
    }

    /* renamed from: c */
    public final Double m9291c(String str) {
        return Double.valueOf(this.f29811a.getDouble(str));
    }

    /* renamed from: d */
    public final String m9290d(String str) {
        return this.f29811a.getString(str);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new C4715i(this);
    }

    public final String toString() {
        return this.f29811a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17229a(parcel, 2, zzb(), false);
        SafeParcelWriter.m17234a(parcel, a);
    }

    public final int zza() {
        return this.f29811a.size();
    }

    public final Bundle zzb() {
        return new Bundle(this.f29811a);
    }
}
