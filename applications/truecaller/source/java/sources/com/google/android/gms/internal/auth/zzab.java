package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzab.class */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new zzac();
    @SafeParcelable.Field
    private final String accountType;
    @SafeParcelable.Field
    private final int zzbw;
    @SafeParcelable.VersionField
    private final int zzv;

    @SafeParcelable.Constructor
    public zzab(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2) {
        this.zzv = 1;
        Objects.requireNonNull(str, "null reference");
        this.accountType = str;
        this.zzbw = i2;
    }

    public zzab(String str, int i) {
        this(1, str, i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zzv;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.accountType, false);
        int i3 = this.zzbw;
        parcel.writeInt(262147);
        parcel.writeInt(i3);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
