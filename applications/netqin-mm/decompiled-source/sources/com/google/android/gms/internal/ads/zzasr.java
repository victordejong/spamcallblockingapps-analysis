package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasr.class */
public final class zzasr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzasr> CREATOR = new zzasq();
    @SafeParcelable.Field

    /* renamed from: a */
    public final boolean f24437a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final List<String> f24438b;

    public zzasr() {
        this(false, Collections.emptyList());
    }

    @SafeParcelable.Constructor
    public zzasr(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) List<String> list) {
        this.f24437a = z;
        this.f24438b = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17218a(parcel, 2, this.f24437a);
        SafeParcelWriter.m17209b(parcel, 3, this.f24438b, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
