package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcax.class */
public final class zzcax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcax> CREATOR = new nc0();

    /* renamed from: d */
    public final boolean f33821d;

    /* renamed from: e */
    public final List<String> f33822e;

    public zzcax() {
        this(false, Collections.emptyList());
    }

    public zzcax(boolean z, List<String> list) {
        this.f33821d = z;
        this.f33822e = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16945c(parcel, 2, this.f33821d);
        C6170a.m16928t(parcel, 3, this.f33822e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
