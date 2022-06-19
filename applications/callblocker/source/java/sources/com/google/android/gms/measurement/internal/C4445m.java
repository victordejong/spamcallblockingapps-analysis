package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/m.class */
public final class C4445m extends AbstractC2663a implements Iterable<String> {
    public static final Parcelable.Creator<C4445m> CREATOR = new C4447o();

    /* renamed from: a */
    private final Bundle f19372a;

    public C4445m(Bundle bundle) {
        this.f19372a = bundle;
    }

    /* renamed from: a */
    public final int m4025a() {
        return this.f19372a.size();
    }

    /* renamed from: a */
    public final Object m4023a(String str) {
        return this.f19372a.get(str);
    }

    /* renamed from: b */
    public final Bundle m4022b() {
        return new Bundle(this.f19372a);
    }

    /* renamed from: b */
    public final Long m4021b(String str) {
        return Long.valueOf(this.f19372a.getLong(str));
    }

    /* renamed from: c */
    public final Double m4020c(String str) {
        return Double.valueOf(this.f19372a.getDouble(str));
    }

    /* renamed from: d */
    public final String m4019d(String str) {
        return this.f19372a.getString(str);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new C4448p(this);
    }

    public final String toString() {
        return this.f19372a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13939a(parcel, 2, m4022b(), false);
        C2664b.m13943a(parcel, m13944a);
    }
}
