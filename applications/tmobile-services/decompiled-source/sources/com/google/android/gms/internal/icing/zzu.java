package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzu.class */
public final class zzu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzu> CREATOR = new zzx();
    @SafeParcelable.Field

    /* renamed from: f */
    private final boolean f8158f;

    @SafeParcelable.Constructor
    public zzu(@SafeParcelable.Param(id = 1) boolean z) {
        this.f8158f = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzu) && this.f8158f == ((zzu) obj).f8158f;
    }

    public final int hashCode() {
        return this.f8158f ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14461c(parcel, 1, this.f8158f);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
