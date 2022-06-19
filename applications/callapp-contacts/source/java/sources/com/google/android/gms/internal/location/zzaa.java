package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzaa.class */
public final class zzaa extends AbstractSafeParcelable implements AbstractC11925m {
    private final Status zzb;
    public static final zzaa zza = new zzaa(Status.RESULT_SUCCESS);
    public static final Parcelable.Creator<zzaa> CREATOR = new C13327b();

    public zzaa(Status status) {
        this.zzb = status;
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 1, this.zzb, i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
