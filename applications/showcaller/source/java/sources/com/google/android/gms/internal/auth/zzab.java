package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzab.class */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new C7257b();

    /* renamed from: d */
    private final int f34246d = 1;

    /* renamed from: e */
    private final String f34247e;

    /* renamed from: f */
    private final int f34248f;

    public zzab(int i, String str, int i2) {
        this.f34247e = (String) C6155o.m17018j(str);
        this.f34248f = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f34246d);
        C6170a.m16930r(parcel, 2, this.f34247e, false);
        C6170a.m16937k(parcel, 3, this.f34248f);
        C6170a.m16946b(parcel, m16947a);
    }
}
