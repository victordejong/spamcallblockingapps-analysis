package com.google.android.gms.appset;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/appset/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new C5872e();

    /* renamed from: d */
    private final String f18832d;

    /* renamed from: e */
    private final int f18833e;

    public zzc(String str, int i) {
        this.f18832d = str;
        this.f18833e = i;
    }

    /* renamed from: k0 */
    public final int m17727k0() {
        return this.f18833e;
    }

    /* renamed from: l0 */
    public final String m17726l0() {
        return this.f18832d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f18832d, false);
        C6170a.m16937k(parcel, 2, this.f18833e);
        C6170a.m16946b(parcel, m16947a);
    }
}
