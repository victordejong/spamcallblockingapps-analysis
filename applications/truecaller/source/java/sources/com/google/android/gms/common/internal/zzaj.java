package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@Deprecated
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzaj.class */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new zzak();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6044a;

    @SafeParcelable.Constructor
    public zzaj(@SafeParcelable.Param(id = 1) int i) {
        this.f6044a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6044a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
