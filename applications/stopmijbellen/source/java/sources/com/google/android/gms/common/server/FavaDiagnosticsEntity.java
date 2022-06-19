package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class(creator = "FavaDiagnosticsEntityCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/FavaDiagnosticsEntity.class */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    @KeepForSdk
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new zaa();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zaa;
    @RecentlyNonNull
    @SafeParcelable.Field(m4805id = 2)
    public final String zab;
    @SafeParcelable.Field(m4805id = 3)
    public final int zac;

    @SafeParcelable.Constructor
    public FavaDiagnosticsEntity(@SafeParcelable.Param(m4804id = 1) int i, @RecentlyNonNull @SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) int i2) {
        this.zaa = i;
        this.zab = str;
        this.zac = i2;
    }

    @KeepForSdk
    public FavaDiagnosticsEntity(@RecentlyNonNull String str, int i) {
        this.zaa = 1;
        this.zab = str;
        this.zac = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeString(parcel, 2, this.zab, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zac);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
