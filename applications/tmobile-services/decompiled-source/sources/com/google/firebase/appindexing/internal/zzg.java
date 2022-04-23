package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzg.class */
public final class zzg extends AbstractSafeParcelable {
    @SafeParcelable.Field
    public final int status;
    private static final zzg zzew = new zzg(1);
    private static final zzg zzex = new zzg(2);
    private static final zzg zzey = new zzg(3);
    public static final Parcelable.Creator<zzg> CREATOR = new zzf();

    @SafeParcelable.Constructor
    public zzg(@SafeParcelable.Param(id = 1) int i) {
        this.status = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.status);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
