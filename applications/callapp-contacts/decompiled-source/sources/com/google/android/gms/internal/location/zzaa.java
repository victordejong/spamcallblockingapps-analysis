package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzaa.class */
public final class zzaa extends AbstractSafeParcelable implements m {
    private final Status zzb;
    public static final zzaa zza = new zzaa(Status.RESULT_SUCCESS);
    public static final Parcelable.Creator<zzaa> CREATOR = new b();

    public zzaa(Status status) {
        this.zzb = status;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzb, i, false);
        a.b(parcel, a2);
    }
}
