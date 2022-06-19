package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzaq.class */
public final class zzaq extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzaq> CREATOR = new C7831q();

    /* renamed from: d */
    private final Bundle f35871d;

    public zzaq(Bundle bundle) {
        this.f35871d = bundle;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new C7820p(this);
    }

    /* renamed from: k0 */
    public final Object m5869k0(String str) {
        return this.f35871d.get(str);
    }

    /* renamed from: l0 */
    public final Long m5868l0(String str) {
        return Long.valueOf(this.f35871d.getLong("value"));
    }

    /* renamed from: m0 */
    public final Double m5867m0(String str) {
        return Double.valueOf(this.f35871d.getDouble("value"));
    }

    /* renamed from: n0 */
    public final String m5866n0(String str) {
        return this.f35871d.getString(str);
    }

    /* renamed from: o0 */
    public final int m5865o0() {
        return this.f35871d.size();
    }

    /* renamed from: p0 */
    public final Bundle m5864p0() {
        return new Bundle(this.f35871d);
    }

    public final String toString() {
        return this.f35871d.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16943e(parcel, 2, m5864p0(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
