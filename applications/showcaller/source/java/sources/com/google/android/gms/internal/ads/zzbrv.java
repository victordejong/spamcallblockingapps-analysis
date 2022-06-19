package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrv.class */
public final class zzbrv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbrv> CREATOR = new g40();

    /* renamed from: d */
    public final String f33740d;

    /* renamed from: e */
    public final Bundle f33741e;

    public zzbrv(String str, Bundle bundle) {
        this.f33740d = str;
        this.f33741e = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f33740d, false);
        C6170a.m16943e(parcel, 2, this.f33741e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
